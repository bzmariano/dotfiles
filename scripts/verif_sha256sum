#!/bin/bash

# Verificar que se haya pasado un argumento
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename.tar.gz>"
  exit 1
fi

# Archivo .tar.gz pasado como argumento
file=$1

# Archivo .sha256 correspondiente
sha256_file="${file}.sha256"

# Verificar que el archivo .sha256 exista
if [ ! -f "$sha256_file" ]; then
  echo "Checksum file $sha256_file not found!"
  exit 1
fi

# Extraer el checksum esperado del archivo .sha256
expected_checksum=$(cat "$sha256_file" | awk '{print $1}')

# Calcular el checksum actual del archivo .tar.gz
actual_checksum=$(sha256sum "$file" | awk '{print $1}')

# Comparar ambos checksums
if [ "$expected_checksum" = "$actual_checksum" ]; then
  echo "Checksums match!"
else
  echo "Checksums do not match!"
fi
