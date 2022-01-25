#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=20:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate


kraken -I "/home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*"  binarize
mkdir /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken ; mv /Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/* /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken/