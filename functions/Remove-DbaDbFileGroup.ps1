function Remove-DbaDbFileGroup {
    <#
    .SYNOPSIS
        Removes the specified filegroup(s).

    .DESCRIPTION
        Removes the specified filegroup(s). It is required that the filegroup is empty before it can be removed.

    .PARAMETER SqlInstance
        The target SQL Server instance or instances. This can be a collection and receive pipeline input to allow the function
        to be executed against multiple SQL Server instances.

    .PARAMETER SqlCredential
        Login to the target instance using alternative credentials. Accepts PowerShell credentials (Get-Credential).

        Windows Authentication, SQL Server Authentication, Active Directory - Password, and Active Directory - Integrated are all supported.

        For MFA support, please use Connect-DbaInstance.

    .PARAMETER Database
        The target database(s).

    .PARAMETER FileGroup
        The name(s) of the filegroup(s).

    .PARAMETER InputObject
        Allows piping from Get-DbaDatabase and Get-DbaDbFileGroup.

    .PARAMETER WhatIf
        Shows what would happen if the command were to run. No actions are actually performed.

    .PARAMETER Confirm
        Prompts you for confirmation before executing any changing operations within the command.

    .PARAMETER EnableException
        By default, when something goes wrong we try to catch it, interpret it and give you a friendly warning message.
        This avoids overwhelming you with "sea of red" exceptions, but is inconvenient because it basically disables advanced scripting.
        Using this switch turns this "nice by default" feature off and enables you to catch exceptions with your own try/catch.

    .NOTES
        Tags: Storage, Data, File, FileGroup
        Author: Adam Lancaster https://github.com/lancasteradam

        dbatools PowerShell module (https://dbatools.io)
        Copyright: (c) 2021 by dbatools, licensed under MIT
        License: MIT https://opensource.org/licenses/MIT

    .LINK
        https://dbatools.io/Remove-DbaDbFileGroup

    .EXAMPLE
        PS C:\>Remove-DbaDbFileGroup -SqlInstance sqldev1 -Database TestDb -FileGroup HRFG1

        Removes the HRFG1 filegroup on the TestDb database on the sqldev1 instance.

    .EXAMPLE
        PS C:\>Get-DbaDatabase -SqlInstance sqldev1 -Database TestDb | Remove-DbaDbFileGroup -FileGroup HRFG1

        Passes in the TestDB database from the sqldev1 instance and removes the HRFG1 filegroup.

    .EXAMPLE
        PS C:\>Get-DbaDbFileGroup -SqlInstance sqldev1 -Database TestDb -FileGroup HRFG1 | Remove-DbaDbFileGroup

        Passes in the HRFG1 filegroup from the TestDB database on the sqldev1 instance and removes the filegroup.
    #>
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')]
    param (
        [DbaInstanceParameter[]]$SqlInstance,
        [PSCredential]$SqlCredential,
        [string[]]$Database,
        [string[]]$FileGroup,
        [parameter(ValueFromPipeline)]
        [object[]]$InputObject,
        [switch]$EnableException
    )
    process {

        if ((Test-Bound -ParameterName SqlInstance) -and (Test-Bound -Not -ParameterName Database)) {
            Stop-Function -Message "Database is required when SqlInstance is specified"
            return
        }

        foreach ($instance in $SqlInstance) {
            $InputObject += Get-DbaDatabase -SqlInstance $instance -SqlCredential $SqlCredential -Database $Database
        }

        $fileGroupsToDrop = @()

        foreach ($obj in $InputObject) {

            if ($obj -is [Microsoft.SqlServer.Management.Smo.Database]) {

                if (Test-Bound -Not -ParameterName FileGroup) {
                    Stop-Function -Message "Filegroup is required" -Continue
                }

                foreach ($fg in $FileGroup) {

                    if ($obj.FileGroups.Name -notcontains $fg) {
                        Stop-Function -Message "Filegroup $fg does not exist in the database $($obj.Name) on $($obj.Parent.Name)" -Continue
                    }

                    $fileGroupsToDrop += $obj.FileGroups[$fg]
                }

            } elseif ($obj -is [Microsoft.SqlServer.Management.Smo.FileGroup]) {
                $fileGroupsToDrop += $obj
            }
        }

        foreach ($fgToDrop in $fileGroupsToDrop) {

            if ($fgToDrop.Files.Count -gt 0) {
                Stop-Function -Message "Filegroup $($fgToDrop.Name) is not empty. Before the filegroup can be dropped the files must be removed in $($fgToDrop.Name) on $($fgToDrop.Parent.Name) on $($fgToDrop.Parent.Parent.Name)" -Continue
            }

            if ($Pscmdlet.ShouldProcess($fgToDrop.Parent.Parent.Name, "Removing the filegroup $($fgToDrop.Name) on the database $($fgToDrop.Parent.Name) on $($fgToDrop.Parent.Parent.Name)")) {
                try {
                    $fgToDrop.Drop()
                } catch {
                    Stop-Function -Message "Failure on $($fgToDrop.Parent.Parent.Name) to remove the filegroup $($fgToDrop.Name) in the database $($fgToDrop.Parent.Name)" -ErrorRecord $_ -Continue
                }
            }
        }
    }
}