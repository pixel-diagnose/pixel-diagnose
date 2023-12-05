# Pixel Diagnose

Welcome to **Pixel Diagnose**! 🧠 Our mission is to empower radiologists with cutting-edge AI to enhance the accuracy of differential diagnoses for cancer patients. This repository contains our flagship program, **Pixel Diagnose**, designed to streamline the diagnostic process using advanced image recognition technology.

## Quick Start
Get started with our Docker image:
```bash
docker pull mkstatistics/pixel-diagnose-demo
docker run -d -p 5001:5001 mkstatistics/pixel-diagnose-demo
```

## How It Works
Pixel Diagnose is a clinician's digital assistant. It allows radiologists to upload MRI images and receive a set of differential diagnosis options. Our tool leverages various MRI modalities, such as T1, T1 with contrast, T2, and Flair, to provide comprehensive insights.

🧠 Features:
- **Query Image Input**: Upload an MRI image and receive similar images from our database.
- **Segmentation Options**: Choose from whole brain or tumor-segmented images.
- **Multiple MRI Modalities**: Work with different MRI modalities for nuanced diagnosis.

## Technology
Under the hood, Pixel Diagnose uses a pretrained Resnet50 architecture for generating picture embeddings. This approach ensures high accuracy and speed in identifying similar images for a given query.

## Current Scope
Our current proof of concept supports differential diagnosis for three brain tumor types: glioma, meningioma, and metastasis.

## Developer Resources
In the `notebook` folder, you'll find Jupyter notebooks that demonstrate:
- Visualization techniques.
- Brain image segmentation methods.
- Steps for finetuning additional models.

## Contributing
We're a startup passionate about open-source collaboration. If you're interested in contributing to Pixel Diagnose, whether it's through code, ideas, or feedback, we'd love to hear from you!

## License
Pixel Diagnose is open-sourced under the [MIT License](LICENSE.md).

## Support
For support, please open an issue or contact us at [support@pixeldiagnose.com](mailto:support@pixeldiagnose.com).

---

Empowering Radiologists, One Pixel at a Time. 🧠💡

---

Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io


--------

