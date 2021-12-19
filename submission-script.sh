#!/bin/env bash
#SBATCH --partition=shared-gpu
#SBATCH --time=03:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate

OUTPUT_NAME="output_name"
XML_FOLDER="/home/users/j/jacsont/Varios-OCR-files/GT_Alto/"

echo "KETOS training"
srun ketos train -o $OUTPUT_NAME -f alto -d cuda "${XML_FOLDER}/*.xml"
