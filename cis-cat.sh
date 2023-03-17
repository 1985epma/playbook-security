#!/bin/bash

# Define o nome do arquivo de saída
OUTPUT_FILE="cis_cat_audit_$(date +"%Y-%m-%d").html"

# Executa a auditoria com a política do CIS-CAT para ISO 27001
./CIS-CAT.sh -a -c CIS_Level_1_Red_Hat_Enterprise_Linux_7_Benchmark_v3.1.0-baseline -b iso27001 -o "$OUTPUT_FILE"

# Exibe o resultado da auditoria
cat "$OUTPUT_FILE"
