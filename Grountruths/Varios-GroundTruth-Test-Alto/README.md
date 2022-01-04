# Groundtruths test

In view of determining the best image pre-processing for Kraken OCRed, we set up a series of tests on our Grountruth corpus.
To do this, we performed different images processing of our corpus from a notebook that we wrote for this purpose. All models are created on the same Alto XML files and training sets (more information about the sets [here](https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/README.md#split)), only the images change. 
All trainings were started with this command `ketos train -t /Varios-OCR-files/Grountruths/Split/train.txt -e /Varios-OCR-files/Grountruths/Split/eval.txt -f alto -d cuda "${XML_FOLDER}/*.xml`
The complete script is available [here](https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Grountruths/submission-script.sh), and the notebook with the image processing [here](https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Grountruths/Varios-GroundTruth-Test-Alto/ImagesTreatments.ipynb). 

## Test results

Below you will find the results of the tests for each processing performed. The results are presented with an example image on which we have added a zoomed area to help evaluate the differences between processing. 

###1. Original image

Our corpus has been digitised by the University Library of Geneva, which has sent us its scans in PDF format. We then transfomed our corpus in JPG and cut it to have one page per file (see the code made by Élina Leblanc [here](https://github.com/DesenrollandoElCordel/code-python/blob/main/decoupage_pliegos.py) and [here](https://github.com/DesenrollandoElCordel/code-python/blob/main/pliegos_cropped.py)). 

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_BGR.png" width="400"/>
   </p> 
   This model obtained by following the above pipeline has an accuracy of __94.84 %__.

### 2. Image deblurring

As the digitisation of our corpus introduced blurring, we considered that image deblurring could improve our results. 
There are different methods to deblur images, the most complex and efficient ones require a time-consuming machine learning step that we did not undertake. We simply used a sharpening mask to give the images more sharpness. 

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Deblur.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ %__ according to eval dataset.

### 3. Image Gamma1

Gamma processing has been applied to the images to brighten them.

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Gamma1.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ %__ according to eval dataset.

### 4. Image Gamma2

Gamma treatment to darken images.

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Gamma2.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ %__ according to eval dataset.

### 5. Simple image binary

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Binary.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ 95.99 %__ according to eval dataset.

### 6. Otsu binarisation 

Binarisation with the Otsu method consists in determining the global threshold that decreases the variance between the classes of black and white pixels. 

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Otsu.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ 96.04 %__ according to eval dataset.

### 7. Niblack binarisation 

The Niblack method calculates a threshold for each pixel based on the mean of the local deviation and the standard deviation. 

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Niblack.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ 96.80 %__ according to eval dataset.

### 8. Sauvola binarisation 

Sauvola is a variant of the Niblack method that splits the greyscale image into adjoining and unoverlapping blocks, and performs block-by-block processing. 

<p class="float" align="center">
    <img src="https://github.com/DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Moreno_119_Sauvola.png" width="400"/>
   </p> 
The model obtained has an accuracy of __ 96.29 %__ according to eval dataset.

-----
## Bibliography

- Z. Anvari, V. Athitsos, _A Survey on Deep learning based Document Image Enhancement_, 2022, [arXiv:2112.02719v4](https://arxiv.org/abs/2112.02719v4).
- M. R. Gupta, N. P. Jacobson, E. K. Garcia, "OCR binarization and image pre-processing for searching historical documents", _Pattern Recognition_ 40 (2007) 389-397.
- N. Otsu, "A threshold selection method from gray-level histograms", _IEEE Trans. Syst. Man Cybern._ 9 (1) (1979) 62–66.
- X. Peng, C. Wang,  "Building super-resolution image generator for ocr accuracy improvement". _In International Workshop on Document Analysis Systems_ (2020), Springer, pp. 145–160.
- J. Sauvola, M. Pietikainen, "Adaptive document image binarization", _Pattern Recognition_ 33 (2) (2000) 225–236.

:arrows_clockwise: In progress !
