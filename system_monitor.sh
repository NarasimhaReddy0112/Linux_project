#!/bin/bash
cpu_usage(){
    echo -e "\033[1;34mCPU Usage:\033[0m"
    mpstat|grep "all"
}
memory_usage(){
    echo -e "\033[1;34mMemory Usage:\033[0m"
    free -h
}
disk_usage(){
    echo -e "\033[1;34mDisk Usage:\033[0m"
    df -h
}
network_usage(){
    echo -e "\033[1;34mNetwork  Activity:\033[0m"
    ifstat -t 1 1
}

while true;do
    clear
    echo "System Monitoring Dashboard"
    echo"____________________________"
    cpu_usage
    echo ""
    memory_usage
    echo ""
    disk_usage
    echo ""
    network_usage
    sleep 5
done
