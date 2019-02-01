﻿#
# Module 'Proxx.SQLite'
#
# Generated by: Marco van Gaal
# Generated on: 10-2-2015
#
# Website: www.proxx.nl
#

# Load all main functions
Resolve-Path -Path $PSScriptRoot\main\*.ps1 | ForEach-Object { . $_.ProviderPath }

# Load all extra functions
Resolve-Path -Path $PSScriptRoot\tools\*.ps1 | ForEach-Object { . $_.ProviderPath }

# Export members
Export-ModuleMember -Function Compress-SQLite, Connect-SQLite, Convert-SQLiteType, Disconnect-SQLite, Get-SQLiteTables, Invoke-SQLiteFill, Invoke-SQLiteTable, New-SQLiteTable, Out-SQLiteTable, Get-SQLite, New-SQLiteTransaction, Complete-SQLiteTransaction, Undo-SQLiteTransaction, Write-SQLite


# Create alias names for functions
Set-Alias -Name Vacuum -Value Compress-SQLite
Set-Alias -Name BeginTransaction -Value New-SQLiteTransaction
Set-Alias -Name RollbackTransaction -Value Undo-SQLiteTransaction
Set-Alias -Name CommitTransaction -Value Complete-SQLiteTransaction
Set-Alias -Name Read-SQLite -Value Get-SQLite -Description 'Read-SQLite is a legacy function, please use Get-SQLite instead.'


