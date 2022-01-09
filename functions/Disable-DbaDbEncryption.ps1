function Disable-DbaDbEncryption {
    <#
    .SYNOPSIS
        Disables encryption on a database

    .DESCRIPTION
        Disables encryption on a database

    .PARAMETER SqlInstance
        The target SQL Server instance or instances.

    .PARAMETER SqlCredential
        Login to the target instance using alternative credentials. Accepts PowerShell credentials (Get-Credential).

        Windows Authentication, SQL Server Authentication, Active Directory - Password, and Active Directory - Integrated are all supported.

        For MFA support, please use Connect-DbaInstance.

    .PARAMETER Database
        The database that where encryption will be disabled

    .PARAMETER InputObject
        Disables pipeline input from Get-DbaDatabase

    .PARAMETER EnableException
        By default, when something goes wrong we try to catch it, interpret it and give you a friendly warning message.
        This avoids overwhelming you with "sea of red" exceptions, but is inconvenient because it basically disables advanced scripting.
        Using this switch turns this "nice by default" feature off and disables you to catch exceptions with your own try/catch.

    .PARAMETER WhatIf
        Shows what would happen if the command were to run. No actions are actually performed.

    .PARAMETER Confirm
        Prompts you for confirmation before executing any changing operations within the command.

    .NOTES
        Tags: Certificate, Security
        Author: Chrissy LeMaire (@cl), netnerds.net

        Website: https://dbatools.io
        Copyright: (c) 2022 by dbatools, licensed under MIT
        License: MIT https://opensource.org/licenses/MIT

    .LINK
        https://dbatools.io/Disable-DbaDbEncryption

    .EXAMPLE
        PS C:\> Disable-DbaDbEncryption -SqlInstance sql2017, sql2016 -Database pubs

        Disables database encryption on the pubs database on sql2017 and sql2016

    .EXAMPLE
        PS C:\> Disable-DbaDbEncryption -SqlInstance sql2017 -Database db1 -Confirm:$false

        Suppresses all prompts to disable database encryption on the db1 database on sql2017

    .EXAMPLE
        PS C:\> Get-DbaDatabase -SqlInstance sql2017 -Database db1 | Disable-DbaDbEncryption -Confirm:$false

        Suppresses all prompts to disable database encryption on the db1 database on sql2017

    #>
    [CmdletBinding(DefaultParameterSetName = "Default", SupportsShouldProcess, ConfirmImpact = "High")]
    param (
        [DbaInstanceParameter[]]$SqlInstance,
        [System.Management.Automation.PSCredential]$SqlCredential,
        [string[]]$Database,
        [parameter(ValueFromPipeline)]
        [Microsoft.SqlServer.Management.Smo.Database[]]$InputObject,
        [switch]$EnableException
    )
    process {
        if ($SqlInstance) {
            if (-not $Database) {
                Stop-Function -Message "You must specify Database or ExcludeDatabase when using SqlInstance"
                return
            }
            # all does not need to be addressed in the code because it gets all the dbs if $databases is empty
            $InputObject = Get-DbaDatabase -SqlInstance $SqlInstance -SqlCredential $SqlCredential -Database $Database
        }

        foreach ($db in $InputObject) {
            $server = $db.Parent
            if ($Pscmdlet.ShouldProcess($server.Name, "Disabling encryption on $($db.Name) will also drop the database encryption key. Continue?")) {
                # avoid enumeration issues
                try {
                    $db.EncryptionEnabled = $false
                    $db.Alter()
                    # https://www.sqlservercentral.com/steps/stairway-to-tde-removing-tde-from-a-database
                    $db.Invoke("DROP DATABASE ENCRYPTION KEY")
                    $db | Select-DefaultView -Property ComputerName, InstanceName, SqlInstance, 'Name as DatabaseName', EncryptionEnabled
                } catch {
                    Stop-Function -Message "Failure" -ErrorRecord $_ -Continue
                }
            }
        }
    }
}