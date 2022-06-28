#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=2-00:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate
pip install albumentations

work_directory="/home/users/j/jacsont/Varios-OCR-files/Models/Models-HTR-Varios/Alto/Model_test"
mkdir -p ${work_directory}
cd ${work_directory}

OUTPUT_NAME="output_name"

echo "KETOS training"

ketos train -f alto  -i /home/users/j/jacsont/Varios-OCR-files/Models/Models-HTR-Varios/Model-htr-test-Niblack/model_best.mlmodel /home/users/j/jacsont/Varios-OCR-files/Grountruth/Data+varios/*.xml



