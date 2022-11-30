#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=2-00:00:00
#SBATCH --gpus=1
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Kraken-env/bin/activate

srun yaltai kraken --device cuda:0 -I "/home/users/j/jacsont/Varios-OCR-files/Grountruth/Segmentation_Yaltai/train/images/*.jpg" --suffix ".xml" segment --yolo /home/users/j/jacsont/Yaltai/yolov5/runs/train/exp2/weights/best.pt

