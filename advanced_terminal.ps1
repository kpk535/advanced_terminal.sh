function Main-Menu {
    Clear-Host
    Write-Output "================== ULTRA-ADVANCED TERMINAL =================="
    Write-Output "Welcome to the Ultra-Advanced Terminal by kpk535 on GitHub but KPKedit on Tiktok"
    Write-Output "============================================================"
    Write-Output "Choose an advanced feature:"
    Write-Output "1) Real-Time Resource Monitoring"
    Write-Output "2) Advanced Background Task Management"
    Write-Output "3) Interactive File Encryption/Decryption"
    Write-Output "4) System Event Monitoring & Trigger Automation"
    Write-Output "5) Dynamic Command Injector"
    Write-Output "6) Network Diagnostics"
    Write-Output "7) Modular Plugin Management"
    Write-Output "8) 60 Windows Built-In Scripts"
    Write-Output "9) Exit"
    Write-Output "============================================================"
    $choice = Read-Host "Enter your choice [1-9]"

    switch ($choice) {
        1 { Resource-Monitoring }
        2 { Background-Task-Management }
        3 { File-Encryption }
        4 { Event-Monitoring }
        5 { Command-Injection }
        6 { Network-Diagnostics }
        7 { Plugin-Management }
        8 { Built-In-Scripts }
        9 { Exit-Program }
        Default { Write-Output "Invalid input! Try again."; Main-Menu }
    }
}

function Exit-Program {
    Write-Output "Exiting Ultra-Advanced Terminal. Goodbye!"
    exit
}

function Resource-Monitoring {
    Clear-Host
    Write-Output "-------------------------------------------------"
    Write-Output "SYSTEM RESOURCE MONITORING (CPU, RAM, Disk, Network)"
    Write-Output "-------------------------------------------------"
    Get-Process | Out-String
    Main-Menu
}

function Background-Task-Management {
    Clear-Host
    Write-Output "-------------------------------------------"
    Write-Output "ADVANCED BACKGROUND TASK MANAGEMENT"
    Write-Output "-------------------------------------------"
    Write-Output "1) Start a new background task"
    Write-Output "2) List running background tasks"
    Write-Output "3) Stop a background task"
    Write-Output "4) Return to main menu"
    $bg_choice = Read-Host "Choose [1-4]"

    switch ($bg_choice) {
        1 { Start-Background-Task }
        2 { List-Background-Tasks }
        3 { Stop-Background-Task }
        4 { Main-Menu }
        Default { Write-Output "Invalid input! Try again."; Background-Task-Management }
    }
}

function Start-Background-Task {
    $task = Read-Host "Enter the command to run in the background"
    Start-Job -ScriptBlock { Invoke-Expression $using:task }
    Write-Output "Background task started: $task"
    Background-Task-Management
}

function List-Background-Tasks {
    Get-Job | Format-Table -Property Id, Name, State
    Background-Task-Management
}

function Stop-Background-Task {
    $task_id = Read-Host "Enter the job ID of the task to stop"
    Stop-Job -Id $task_id
    Remove-Job -Id $task_id
    Write-Output "Task $task_id stopped."
    Background-Task-Management
}

function File-Encryption {
    Clear-Host
    Write-Output "-------------------------------------------------"
    Write-Output "INTERACTIVE FILE ENCRYPTION / DECRYPTION"
    Write-Output "-------------------------------------------------"
    Write-Output "1) Encrypt a file"
    Write-Output "2) Decrypt a file"
    Write-Output "3) Back to main menu"
    $enc_choice = Read-Host "Choose [1-3]"

    switch ($enc_choice) {
        1 { Encrypt-File }
        2 { Decrypt-File }
        3 { Main-Menu }
        Default { Write-Output "Invalid input! Try again."; File-Encryption }
    }
}

function Encrypt-File {
    $file = Read-Host "Enter file path to encrypt"
    $encryptedFile = "${file}.enc"
    Add-Content -Path $encryptedFile -Value (ConvertTo-SecureString (Get-Content $file) -AsPlainText -Force)
    Write-Output "File encrypted!"
    File-Encryption
}

function Decrypt-File {
    $file = Read-Host "Enter file path to decrypt"
    $decryptedFile = "${file}.dec"
    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR((Get-Content $file | ConvertFrom-SecureString))) | Set-Content -Path $decryptedFile
    Write-Output "File decrypted!"
    File-Encryption
}

function Event-Monitoring {
    Clear-Host
    Write-Output "-------------------------------------------"
    Write-Output "SYSTEM EVENT MONITORING & AUTOMATION"
    Write-Output "-------------------------------------------"
    Write-Output "Monitoring system events and automating triggers..."
    Get-WinEvent -LogName System -MaxEvents 10 | Format-Table -Property TimeCreated, Id, LevelDisplayName, Message
    Main-Menu
}

function Command-Injection {
    Clear-Host
    Write-Output "-------------------------------------------"
    Write-Output "DYNAMIC COMMAND INJECTOR"
    Write-Output "-------------------------------------------"
    $injected_command = Read-Host "Enter the command to inject dynamically"
    Invoke-Expression $injected_command
    Write-Output "Command injected and executed."
    Main-Menu
}

function Network-Diagnostics {
    Clear-Host
    Write-Output "-------------------------------------------------"
    Write-Output "NETWORK DIAGNOSTICS"
    Write-Output "-------------------------------------------------"
    ipconfig
    Main-Menu
}

function Plugin-Management {
    Clear-Host
    Write-Output "-------------------------------------------------"
    Write-Output "MODULAR PLUGIN MANAGEMENT"
    Write-Output "-------------------------------------------------"
    Write-Output "1) List installed plugins"
    Write-Output "2) Install a new plugin"
    Write-Output "3) Remove a plugin"
    Write-Output "4) Return to main menu"
    $plugin_choice = Read-Host "Choose [1-4]"

    switch ($plugin_choice) {
        1 { List-Plugins }
        2 { Install-Plugin }
        3 { Remove-Plugin }
        4 { Main-Menu }
        Default { Write-Output "Invalid input! Try again."; Plugin-Management }
    }
}

function List-Plugins {
    Get-ChildItem -Path .\plugins
    Plugin-Management
}

function Install-Plugin {
    $plugin_path = Read-Host "Enter the path to the plugin to install"
    Copy-Item -Path $plugin_path -Destination .\plugins
    Write-Output "Plugin installed!"
    Plugin-Management
}

function Remove-Plugin {
    $plugin_name = Read-Host "Enter the plugin name to remove"
    Remove-Item -Path .\plugins\$plugin_name
    Write-Output "Plugin removed!"
    Plugin-Management
}

function Built-In-Scripts {
    Clear-Host
    Write-Output "-------------------------------------------------"
    Write-Output "60 WINDOWS BUILT-IN SCRIPTS"
    Write-Output "-------------------------------------------------"
    Write-Output "1) Show system uptime"
    Write-Output "2) Display current users"
    Write-Output "3) Show disk usage"
    Write-Output "4) List active processes"
    Write-Output "5) Check memory usage"
    Write-Output "6) Display disk partitions"
    Write-Output "7) List open files"
    Write-Output "8) Display network connections"
    Write-Output "9) Show OS version"
    Write-Output "10) Display system hostname"
    Write-Output "Enter script number or 'back' to return to main menu."
    $script_choice = Read-Host "Enter your choice"

    switch ($script_choice) {
        1 { (Get-CimInstance Win32_OperatingSystem).LastBootUpTime }
        2 { Get-LocalUser }
        3 { Get-PSDrive }
        4 { Get-Process }
        5 { Get-WmiObject win32_operatingsystem | Select-Object FreePhysicalMemory }
        6 { Get-Partition }
        7 { Get-Process | Where-Object {$_.MainWindowHandle -ne 0} }
        8 { Get-NetTCPConnection }
        9 { Get-ComputerInfo | Select-Object CsName, WindowsVersion }
        10 { $env:COMPUTERNAME }
        Default { Write-Output "Invalid input!"; Built-In-Scripts }
    }
}

Main-Menu
