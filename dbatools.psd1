#
# Module manifest for module 'dbatools'
#
# Generated by: Chrissy LeMaire
#
# Generated on: 9/8/2015
#
@{

    # Script module or binary module file associated with this manifest.
    RootModule              = 'dbatools.psm1'

    # Version number of this module.
    ModuleVersion           = '0.9.155'

    # ID used to uniquely identify this module
    GUID                    = '9d139310-ce45-41ce-8e8b-d76335aa1789'

    # Author of this module
    Author                  = 'Chrissy LeMaire'

    # Company or vendor of this module
    CompanyName             = 'dbatools.io'

    # Copyright statement for this module
    Copyright               = '2017 Chrissy LeMaire'

    # Description of the functionality provided by this module
    Description             = "The community module that enables SQL Server Pros to automate database development and server administration"

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion       = '3.0'

    # Name of the Windows PowerShell host required by this module
    PowerShellHostName      = ''

    # Minimum version of the Windows PowerShell host required by this module
    PowerShellHostVersion   = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion  = ''

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion              = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture   = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules         = @()

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies      = @()

    # Script files () that are run in the caller's environment prior to importing this module
    ScriptsToProcess        = @()

    # Type files (xml) to be loaded when importing this module
    TypesToProcess          = @("xml\dbatools.Types.ps1xml")

    # Format files (xml) to be loaded when importing this module
    # "xml\dbatools.Format.ps1xml"
    FormatsToProcess        = @("xml\dbatools.Format.ps1xml")

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules           = @()

    # Functions to export from this module
    FunctionsToExport       = @(
        'Start-DbaMigration',
        'Copy-DbaDatabase',
        'Copy-DbaLogin',
        'Copy-DbaSqlServerAgent',
        'Copy-DbaSpConfigure',
        'Copy-DbaLinkedServer',
        'Copy-DbaDatabaseMail',
        'Copy-DbaDatabaseAssembly',
        'Copy-DbaSqlPolicyManagement',
        'Copy-DbaAgentSharedSchedule',
        'Copy-DbaAgentOperator',
        'Copy-DbaAgentJob',
        'Copy-DbaSqlDataCollector',
        'Copy-DbaCustomError',
        'Copy-DbaServerAuditSpecification',
        'Copy-DbaEndpoint',
        'Copy-DbaServerAudit',
        'Copy-DbaServerRole',
        'Copy-DbaResourceGovernor',
        'Copy-DbaExtendedEvent',
        'Copy-DbaBackupDevice',
        'Copy-DbaServerTrigger',
        'Copy-DbaCredential',
        'Copy-DbaCentralManagementServer',
        'Copy-DbaSysDbUserObject',
        'Copy-DbaAgentProxyAccount',
        'Copy-DbaAgentAlert',
        'Import-DbaSpConfigure',
        'Export-DbaSpConfigure'
        'Get-DbaDetachedDatabaseInfo',
        'Restore-DbaBackupFromDirectory',
        'Test-DbaConnection',
        'Import-DbaCsvToSql',
        'Copy-DbaAgentCategory',
        'Update-Dbatools',
        'Test-DbaSqlPath',
        'Export-DbaLogin',
        'Reset-DbaAdmin',
        'Watch-DbaDbLogin',
        'Expand-DbaTLogResponsibly',
        'Test-DbaMigrationConstraint',
        'Get-DbaRegisteredServer',
        'Test-DbaNetworkLatency',
        'Find-DbaDuplicateIndex',
        'Show-DbaServerFileSystem',
        'Get-DbaDiskSpace',
        'Remove-DbaDatabaseSafely',
        'Show-DbaDatabaseList',
        'Set-DbaTempDbConfiguration',
        'Test-DbaTempDbConfiguration',
        'Repair-DbaOrphanUser',
        'Remove-DbaOrphanUser',
        'Find-DbaUnusedIndex',
        'Test-DbaDiskAllocation',
        'Test-DbaPowerPlan',
        'Set-DbaPowerPlan',
        'Test-DbaDiskAlignment',
        'Get-DbaDatabaseSpace',
        'Get-DbaClusterActiveNode',
        'Test-DbaDatabaseOwner',
        'Set-DbaDatabaseOwner',
        'Test-DbaJobOwner',
        'Set-DbaJobOwner',
        'Test-DbaVirtualLogFile',
        'Get-DbaRestoreHistory',
        'Get-DbaTcpPort',
        'Test-DbaDatabaseCompatibility',
        'Test-DbaDatabaseCollation',
        'Test-DbaConnectionAuthScheme',
        'Test-DbaServerName',
        'Repair-DbaServerName',
        'Stop-DbaProcess',
        'Copy-DbaSsisCatalog',
        'Find-DbaOrphanedFile',
        'Get-DbaAvailabilityGroup',
        'Get-DbaLastGoodCheckDb',
        'Get-DbaProcess',
        'Get-DbaRunningJob',
        'Set-DbaMaxDop',
        'Test-DbaFullRecoveryModel',
        'Test-DbaMaxDop',
        'Remove-DbaBackup',
        'Get-DbaPermission',
        'Get-DbaLastBackup',
        'Connect-DbaInstance',
        'Get-DbaStartupParameter',
        'Get-DbaBackupHistory',
        'Read-DbaBackupHeader',
        'Test-DbaLastBackup',
        'Get-DbaMaxMemory',
        'Set-DbaMaxMemory',
        'Test-DbaMaxMemory',
        'Get-DbaDatabaseSnapshot',
        'Remove-DbaDatabaseSnapshot',
        'Get-DbaRoleMember',
        'Resolve-DbaNetworkName',
        'Test-DbaValidLogin',
        'Get-DbaMemoryUsage',
        'Export-DbaAvailabilityGroup',
        'Out-DbaDataTable',
        'Write-DbaDataTable',
        'New-DbaDatabaseSnapshot',
        'Restore-DbaFromDatabaseSnapshot',
        'Get-DbaTrigger',
        'Export-DbaUser',
        'Get-DbaDatabaseState',
        'Set-DbaDatabaseState',
        'Get-DbaHelpIndex',
        'Get-DbaAgentAlert',
        'Get-DbaAgentOperator',
        'Get-DbaPageFileSetting',
        'Get-DbaSpConfigure',
        'Rename-DbaLogin',
        'Find-DbaAgentJob',
        'Find-DbaDatabase',
        'Get-DbaMsdtc',
        'Get-DbaUptime',
        'Get-DbaXESession',
        'Test-DbaOptimizeForAdHoc',
        'Find-DbaStoredProcedure',
        'Measure-DbaBackupThroughput',
        'Find-DbaLoginInGroup',
        'Get-DbaSpn',
        'Test-DbaSpn',
        'Set-DbaSpn',
        'Remove-DbaSpn',
        'Get-DbaDatabase',
        'Find-DbaUserObject',
        'Get-DbaSqlService',
        'Get-DbaDependency',
        'Clear-DbaSqlConnectionPool',
        'Find-DbaCommand',
        'Get-DbaConfig',
        'Get-DbaConfigValue',
        'Set-DbaConfig',
        'Get-DbaClientProtocol',
        'Backup-DbaDatabase',
        'New-DbaSqlDirectory',
        'Get-DbaPrivilege',
        'Install-DbaWatchUpdate',
        'Watch-DbaUpdate',
        'Uninstall-DbaWatchUpdate',
        'Get-DbaDbQueryStoreOptions',
        'Set-DbaDbQueryStoreOptions',
        'Restore-DbaDatabase',
        'Copy-DbaQueryStoreConfig',
        'Get-DbaExecutionPlan',
        'Export-DbaExecutionPlan',
        'Get-DbaServerProtocol',
        'Get-DbaLocaleSetting',
        'Get-DbaSqlBuildReference',
        'Set-DbaSpConfigure',
        'Test-DbaIdentityUsage',
        'Get-DbaDatabaseAssembly',
        'Get-DbaAgentJob',
        'Get-DbaCustomError',
        'Get-DbaCredential',
        'Get-DbaBackupDevice',
        'Get-DbaJobCategory',
        'Get-DbaDatabaseEncryption',
        'New-DbaSsisCatalog',
        'Remove-DbaDatabase',
        'Get-DbaQueryExecutionTime',
        'Get-DbaTempdbUsage',
        'Find-DbaDbGrowthEvent',
        'Get-DbaNetworkActivity',
        'Get-DbaAgentJobOutputFile',
        'Set-DbaAgentJobOutputFile',
        'Test-DbaLinkedServerConnection',
        'Get-DbaDatabaseFile',
        'Read-DbaTransactionLog',
        'Get-DbaTable',
        'Invoke-DbaDatabaseShrink',
        'Get-DbaEstimatedCompletionTime',
        'Get-DbaLinkedServer',
        'Set-DbaStartupParameter',
        'New-DbaAgentJob',
        'Export-DbaScript',
        'Get-DbaLogin',
        'New-DbaScriptingOption',
        'Save-DbaDiagnosticQueryScript',
        'Invoke-DbaDiagnosticQuery',
        'Export-DbaDiagnosticQuery',
        'Invoke-DbaWhoisActive',
        'Install-DbaWhoIsActive',
        'Set-DbaAgentJob',
        'Remove-DbaAgentJob',
        'New-DbaAgentJobStep',
        'Set-DbaAgentJobStep',
        'Remove-DbaAgentJobStep',
        'New-DbaAgentSchedule',
        'Set-DbaAgentSchedule',
        'Remove-DbaAgentSchedule',
        'Backup-DbaDbCertificate',
        'Get-DbaDbCertificate',
        'Get-DbaCmConnection',
        'Get-DbaCmObject',
        'Get-DbaEndpoint',
        'Get-DbaDatabaseMasterKey',
        'Get-DbaSchemaChangeHistory',
        'Get-DbaServerAudit',
        'Get-DbaServerAuditSpecification',
        'Get-DbaSqlProductKey',
        'Get-DbatoolsLog',
        'Restore-DbaDbCertificate',
        'New-DbaDbCertificate',
        'New-DbaCmConnection',
        'New-DbaDatabaseMasterKey',
        'New-DbaServiceMasterKey',
        'New-DbatoolsSupportPackage',
        'Remove-DbaDbCertificate',
        'Remove-DbaCmConnection',
        'Remove-DbaDatabaseMasterKey',
        'Set-DbaCmConnection',
        'Set-DbaTcpPort',
        'Test-DbaCmConnection',
        'New-DbaSqlConnectionStringBuilder',
        'Get-DbaSqlInstanceProperty',
        'Get-DbaSqlInstanceUserOption',
        'New-DbaSqlConnectionString',
        'Get-DbaAgentSchedule',
        'Invoke-DbaLogShipping',
        'Read-DbaTraceFile',
        'New-DbaComputerCertificate',
        'Get-DbaComputerCertificate',
        'Add-DbaComputerCertificate',
        'Get-DbaNetworkCertificate',
        'Set-DbaNetworkCertificate',
        'Remove-DbaNetworkCertificate',
        'Enable-DbaForceNetworkEncryption',
        'Disable-DbaForceNetworkEncryption',
        'Get-DbaForceNetworkEncryption',
        'Remove-DbaComputerCertificate',
        'Get-DbaServerInstallDate',
        'Install-DbaFirstResponderKit',
        'Backup-DbaDatabaseMasterKey',
        'Get-DbaAgentJobHistory',
        'Get-DbaSsisEnvironmentVariable',
        'Get-DbaSqlManagementObject',
        'Test-DbaSqlManagementObject',
        'Get-DbaMaintenanceSolutionLog',
        'Invoke-DbaLogShippingRecovery',
        'Find-DbaTrigger',
        'Find-DbaView',
        'Invoke-DbaDatabaseUpgrade',
        'Get-DbaDatabaseUser',
        'Get-DbaWindowsLog',
        'Get-DbaSqlLog',
        'Get-DbaAgentLog',
        'Get-DbaDbMailLog',
        'Get-DbaDbMailHistory',
        'Get-DbaDatabaseView',
        'Get-DbaDatabaseUdf',
        'Get-DbaDatabasePartitionFunction',
        'Get-DbaDatabasePartitionScheme',
        'Get-DbaErrorLog',
        'Get-DbaDefaultPath',
        'Get-DbaDbStoredProcedure',
        'Test-DbaDbCompression',
        'Mount-DbaDatabase',
        'Dismount-DbaDatabase',
        'Set-DbaPrivilege',
        'Get-DbaAgReplica',
        'Get-DbaAgDatabase',
        'Get-DbaSqlModule',
        'Get-DbaRegisteredServersStore',
        'Sync-DbaSqlLoginPermission',
        'Invoke-Sqlcmd2',
        'New-DbaCredential',
        'Get-DbaFile',
        'Set-DbaDbCompression',
        'New-DbaClientAlias',
        'Get-DbaClientAlias',
        'Get-DbaOperatingSystem',
        'Install-DbaMaintenanceSolution',
        'Get-DbaComputerSystem',
        'Get-DbaTraceFlag',
        'Stop-DbaSqlService',
        'Start-DbaSqlService',
        'Restart-DbaSqlService',
        'Invoke-DbaCycleErrorLog',
        'Get-DbaSqlRegistryRoot',
        'Get-DbaAvailableCollation',
        'Get-DbaUserLevelPermission',
        'Get-DbaAgHadr',
        'Get-DbaPolicy',
        'Find-DbaSimilarTable',
        'Disable-DbaAgHadr',
        'Enable-DbaAgHadr',
        'Get-DbaTrace',
        'Get-DbaSuspectPage',
        'Get-DbaWaitStatistic',
        'Clear-DbaWaitStatistics',
        'Get-DbaTopResourceUsage',
        'New-DbaLogin',
        'Get-DbaAgListener',
        'Invoke-DbaDatabaseClone',
        'Read-DbaXEFile',
        'Get-DbaDistributor',
        'Update-DbaSqlServiceAccount',
        'Watch-DbaXESession',
        'Disable-DbaTraceFlag',
        'Enable-DbaTraceFlag',
        'Start-DbaAgentJob',
        'Stop-DbaAgentJob',
        'Remove-DbaClientAlias',
        'New-DbaAgentProxy',
        'Test-DbaLogShippingStatus',
        'Get-DbaXESessionTarget',
        'New-DbaXESmartTargetResponse',
        'New-DbaXESmartTarget',
        'Get-DbaDbVirtualLogFile',
        'Register-DbaConfig',
        'Get-DbaBackupInformation',
        'Start-DbaXESession',
        'Stop-DbaXESession',
        'Set-DbaDbRecoveryModel',
        'Get-DbaDbRecoveryModel',
        'Get-DbaWaitingTask',
        'Remove-DbaDbUser',
        'Get-DbaDump',
        'Invoke-DbaAdvancedRestore',
        'Format-DbaBackupInformation',
        'Get-DbaAgentJobStep',
        'Test-DbaBackupInformation',
        'Invoke-DbaBalanceDataFiles',
        'Select-DbaBackupInformation',
        'Rename-DbaDatabase',
        'New-DbaPublishProfile',
        'Publish-DbaDacpac',
        'Export-DbaDacpac',
        'Copy-DbaTableData',
        'Invoke-DbaSqlCmd',
        'Remove-DbaLogin',
        'Get-DbaFileStream',
        'Set-DbaFileStream',
        'Get-DbaAgentJobCategory',
        'New-DbaAgentJobCategory',
        'Remove-DbaAgentJobCategory',
        'Set-DbaAgentJobCategory',
        'Get-DbaDbRole',
        'Get-DbaServerRole',
        'Find-DbaBackup',
        'Get-DbaCpuUsage',
        'Remove-DbaXESession',
        'New-DbaXESession',
        'Import-DbaXESessionTemplate',
        'Get-DbaXEStore',
        'Export-DbaXESessionTemplate',
        'New-DbaXESmartTableWriter',
        'New-DbaXESmartReplay',
        'New-DbaXESmartEmail',
        'New-DbaXESmartQueryExec',
        'Start-DbaXESmartTarget',
        'Get-DbaOrphanUser',
        'Get-DbaOpenTransaction',
        'Get-DbaLogShippingError',
        'Test-DbaSqlBuild',
        'Get-DbaXESessionTemplate',
        'ConvertTo-DbaXESession',
        'Start-DbaTrace',
        'Stop-DbaTrace',
        'Remove-DbaTrace'
    )

    # Cmdlets to export from this module
    CmdletsToExport         = '*'

    # Variables to export from this module
    VariablesToExport       = '*'

    # Aliases to export from this module
    # Aliases are stored in dbatools.psm1
    # KEEP Detach-DbaDatabase, Dismount-DbaDatabase and Start-SqlMigration FOREVER
    AliasesToExport        = 'Detach-DbaDatabase', 'Attach-DbaDatabase',
    'Reset-SqlSaPassword',
    'Copy-SqlUserDefinedMessage',
    'Copy-SqlJobServer',
    'Restore-HallengrenBackup',
    'Update-SqlWhoIsActive',
    'Install-SqlWhoIsActive',
    'Show-SqlMigrationConstraint',
    'Test-SqlDiskAllocation',
    'Get-DiskSpace',
    'Get-SqlMaxMemory',
    'Set-SqlMaxMemory',
    'Show-SqlWhoIsActive',
    'Copy-SqlAgentCategory',
    'Copy-SqlAlert',
    'Copy-SqlAudit',
    'Copy-SqlAuditSpecification',
    'Copy-SqlBackupDevice',
    'Copy-SqlCentralManagementServer',
    'Copy-SqlCredential',
    'Copy-SqlCustomError',
    'Copy-SqlDatabase',
    'Copy-SqlDatabaseAssembly',
    'Copy-SqlDatabaseMail',
    'Copy-SqlDataCollector',
    'Copy-SqlEndpoint',
    'Copy-SqlExtendedEvent',
    'Copy-SqlJob',
    'Copy-SqlLinkedServer',
    'Copy-SqlLogin',
    'Copy-SqlOperator',
    'Copy-SqlPolicyManagement',
    'Copy-SqlProxyAccount',
    'Copy-SqlResourceGovernor',
    'Copy-SqlServerAgent',
    'Copy-SqlServerRole',
    'Copy-SqlServerTrigger',
    'Copy-SqlSharedSchedule',
    'Copy-SqlSpConfigure',
    'Copy-SqlSsisCatalog',
    'Copy-SqlSysDbUserObjects',
    'Expand-SqlTLogResponsibly',
    'Export-SqlLogin',
    'Export-SqlSpConfigure',
    'Export-SqlUser',
    'Find-SqlDuplicateIndex',
    'Find-SqlUnusedIndex',
    'Get-SqlRegisteredServerName',
    'Get-SqlServerKey',
    'Import-SqlSpConfigure',
    'Remove-SqlDatabaseSafely',
    'Remove-SqlOrphanUser',
    'Repair-SqlOrphanUser',
    'Reset-SqlAdmin',
    'Restore-SqlBackupFromDirectory',
    'Set-SqlTempDbConfiguration',
    'Show-SqlDatabaseList',
    'Show-SqlServerFileSystem',
    'Start-SqlMigration',
    'Sync-SqlLoginPermissions',
    'Test-SqlConnection',
    'Test-SqlMigrationConstraint',
    'Test-SqlNetworkLatency',
    'Test-SqlPath',
    'Test-SqlTempDbConfiguration',
    'Watch-SqlDbLogin',
    'Get-DbaDatabaseFreeSpace',
    'Get-DbaQueryStoreConfig',
    'Set-DbaQueryStoreConfig',
    'Get-DbaRegisteredServerName',
    'Connect-DbaSqlServer',
    'Get-DbaInstance',
    'Get-DbaXEventsSession',
    'Get-DbaXEventSession',
    'Get-DbaXEventSessionTarget',
    'Read-DbaXEventFile',
    'Watch-DbaXEventSession',
    'Get-DbaDatabaseCertificate',
    'New-DbaDatabaseCertificate',
    'Remove-DbaDatabaseCertificate',
    'Restore-DbaDatabaseCertificate',
    'Find-DbaDatabaseGrowthEvent',
    'Get-DbaTraceFile'

    # List of all modules packaged with this module
    ModuleList              = @()

    # List of all files packaged with this module
    FileList                = ''

    PrivateData             = @{
        # PSData is module packaging and gallery metadata embedded in PrivateData
        # It's for rebuilding PowerShellGet (and PoshCode) NuGet-style packages
        # We had to do this because it's the only place we're allowed to extend the manifest
        # https://connect.microsoft.com/PowerShell/feedback/details/421837
        PSData  = @{
            # The primary categorization of this module (from the TechNet Gallery tech tree).
            Category      = "Databases"

            # Keyword tags to help users find this module via navigations and search.
            Tags          = @('sqlserver', 'migrations', 'sql', 'dba', 'databases')

            # The web address of an icon which can be used in galleries to represent this module
            IconUri       = "https://dbatools.io/logo.png"

            # The web address of this module's project or support homepage.
            ProjectUri    = "https://dbatools.io"

            # The web address of this module's license. Points to a page that's embeddable and linkable.
            LicenseUri    = "http://www.gnu.org/licenses/gpl-3.0.en.html"

            # Release notes for this particular version of the module
            ReleaseNotes  = "https://dbatools.io/releases"

            # If true, the LicenseUrl points to an end-user license (not just a source license) which requires the user agreement before use.
            # RequireLicenseAcceptance = ""

            # Indicates this is a pre-release/testing version of the module.
            IsPrerelease  = 'True'
        }
    }
}

# SIG # Begin signature block
# MIIcYgYJKoZIhvcNAQcCoIIcUzCCHE8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUqSS0t3pddeN/WPm77t6Fau5Y
# J0yggheRMIIFGjCCBAKgAwIBAgIQAsF1KHTVwoQxhSrYoGRpyjANBgkqhkiG9w0B
# AQsFADByMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
# VQQLExB3d3cuZGlnaWNlcnQuY29tMTEwLwYDVQQDEyhEaWdpQ2VydCBTSEEyIEFz
# c3VyZWQgSUQgQ29kZSBTaWduaW5nIENBMB4XDTE3MDUwOTAwMDAwMFoXDTIwMDUx
# MzEyMDAwMFowVzELMAkGA1UEBhMCVVMxETAPBgNVBAgTCFZpcmdpbmlhMQ8wDQYD
# VQQHEwZWaWVubmExETAPBgNVBAoTCGRiYXRvb2xzMREwDwYDVQQDEwhkYmF0b29s
# czCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAI8ng7JxnekL0AO4qQgt
# Kr6p3q3SNOPh+SUZH+SyY8EA2I3wR7BMoT7rnZNolTwGjUXn7bRC6vISWg16N202
# 1RBWdTGW2rVPBVLF4HA46jle4hcpEVquXdj3yGYa99ko1w2FOWzLjKvtLqj4tzOh
# K7wa/Gbmv0Si/FU6oOmctzYMI0QXtEG7lR1HsJT5kywwmgcjyuiN28iBIhT6man0
# Ib6xKDv40PblKq5c9AFVldXUGVeBJbLhcEAA1nSPSLGdc7j4J2SulGISYY7ocuX3
# tkv01te72Mv2KkqqpfkLEAQjXgtM0hlgwuc8/A4if+I0YtboCMkVQuwBpbR9/6ys
# Z+sCAwEAAaOCAcUwggHBMB8GA1UdIwQYMBaAFFrEuXsqCqOl6nEDwGD5LfZldQ5Y
# MB0GA1UdDgQWBBRcxSkFqeA3vvHU0aq2mVpFRSOdmjAOBgNVHQ8BAf8EBAMCB4Aw
# EwYDVR0lBAwwCgYIKwYBBQUHAwMwdwYDVR0fBHAwbjA1oDOgMYYvaHR0cDovL2Ny
# bDMuZGlnaWNlcnQuY29tL3NoYTItYXNzdXJlZC1jcy1nMS5jcmwwNaAzoDGGL2h0
# dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9zaGEyLWFzc3VyZWQtY3MtZzEuY3JsMEwG
# A1UdIARFMEMwNwYJYIZIAYb9bAMBMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3
# LmRpZ2ljZXJ0LmNvbS9DUFMwCAYGZ4EMAQQBMIGEBggrBgEFBQcBAQR4MHYwJAYI
# KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBOBggrBgEFBQcwAoZC
# aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0U0hBMkFzc3VyZWRJ
# RENvZGVTaWduaW5nQ0EuY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQAD
# ggEBANuBGTbzCRhgG0Th09J0m/qDqohWMx6ZOFKhMoKl8f/l6IwyDrkG48JBkWOA
# QYXNAzvp3Ro7aGCNJKRAOcIjNKYef/PFRfFQvMe07nQIj78G8x0q44ZpOVCp9uVj
# sLmIvsmF1dcYhOWs9BOG/Zp9augJUtlYpo4JW+iuZHCqjhKzIc74rEEiZd0hSm8M
# asshvBUSB9e8do/7RhaKezvlciDaFBQvg5s0fICsEhULBRhoyVOiUKUcemprPiTD
# xh3buBLuN0bBayjWmOMlkG1Z6i8DUvWlPGz9jiBT3ONBqxXfghXLL6n8PhfppBhn
# daPQO8+SqF5rqrlyBPmRRaTz2GQwggUwMIIEGKADAgECAhAECRgbX9W7ZnVTQ7Vv
# lVAIMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
# Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0Rp
# Z2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xMzEwMjIxMjAwMDBaFw0yODEw
# MjIxMjAwMDBaMHIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMx
# GTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xMTAvBgNVBAMTKERpZ2lDZXJ0IFNI
# QTIgQXNzdXJlZCBJRCBDb2RlIFNpZ25pbmcgQ0EwggEiMA0GCSqGSIb3DQEBAQUA
# A4IBDwAwggEKAoIBAQD407Mcfw4Rr2d3B9MLMUkZz9D7RZmxOttE9X/lqJ3bMtdx
# 6nadBS63j/qSQ8Cl+YnUNxnXtqrwnIal2CWsDnkoOn7p0WfTxvspJ8fTeyOU5JEj
# lpB3gvmhhCNmElQzUHSxKCa7JGnCwlLyFGeKiUXULaGj6YgsIJWuHEqHCN8M9eJN
# YBi+qsSyrnAxZjNxPqxwoqvOf+l8y5Kh5TsxHM/q8grkV7tKtel05iv+bMt+dDk2
# DZDv5LVOpKnqagqrhPOsZ061xPeM0SAlI+sIZD5SlsHyDxL0xY4PwaLoLFH3c7y9
# hbFig3NBggfkOItqcyDQD2RzPJ6fpjOp/RnfJZPRAgMBAAGjggHNMIIByTASBgNV
# HRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAKBggrBgEF
# BQcDAzB5BggrBgEFBQcBAQRtMGswJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRp
# Z2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3aHR0cDovL2NhY2VydHMuZGlnaWNlcnQu
# Y29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNydDCBgQYDVR0fBHoweDA6oDig
# NoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9v
# dENBLmNybDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0
# QXNzdXJlZElEUm9vdENBLmNybDBPBgNVHSAESDBGMDgGCmCGSAGG/WwAAgQwKjAo
# BggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAKBghghkgB
# hv1sAzAdBgNVHQ4EFgQUWsS5eyoKo6XqcQPAYPkt9mV1DlgwHwYDVR0jBBgwFoAU
# Reuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQELBQADggEBAD7sDVoks/Mi
# 0RXILHwlKXaoHV0cLToaxO8wYdd+C2D9wz0PxK+L/e8q3yBVN7Dh9tGSdQ9RtG6l
# jlriXiSBThCk7j9xjmMOE0ut119EefM2FAaK95xGTlz/kLEbBw6RFfu6r7VRwo0k
# riTGxycqoSkoGjpxKAI8LpGjwCUR4pwUR6F6aGivm6dcIFzZcbEMj7uo+MUSaJ/P
# QMtARKUT8OZkDCUIQjKyNookAv4vcn4c10lFluhZHen6dGRrsutmQ9qzsIzV6Q3d
# 9gEgzpkxYz0IGhizgZtPxpMQBvwHgfqL2vmCSfdibqFT+hKUGIUukpHqaGxEMrJm
# oecYpJpkUe8wggZqMIIFUqADAgECAhADAZoCOv9YsWvW1ermF/BmMA0GCSqGSIb3
# DQEBBQUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAX
# BgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3Vy
# ZWQgSUQgQ0EtMTAeFw0xNDEwMjIwMDAwMDBaFw0yNDEwMjIwMDAwMDBaMEcxCzAJ
# BgNVBAYTAlVTMREwDwYDVQQKEwhEaWdpQ2VydDElMCMGA1UEAxMcRGlnaUNlcnQg
# VGltZXN0YW1wIFJlc3BvbmRlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAKNkXfx8s+CCNeDg9sYq5kl1O8xu4FOpnx9kWeZ8a39rjJ1V+JLjntVaY1sC
# SVDZg85vZu7dy4XpX6X51Id0iEQ7Gcnl9ZGfxhQ5rCTqqEsskYnMXij0ZLZQt/US
# s3OWCmejvmGfrvP9Enh1DqZbFP1FI46GRFV9GIYFjFWHeUhG98oOjafeTl/iqLYt
# WQJhiGFyGGi5uHzu5uc0LzF3gTAfuzYBje8n4/ea8EwxZI3j6/oZh6h+z+yMDDZb
# esF6uHjHyQYuRhDIjegEYNu8c3T6Ttj+qkDxss5wRoPp2kChWTrZFQlXmVYwk/PJ
# YczQCMxr7GJCkawCwO+k8IkRj3cCAwEAAaOCAzUwggMxMA4GA1UdDwEB/wQEAwIH
# gDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMIMIIBvwYDVR0g
# BIIBtjCCAbIwggGhBglghkgBhv1sBwEwggGSMCgGCCsGAQUFBwIBFhxodHRwczov
# L3d3dy5kaWdpY2VydC5jb20vQ1BTMIIBZAYIKwYBBQUHAgIwggFWHoIBUgBBAG4A
# eQAgAHUAcwBlACAAbwBmACAAdABoAGkAcwAgAEMAZQByAHQAaQBmAGkAYwBhAHQA
# ZQAgAGMAbwBuAHMAdABpAHQAdQB0AGUAcwAgAGEAYwBjAGUAcAB0AGEAbgBjAGUA
# IABvAGYAIAB0AGgAZQAgAEQAaQBnAGkAQwBlAHIAdAAgAEMAUAAvAEMAUABTACAA
# YQBuAGQAIAB0AGgAZQAgAFIAZQBsAHkAaQBuAGcAIABQAGEAcgB0AHkAIABBAGcA
# cgBlAGUAbQBlAG4AdAAgAHcAaABpAGMAaAAgAGwAaQBtAGkAdAAgAGwAaQBhAGIA
# aQBsAGkAdAB5ACAAYQBuAGQAIABhAHIAZQAgAGkAbgBjAG8AcgBwAG8AcgBhAHQA
# ZQBkACAAaABlAHIAZQBpAG4AIABiAHkAIAByAGUAZgBlAHIAZQBuAGMAZQAuMAsG
# CWCGSAGG/WwDFTAfBgNVHSMEGDAWgBQVABIrE5iymQftHt+ivlcNK2cCzTAdBgNV
# HQ4EFgQUYVpNJLZJMp1KKnkag0v0HonByn0wfQYDVR0fBHYwdDA4oDagNIYyaHR0
# cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEQ0EtMS5jcmww
# OKA2oDSGMmh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJ
# RENBLTEuY3JsMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29j
# c3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdp
# Y2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURDQS0xLmNydDANBgkqhkiG9w0BAQUF
# AAOCAQEAnSV+GzNNsiaBXJuGziMgD4CH5Yj//7HUaiwx7ToXGXEXzakbvFoWOQCd
# 42yE5FpA+94GAYw3+puxnSR+/iCkV61bt5qwYCbqaVchXTQvH3Gwg5QZBWs1kBCg
# e5fH9j/n4hFBpr1i2fAnPTgdKG86Ugnw7HBi02JLsOBzppLA044x2C/jbRcTBu7k
# A7YUq/OPQ6dxnSHdFMoVXZJB2vkPgdGZdA0mxA5/G7X1oPHGdwYoFenYk+VVFvC7
# Cqsc21xIJ2bIo4sKHOWV2q7ELlmgYd3a822iYemKC23sEhi991VUQAOSK2vCUcIK
# SK+w1G7g9BQKOhvjjz3Kr2qNe9zYRDCCBs0wggW1oAMCAQICEAb9+QOWA63qAArr
# Pye7uhswDQYJKoZIhvcNAQEFBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERp
# Z2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMb
# RGlnaUNlcnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTA2MTExMDAwMDAwMFoXDTIx
# MTExMDAwMDAwMFowYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IElu
# YzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQg
# QXNzdXJlZCBJRCBDQS0xMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
# 6IItmfnKwkKVpYBzQHDSnlZUXKnE0kEGj8kz/E1FkVyBn+0snPgWWd+etSQVwpi5
# tHdJ3InECtqvy15r7a2wcTHrzzpADEZNk+yLejYIA6sMNP4YSYL+x8cxSIB8HqIP
# kg5QycaH6zY/2DDD/6b3+6LNb3Mj/qxWBZDwMiEWicZwiPkFl32jx0PdAug7Pe2x
# QaPtP77blUjE7h6z8rwMK5nQxl0SQoHhg26Ccz8mSxSQrllmCsSNvtLOBq6thG9I
# hJtPQLnxTPKvmPv2zkBdXPao8S+v7Iki8msYZbHBc63X8djPHgp0XEK4aH631XcK
# J1Z8D2KkPzIUYJX9BwSiCQIDAQABo4IDejCCA3YwDgYDVR0PAQH/BAQDAgGGMDsG
# A1UdJQQ0MDIGCCsGAQUFBwMBBggrBgEFBQcDAgYIKwYBBQUHAwMGCCsGAQUFBwME
# BggrBgEFBQcDCDCCAdIGA1UdIASCAckwggHFMIIBtAYKYIZIAYb9bAABBDCCAaQw
# OgYIKwYBBQUHAgEWLmh0dHA6Ly93d3cuZGlnaWNlcnQuY29tL3NzbC1jcHMtcmVw
# b3NpdG9yeS5odG0wggFkBggrBgEFBQcCAjCCAVYeggFSAEEAbgB5ACAAdQBzAGUA
# IABvAGYAIAB0AGgAaQBzACAAQwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBvAG4A
# cwB0AGkAdAB1AHQAZQBzACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQA
# aABlACAARABpAGcAaQBDAGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQA
# aABlACAAUgBlAGwAeQBpAG4AZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUA
# bgB0ACAAdwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkA
# IABhAG4AZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUA
# cgBlAGkAbgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wCwYJYIZIAYb9bAMV
# MBIGA1UdEwEB/wQIMAYBAf8CAQAweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzAB
# hhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9j
# YWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQw
# gYEGA1UdHwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdp
# Q2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2lj
# ZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwHQYDVR0OBBYEFBUA
# EisTmLKZB+0e36K+Vw0rZwLNMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3z
# bcgPMA0GCSqGSIb3DQEBBQUAA4IBAQBGUD7Jtygkpzgdtlspr1LPUukxR6tWXHvV
# DQtBs+/sdR90OPKyXGGinJXDUOSCuSPRujqGcq04eKx1XRcXNHJHhZRW0eu7NoR3
# zCSl8wQZVann4+erYs37iy2QwsDStZS9Xk+xBdIOPRqpFFumhjFiqKgz5Js5p8T1
# zh14dpQlc+Qqq8+cdkvtX8JLFuRLcEwAiR78xXm8TBJX/l/hHrwCXaj++wc4Tw3G
# XZG5D2dFzdaD7eeSDY2xaYxP+1ngIw/Sqq4AfO6cQg7PkdcntxbuD8O9fAqg7iwI
# VYUiuOsYGk38KiGtSTGDR5V3cdyxG0tLHBCcdxTBnU8vWpUIKRAmMYIEOzCCBDcC
# AQEwgYYwcjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
# A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTExMC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBB
# c3N1cmVkIElEIENvZGUgU2lnbmluZyBDQQIQAsF1KHTVwoQxhSrYoGRpyjAJBgUr
# DgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMx
# DAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkq
# hkiG9w0BCQQxFgQUDsWb+JmpLzXbWYTamrbEYc9fLb0wDQYJKoZIhvcNAQEBBQAE
# ggEAKdpEkCFBTGCbAvvY1PWO1HytGwIMOZw8XDm8L00abBQwSIKCO7y7b82bZMSk
# YRk3+1CYhrpf/GJ5grH4jiQ8a7A/LCSg/CVYFQ+olyHtHxGuO8SwnxgUOqXRqtgZ
# BJRzcloChw7rI3gv+EgwaeacgI2+uVtzvT1MV/FTh3DXVmwCtPB8seB6uv9uVcqJ
# f0wB/B3JLZzVyqsReAlfpsmKkll1xKM3UKN2lvOtHG9/trxcsfdOz2iYRnnzNA+n
# WYl6taFGRkdPoylCuy1DhyVShVubD+MAaB8EIWIkSv1rQS8gnBgpyDy8gYv8vtgE
# 7FZ5csXCvi/k4BZwvMOYqbRM/KGCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIB
# ATB2MGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNV
# BAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQg
# SUQgQ0EtMQIQAwGaAjr/WLFr1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcN
# AQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgwMTEwMjAwMDA3WjAj
# BgkqhkiG9w0BCQQxFgQUnuZ1vjxE/PHqhkSJHJmXtpLlOtcwDQYJKoZIhvcNAQEB
# BQAEggEAdtVCMaUc6gLPNL7yEi3zmM8bbiIe8AL2ev4IhWCyhfSgI1/MD8SQCjuC
# jeAt+fDnKUEKSkshjOfK3AaO2lCaaZudOjTGE3aQgcmHZa4wxClxAZ0ismBzvhm7
# CWEcr0CpsPwTB2YDQl/oObExR1v3PuI4seulR3sQUUemrvB60Hg/NV8zM6Nx1Hcq
# c6nE6mB+WoeWXtZ+anuLy0fPQedSNDzpzqXLpoqkVjVGx+EXu2QP2OeQsCALfr89
# jomueLhskAkemaddd7v+LQ0MGcIFA+p9aC7Y+vKaBpg+YdyTFUhMfBPcHLyBuDb+
# RC8sBD7kehddA119YWxPIHgeAPIpXA==
# SIG # End signature block
