# OCR for the _Varios_ corpus #

This folder contains the documents we used to create our training models, as well as the training models themselves. The directory is divided into two sub-directories with Groundtruths on one side and the models developed on the other.
---
## Groundtruths ###

The ground truth of the _Varios_ corpus was created from [the ground truth of the _Moreno_ corpus](https://github.com/DesenrollandoElCordel/Moreno-OCR-files/tree/main/Moreno-GroundTruth) to which we added 5 pliegos from the varios corpus (32 pages), in order to train our model on data in Catalan and with long s. Therefore, the entire GroundTruth data was OCRed once with ABBYY FineReader and then manually corrected. Finally, all the data was exported in PAGE-XML from [Transkribus](https://readcoop.eu/transkribus/?sc=Transkribus) for migration to [eScriptorium](https://gitlab.inria.fr/scripta/escriptorium). 

From eScriptorium, the entire Grountruth has been segmented according to the [_SegmOnto_](https://github.com/SegmOnto/Guidelines) vocabulary, and some baselines have been manually corrected. 

### PAGE ot Alto###

In view of making our data interoperable, we decided to follow the pipeline developed by the [_SegmOnto_ project](https://hal.archives-ouvertes.fr/hal-03336528) (segmentation controlled vocabulary, TEI schema, quality control schema). As this project is currently  principally focusing on ALTO XML documents, we decided to convert our data into this format from the e-scriptorium platform. 
We have kept both formats in our repository.

### Corpus segmentation ####

The _SegmOnto_ zones used are : 

- `MainZone`, in pink 
- `RunningTitleZone`
- `GraphicZone:illustration`, in dark green
- `GraphicZone:ornamentation`, in dark blue 
- `MusicZone` (some of our chapbooks contain sheet music) 
- `QuireMarksZone:signature`
- `QuireMarksZone:catchwords`
- `NumberingZone:page`
- `MarginTextZone:colophon`. in light green, this zone isolates the name of the printer, the place and date of printing
- `MarginTextZone:note`

To correspond to the specificities of our corpus, we have used `CustomZone` with our own subtypes corresponding to our choices of XML-TEI encoding scheme: 
- `CustomZone:primer_titulo`, blank
- `CustomZone:subtitle`, in purple
- `CustomZone:titulo_parte`, yellow 
- `CustomZone:impresorNum`, brown
- `CustomZone:numer_pliego`, when there is mention of the number of _pliegos_ assembled 
A `CustomLine` with the subtype `:trailer` has also been used to indicate _explicit_. 
<p class="float" align="center">
    <img src="DesenrollandoElCordel/Varios-OCR-files/Readme-picture/Moreno_172.png" width="450"/>
  <img src="DesenrollandoElCordel/Varios-OCR-files/blob/main/Readme-picture/Varios_435.png" width="450"/>
  </p>
  <p class="float" align="center">
    <img src="Varios-OCR-files/Readme-picture/Varios_279.png" width="450"/>
  </p>

#### Split ####

We chose to manually divide our Groundtruth into three sets (80% train, 20% eval and 20% test) in order to ensure that the title pages (where the error rate is often higher due to typography) and the new elements of the _Varios_ corpus are distributed equally. Each set was made up of about 20% of title pages and chapbooks belonging to the _Varios_ corpus. Predefining these three sets also ensures that the results of our different models can be compared.

### Groundtruth test ####

A series of tests was made to evaluate the interest of image processing (binarisation, deblurring, luminosity) for character recognition. 

---

## Models ###


### Fine tuning ####

In order to improve our results, we undertook a fine-tuning of our model. The corpus used was constituted from the data of the [HTRCatalogs](https://github.com/Juliettejns/cataloguesSegmentationOCR/) established by Juliette Janes, Simon Gabay and Béatrice Joyeux-Prunel, whose segmentation was corrected to correspond to the latest standards of _SegmOnto_. 

### Results ####


