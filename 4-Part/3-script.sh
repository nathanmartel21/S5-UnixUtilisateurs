#! /usr/bin/env bash

inputs=""
merged_pdf="merged_pdf.pdf"

for ((i=1;i<=$#;i++))
do
	inputs="$inputs ${!i}"
done

zenity --question --title="Confirmation" --text="Etes vous sur ?"

if [ $? -eq 0 ]; then

	pdfunite $inputs "$merged_pdf"
else
	zenity --warning --text="Action annulée"
fi
