# ML Models Directory

This directory contains the trained machine learning models for the Fasal Sathi app.

## Models Included

- **enhanced_crop_model.pkl** (9.7 MB) - Crop recommendation model
- **enhanced_soil_model.pkl** (3.5 MB) - Soil type prediction model
- **enhanced_crop_encoder.pkl** (1 KB) - Label encoder for crop recommendations
- **enhanced_soil_encoder.pkl** (872 bytes) - Label encoder for soil types
- **enhanced_scaler.pkl** (1.1 KB) - Feature scaler
- **crop_database.json** (5.3 KB) - Crop information database

## Note

**These model files are not tracked in git** due to their large size. They are kept locally only.

### For Developers

If you need to obtain these models:
1. Train the models using scripts in `ml_pipeline/`
2. Or contact the development team to get a copy of the pre-trained models

### Training Models

To generate these models, run:
```bash
cd ml_pipeline
python train_models.py
```

This will create the necessary model files in this directory.
