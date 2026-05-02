#!/bin/bash
mkdir -p ~/backup
tar -czf ~/backup/backup_$(date +%Y%m%d_%H%M%S).tar.gz "$0"
echo "Резервная копия создана в ~/backup" 
