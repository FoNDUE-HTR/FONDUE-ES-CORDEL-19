#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=2-00:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/kraken-env/bin/activate


work_directory="/home/users/j/jacsont/Varios-OCR-files/Models/Models-HTR-Varios/Model_data+varios_3"
mkdir -p ${work_directory}
cd ${work_directory}

OUTPUT_NAME="output_name"

XML_FOLDER="/home/users/j/jacsont/Varios-OCR-files/Grountruth/Data+varios"
echo "KETOS training"
srun ketos train -f alto  "${XML_FOLDER}/*.xml"
