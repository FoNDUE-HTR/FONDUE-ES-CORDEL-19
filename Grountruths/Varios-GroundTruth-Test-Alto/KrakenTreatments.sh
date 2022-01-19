#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=20:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate

$ kraken -I "/Varios-GroundTruth-Test-Alto/BGR/*" -o .png binarize
$ mkdir /Varios-GroundTruth-Test-Alto/bin-Kraken; mv /Varios-GroundTruth-Test-Alto/BGR/*png /Varios-GroundTruth-Test-Alto/bin-Kraken
