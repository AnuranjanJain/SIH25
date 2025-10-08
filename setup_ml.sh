#!/bin/bash

# FasalSathi ML Pipeline Setup Script
# This script sets up the Python environment and ML models

set -e  # Exit on error

echo "🌾 FasalSathi ML Pipeline Setup"
echo "================================"
echo ""

# Check Python version
echo "📋 Checking Python version..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
echo "✅ Python $PYTHON_VERSION found"
echo ""

# Create virtual environment
echo "🔧 Creating virtual environment..."
if [ -d "venv" ]; then
    echo "⚠️  Virtual environment already exists. Skipping..."
else
    python3 -m venv venv
    echo "✅ Virtual environment created"
fi
echo ""

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source venv/bin/activate
echo "✅ Virtual environment activated"
echo ""

# Upgrade pip
echo "📦 Upgrading pip..."
pip install --upgrade pip setuptools wheel
echo "✅ pip upgraded"
echo ""

# Install dependencies
echo "📥 Installing Python dependencies..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo "✅ Dependencies installed"
else
    echo "❌ requirements.txt not found!"
    exit 1
fi
echo ""

# Check if models exist
echo "🔍 Checking for trained models..."
if [ -d "ml_pipeline/models" ] && [ -f "ml_pipeline/models/crop_recommendation_model.joblib" ]; then
    echo "✅ Trained models found"
    MODELS_EXIST=true
else
    echo "⚠️  No trained models found"
    MODELS_EXIST=false
fi
echo ""

# Offer to train models if they don't exist
if [ "$MODELS_EXIST" = false ]; then
    echo "❓ Would you like to train the ML models now? (y/n)"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "🚀 Starting model training..."
        python ml_pipeline/train_models.py
        echo "✅ Models trained successfully"
    else
        echo "⏭️  Skipping model training"
        echo "   You can train models later by running:"
        echo "   python ml_pipeline/train_models.py"
    fi
    echo ""
fi

# Validate models
if [ "$MODELS_EXIST" = true ] || [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "🔍 Validating models..."
    python -c "
from ml_pipeline.fixed_predictor import FixedModelPredictor
try:
    predictor = FixedModelPredictor('ml_pipeline/models')
    print('✅ Models loaded successfully')
except Exception as e:
    print(f'❌ Model validation failed: {e}')
    exit(1)
"
    echo ""
fi

# Summary
echo "================================"
echo "✅ Setup Complete!"
echo ""
echo "📚 Next steps:"
echo "   1. Activate the virtual environment:"
echo "      source venv/bin/activate"
echo ""
echo "   2. Train or retrain models:"
echo "      python ml_pipeline/train_models.py"
echo ""
echo "   3. Test predictions:"
echo "      python ml_pipeline/fixed_predictor.py"
echo ""
echo "   4. Build the Android app:"
echo "      ./gradlew assembleDebug"
echo ""
echo "📖 For more information, see README.md and ml_pipeline/README_ML.md"
echo ""
