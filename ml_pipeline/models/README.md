# ML Pipeline Models Directory

This directory contains the trained machine learning models used by the ML pipeline.

## Models Included

- **crop_recommendation_model.joblib** (484 MB) - Primary crop recommendation model
- **soil_type_model.joblib** (32 MB) - Soil classification model
- **soil_image_classifier.h5** (116 MB) - Deep learning model for soil image analysis
- **crop_encoder.joblib** (753 bytes) - Label encoder for crops
- **soil_encoder.joblib** (518 bytes) - Label encoder for soil types
- **image_encoder.joblib** (551 bytes) - Label encoder for image classification
- **crop_scaler.joblib** (1.3 KB) - Feature scaler for crop data
- **soil_scaler.joblib** (1.3 KB) - Feature scaler for soil data
- **model_metadata.json** - Model configuration and metadata

## Important

**These model files are not tracked in git** to reduce repository size (~640+ MB total).

### For Developers

To obtain or regenerate these models:

1. **Train from scratch:**
   ```bash
   cd ml_pipeline
   pip install -r requirements.txt
   python train_models.py
   ```

2. **Deploy models:**
   ```bash
   python deploy_models.py
   ```

3. **Contact the team** for pre-trained model files if needed.

### Model Metadata

The `model_metadata.json` file contains information about:
- Model versions
- Training dates
- Performance metrics
- Feature specifications

This file IS tracked in git for reference.
