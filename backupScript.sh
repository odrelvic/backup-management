#!/usr/bin/bash

#Diretorio de entrada -- backup <- IMPORTANTE MUDAR O DIRETORIO PARA UM DE SUA ESCOLHA
backup_path="/home/ozorio/Documentos"

#Diretorio de saida --- backup <- IMPORTANTE MUDAR O DIRETORIO PARA UM DE SUA ESCOLHA
final_storage="/home/ozorio/destino"

#Formato do arquivo
date_format=$(date "+%F-%T")
final_archive="backup-$date_format.tar.gz"

#Log folder
log_file="/var/log/daily-backup.log"


#####Condicionais TAR_######
tar -czSpf "$final_storage/$final_archive" "$backup_path"


