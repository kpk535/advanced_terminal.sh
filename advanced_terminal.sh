#!/bin/bash

main_menu() {
    clear
    echo "================== ULTRA-ADVANCED TERMINAL =================="
    echo "Welcome to the Ultra-Advanced Terminal by kpk535 on github but KPKedit on Tiktok"
    echo "=============================================================="
    echo "Choose an advanced feature:"
    echo "1) Real-Time Resource Monitoring"
    echo "2) Advanced Background Task Management"
    echo "3) Interactive File Encryption/Decryption"
    echo "4) System Event Monitoring & Trigger Automation"
    echo "5) Dynamic Command Injector"
    echo "6) Network Diagnostics"
    echo "7) Modular Plugin Management"
    echo "8) 60 Linux Built-In Scripts"
    echo "9) Exit"
    echo "=============================================================="
    read -p "Enter your choice [1-9]: " choice

    case $choice in
        1) resource_monitoring ;;
        2) background_task_management ;;
        3) file_encryption ;;
        4) event_monitoring ;;
        5) command_injection ;;
        6) network_diagnostics ;;
        7) plugin_management ;;
        8) built_in_scripts ;;
        9) exit_program ;;
        *) echo "Invalid input! Try again." ; main_menu ;;
    esac
}


exit_program() {
    echo "Exiting Ultra-Advanced Terminal. Goodbye!"
    exit 0
}


resource_monitoring() {
    clear
    echo "-------------------------------------------------"
    echo "SYSTEM RESOURCE MONITORING (CPU, RAM, DISK, Network)"
    echo "-------------------------------------------------"
    top
    main_menu
}


background_task_management() {
    clear
    echo "-------------------------------------------"
    echo "ADVANCED BACKGROUND TASK MANAGEMENT"
    echo "-------------------------------------------"
    echo "1) Start a new background task"
    echo "2) List running background tasks"
    echo "3) Stop a background task"
    echo "4) Return to main menu"
    read -p "Choose [1-4]: " bg_choice

    case $bg_choice in
        1) start_background_task ;;
        2) list_background_tasks ;;
        3) stop_background_task ;;
        4) main_menu ;;
        *) echo "Invalid input! Try again." ; background_task_management ;;
    esac
}

start_background_task() {
    read -p "Enter the command to run in the background: " task
    $task &
    echo "Background task started: $task"
    background_task_management
}

list_background_tasks() {
    ps aux
    background_task_management
}

stop_background_task() {
    read -p "Enter the PID of the task to stop: " task_id
    kill -9 $task_id
    echo "Task $task_id stopped."
    background_task_management
}


file_encryption() {
    clear
    echo "-------------------------------------------------"
    echo "INTERACTIVE FILE ENCRYPTION / DECRYPTION"
    echo "-------------------------------------------------"
    echo "1) Encrypt a file"
    echo "2) Decrypt a file"
    echo "3) Back to main menu"
    read -p "Choose [1-3]: " enc_choice

    case $enc_choice in
        1) encrypt_file ;;
        2) decrypt_file ;;
        3) main_menu ;;
        *) echo "Invalid input! Try again." ; file_encryption ;;
    esac
}

encrypt_file() {
    read -p "Enter file path to encrypt: " file
    gpg -c $file
    echo "File encrypted!"
    file_encryption
}

decrypt_file() {
    read -p "Enter file path to decrypt: " file
    gpg $file
    echo "File decrypted!"
    file_encryption
}


event_monitoring() {
    clear
    echo "-------------------------------------------"
    echo "SYSTEM EVENT MONITORING & AUTOMATION"
    echo "-------------------------------------------"
    echo "Monitoring system events and automating triggers..."
    dmesg -wH
    main_menu
}

command_injection() {
    clear
    echo "-------------------------------------------"
    echo "DYNAMIC COMMAND INJECTOR"
    echo "-------------------------------------------"
    read -p "Enter the command to inject dynamically: " injected_command
    eval $injected_command
    echo "Command injected and executed."
    main_menu
}


network_diagnostics() {
    clear
    echo "-------------------------------------------------"
    echo "NETWORK DIAGNOSTICS"
    echo "-------------------------------------------------"
    ifconfig
    main_menu
}


plugin_management() {
    clear
    echo "-------------------------------------------------"
    echo "MODULAR PLUGIN MANAGEMENT"
    echo "-------------------------------------------------"
    echo "1) List installed plugins"
    echo "2) Install a new plugin"
    echo "3) Remove a plugin"
    echo "4) Return to main menu"
    read -p "Choose [1-4]: " plugin_choice

    case $plugin_choice in
        1) list_plugins ;;
        2) install_plugin ;;
        3) remove_plugin ;;
        4) main_menu ;;
        *) echo "Invalid input! Try again." ; plugin_management ;;
    esac
}

list_plugins() {
    ls plugins/
    plugin_management
}

install_plugin() {
    read -p "Enter the path to the plugin to install: " plugin_path
    cp $plugin_path plugins/
    echo "Plugin installed!"
    plugin_management
}

remove_plugin() {
    read -p "Enter the plugin name to remove: " plugin_name
    rm plugins/$plugin_name
    echo "Plugin removed!"
    plugin_management
}


built_in_scripts() {
    clear
    echo "-------------------------------------------------"
    echo "60 LINUX BUILT-IN SCRIPTS"
    echo "-------------------------------------------------"
    echo "1) Show system uptime"
    echo "2) Display current users"
    echo "3) Show disk usage"
    echo "4) List active processes"
    echo "5) Check memory usage"
    echo "6) Display disk partitions"
    echo "7) List open files"
    echo "8) Display network connections"
    echo "9) Show kernel version"
    echo "10) Display system hostname"
    echo "11) Show system load"
    echo "12) List running services"
    echo "13) Show last login"
    echo "14) Display system date"
    echo "15) Show system logs"
    echo "16) Display environment variables"
    echo "17) Show network interfaces"
    echo "18) Check system uptime"
    echo "19) Show CPU info"
    echo "20) List installed packages"
    echo "21) Display routing table"
    echo "22) Show system information"
    echo "23) Display users and groups"
    echo "24) List system files"
    echo "25) Show active network ports"
    echo "26) Display active sessions"
    echo "27) Check disk health"
    echo "28) Show file system usage"
    echo "29) Display system summary"
    echo "30) List software updates"
    echo "31) Check for broken packages"
    echo "32) Show package versions"
    echo "33) Display scheduled tasks"
    echo "34) Show user permissions"
    echo "35) List system processes"
    echo "36) Display system updates"
    echo "37) Show CPU load averages"
    echo "38) Display running daemons"
    echo "39) Show network statistics"
    echo "40) List recent commands"
    echo "41) Show file system mount points"
    echo "42) Display file system types"
    echo "43) List active network services"
    echo "44) Show memory usage statistics"
    echo "45) Display system configuration"
    echo "46) List active background processes"
    echo "47) Show open ports"
    echo "48) Display file access times"
    echo "49) Show system performance"
    echo "50) List system errors"
    echo "51) Display process information"
    echo "52) Show running system tasks"
    echo "53) Check for available updates"
    echo "54) Display disk space usage"
    echo "55) List system resources"
    echo "56) Show system status"
    echo "57) Display process activity"
    echo "58) List file system checks"
    echo "59) Show recent system activity"
    echo "60) Display file ownership"
    read -p "Enter the script number [1-60]: " script_choice

    case $script_choice in
        1) uptime ;;
        2) who ;;
        3) df -h ;;
        4) top -b -n 1 ;;
        5) free -h ;;
        6) lsblk ;;
        7) lsof ;;
        8) netstat -tuln ;;
        9) uname -r ;;
        10) hostname ;;
        11) uptime ;;
        12) systemctl list-units --type=service ;;
        13) last ;;
        14) date ;;
        15) journalctl --since "1 hour ago" ;;
        16) env ;;
        17) ifconfig -a ;;
        18) uptime ;;
         19) lscpu ;;
        20) dpkg -l ;;
        21) ip route ;;
        22) uname -a ;;
        23) id ;;
        24) find / -type f ;;
        25) ss -tuln ;;
        26) w ;;
        27) smartctl -a /dev/sda ;;
        28) df -h ;;
        29) neofetch ;;
        30) apt list --upgradable ;;
        31) apt-get check ;;
        32) dpkg -l | grep -E '^ii' ;;
        33) crontab -l ;;
        34) ls -l ;;
        35) ps aux ;;
        36) apt-get update ;;
        37) uptime ;;
        38) systemctl list-units --type=service --state=running ;;
        39) sar -n DEV 1 1 ;;
        40) history ;;
        41) mount ;;
        42) blkid ;;
        43) systemctl list-sockets ;;
        44) vmstat ;;
        45) lshw ;;
        46) ps aux --sort=+%mem ;;
        47) netstat -tuln ;;
        48) stat ;;
        49) top ;;
        50) dmesg | grep -i error ;;
        51) ps aux ;;
        52) top -b -n 1 ;;
        53) apt list --upgradable ;;
        54) df -h ;;
        55) free -m ;;
        56) uptime ;;
        57) top ;;
        58) fsck -N ;;
        59) last ;;
        60) ls -l ;;
        *) echo "Invalid input! Try again." ; built_in_scripts ;;
    esac
}


main_menu
