#!/bin/bash

# Lista de arquivos
files=(
    "CleanZoom.exe"
    "CleanZoomHost123.exe" "CleanZoomHost25.exe" "CleanZoomHost37.exe"
    "CleanZoomHost10.exe" "CleanZoomHost124.exe" "CleanZoomHost26.exe" "CleanZoomHost38.exe"
    "CleanZoomHost112.exe" "CleanZoomHost125.exe" "CleanZoomHost27.exe" "CleanZoomHost39.exe"
    "CleanZoomHost113.exe" "CleanZoomHost126.exe" "CleanZoomHost28.exe" "CleanZoomHost3.exe"
    "CleanZoomHost114.exe" "CleanZoomHost127.exe" "CleanZoomHost29.exe" "CleanZoomHost40.exe"
    "CleanZoomHost115.exe" "CleanZoomHost128.exe" "CleanZoomHost2.exe" "CleanZoomHost4.exe"
    "CleanZoomHost116.exe" "CleanZoomHost129.exe" "CleanZoomHost30.exe" "CleanZoomHost5.exe"
    "CleanZoomHost117.exe" "CleanZoomHost130.exe" "CleanZoomHost31.exe" "CleanZoomHost6.exe"
    "CleanZoomHost118.exe" "CleanZoomHost131.exe" "CleanZoomHost32.exe" "CleanZoomHost7.exe"
    "CleanZoomHost119.exe" "CleanZoomHost132.exe" "CleanZoomHost33.exe" "CleanZoomHost8.exe"
    "CleanZoomHost120.exe" "CleanZoomHost133.exe" "CleanZoomHost34.exe" "CleanZoomHost9.exe"
    "CleanZoomHost121.exe" "CleanZoomHost134.exe" "CleanZoomHost35.exe"
    "CleanZoomHost122.exe" "CleanZoomHost1.exe" "CleanZoomHost36.exe"
)

# Arquivo de saída para os hashes
output_file="sha256sums.txt"

# Limpa o arquivo de saída se já existir
> "$output_file"

# Calcula o sha256sum de cada arquivo e escreve no arquivo de saída
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        sha256sum "$file" >> "$output_file"
    else
        echo "Arquivo $file não encontrado!" >> "$output_file"
    fi
done

echo "Hashes SHA-256 calculados e armazenados em $output_file"
