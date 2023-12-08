# Pixel Diagnose

Welcome to **Pixel Diagnose**! 🧠 Our mission is to empower radiologists with cutting-edge AI to enhance the accuracy of differential diagnoses for cancer patients. This repository contains our flagship program, **Pixel Diagnose**, designed to streamline the diagnostic process using advanced image recognition technology.

## Quick Start
Get started with our Docker image:
```bash
docker pull mkstatistics/pixel-diagnose-demo
docker run -d -p 5001:5001 mkstatistics/pixel-diagnose-demo
```


## How It Works
Pixel Diagnose is a clinician's digital assistant, leveraging a sophisticated architecture to enhance diagnostic accuracy. The process involves embedding query images, retrieving similar images from our database, and employing cosine similarity for precise matching.

🧠 Features:
- **Query Image Input**: Upload an MRI image and receive similar images from our database.
- **Segmentation Options**: Choose from whole brain or tumor-segmented images.
- **Multiple MRI Modalities**: Work with different MRI modalities for nuanced diagnosis.

## Technology
We employ a range of models to ensure the highest accuracy:
- Imagenet-pretrained CNN (RESNet50/RESNet152)
- Finetuned EfficientNetV2
- MedClip (RESNet50 and Swin Transformer)
- Custom CNN with Triplet Loss

Currently our models are undergoing extensive evaluation, including expert ratings and internal assessments, to ensure reliability and accuracy.

## Current Scope
Our current proof of concept supports differential diagnosis for three brain tumor types: glioma, meningioma, and metastasis.

## Developer Resources
Explore our `notebook` folder for:
- Visualization techniques.
- Brain image segmentation methods.
- Steps for finetuning additional models.

## Contributing
Join us in our mission to transform radiology diagnostics! We welcome contributions in code, ideas, or feedback.

## Contact
Connect with our team:
- [Michael Gerloff](https://www.linkedin.com/in/michael-gerloff/)
- [Svenja Niehaus](https://www.linkedin.com/in/svenja-niehus/)
- [Dr. Katja Dittrich](https://www.linkedin.com/in/katja-dittrich/)
- [Antonio Rueda-Toicen](https://www.linkedin.com/in/antonioruedatoicen/)

## License
Pixel Diagnose is open-sourced under the [GNU Affero GPL v3 License](LICENSE.md).

## Support
For support, please open an issue or contact us at [pixeldiagnose@gmail.com](mailto:pixeldiagnose@gmail.com).

---

Empowering Radiologists, One Pixel at a Time. 🧠💡

