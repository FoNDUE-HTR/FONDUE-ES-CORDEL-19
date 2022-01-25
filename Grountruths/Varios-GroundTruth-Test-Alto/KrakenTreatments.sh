#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=20:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate

<<<<<<< HEAD
<<<<<<< HEAD
kraken -I "/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*" -o .jpg binarize
mkdir /Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/bin-Kraken; mv /Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*jpg /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken
=======
kraken -I "/home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*" -o .png binarize
mkdir /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken ; mv /Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*png /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken/*png
>>>>>>> 5faf45a974e81718cc16c041de10ba14ae0fd35f
=======
kraken -I "/home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*" -o .png binarize
mkdir /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken ; mv /Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/BGR/*png /home/users/j/jacsont/Varios-OCR-files/Grountruths/Varios-GroundTruth-Test-Alto/GroundTruth-binary-Kraken/*png
>>>>>>> 5faf45a974e81718cc16c041de10ba14ae0fd35f
