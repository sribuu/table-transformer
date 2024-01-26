# Table Transformer (TATR)

A deep learning model based on object detection for extracting tables from PDFs and images.

First proposed in ["PubTables-1M: Towards comprehensive table extraction from unstructured documents"](https://openaccess.thecvf.com/content/CVPR2022/html/Smock_PubTables-1M_Towards_Comprehensive_Table_Extraction_From_Unstructured_Documents_CVPR_2022_paper.html).

![table_extraction_v2](https://user-images.githubusercontent.com/10793386/139559159-cd23c972-8731-48ed-91df-f3f27e9f4d79.jpg)

This repository also contains the official code for these papers:
- ["GriTS: Grid table similarity metric for table structure recognition"](https://arxiv.org/abs/2203.12555)
- ["Aligning benchmark datasets for table structure recognition"](https://arxiv.org/abs/2303.00716)

Note: If you are looking to use Table Transformer to extract your own tables, here are some helpful things to know:
- TATR can be trained to work well across many document domains and everything needed to train your own model is included here. But at the moment pre-trained model weights are only available for TATR trained on the PubTables-1M dataset. (See the additional documentation for how to train your own multi-domain model.)
- TATR is an object detection model that recognizes tables from image input. The inference code built on TATR needs text extraction (from OCR or directly from PDF) as a separate input in order to include text in its HTML or CSV output.

Additional information about this project for both users and researchers, including data, training, evaluation, and inference code is provided below.

## Installation

### Using pip

Run command
```bash
pip3 install -r requirements.txt
```

### Using conda

Create a conda environment from the yml file and activate it as follows
```bash
conda env create -f environment.yml
conda activate tables-detr
```

## Download Model

To download trained model weights on estatement document, run this command
```bash
bash download_models.sh
```

## Inference

To run the inference, you can follow this command:
```bash
%cd src/
bash simple_inference.sh
```

Result example:
```json
{
    "result": [
        {
            "table_bbox": [
                32,
                479,
                1206,
                1550
            ],
            "objects": [
                {
                    "label": "table column",
                    "score": 0.999552309513092,
                    "bbox": [
                        179,
                        482,
                        380,
                        1535
                    ]
                },
                {
                    "label": "table row",
                    "score": 0.9950479865074158,
                    "bbox": [
                        43,
                        614,
                        1195,
                        659
                    ]
                }
            ]
        }
    ]
}
```

## Training

WIP