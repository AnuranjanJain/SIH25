# FasalSathi - Agricultural Companion App 🌾# FasalSathi - Agricultural Companion App 🌾



> **Smart Agricultural Assistant for Farmers in India**> **Smart Agricultural Assistant for Farmers in India**



[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

[![Platform](https://img.shields.io/badge/Platform-Android-green.svg)](https://developer.android.com/)[![Platform](https://img.shields.io/badge/Platform-Android-green.svg)](https://developer.android.com/)

[![Kotlin](https://img.shields.io/badge/Kotlin-1.9.10-blue.svg)](https://kotlinlang.org/)[![Kotlin](https://img.shields.io/badge/Kotlin-1.9.10-blue.svg)](https://kotlinlang.org/)

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)



FasalSathi is a comprehensive Android application designed to empower farmers with modern technology, providing weather information, AI-powered agricultural guidance, and smart farming recommendations.FasalSathi is a comprehensive Android application designed to empower farmers with modern technology, providing weather information, AI-powered agricultural guidance, and smart farming recommendations.



---## 📚 Documentation



## 📋 Table of Contents- **[Quick Start Guide](QUICK_START.md)** - Get started in 5 minutes

- [Features](#-features)- **[Contributing Guidelines](CONTRIBUTING.md)** - How to contribute

- [Technical Stack](#️-technical-stack)- **[ML Pipeline Guide](ml_pipeline/README_ML.md)** - ML models documentation

- [Quick Start](#-quick-start)- **[Cleanup Summary](CLEANUP_SUMMARY.md)** - Repository cleanup details

- [Project Structure](#-project-structure)- **[Changelog](CHANGELOG.md)** - Version history

- [Building the App](#-building-the-app)

- [ML Pipeline](#-ml-pipeline)## 🌟 Features

- [Testing](#-testing)

- [Contributing](#-contributing)### 📱 Core Functionality

- [Troubleshooting](#-troubleshooting)- **Dashboard Overview**: Clean, intuitive interface with quick access to all features

- [License](#-license)- **User Profile Management**: Personalized farmer profiles with location-based services

- **Multi-language Support**: Available in multiple Indian languages

---

### 🌤️ Weather Integration

## 🌟 Features- **Real-time Weather Data**: Integration with OpenWeatherMap API

- **Location-based Forecasting**: Weather information for 200+ Indian cities

### 📱 Core Functionality- **Agricultural Weather Insights**: Farming recommendations based on weather conditions

- **Dashboard Overview**: Clean, intuitive interface with quick access to all features- **Enhanced Simulation**: Fallback system with realistic weather data

- **User Profile Management**: Personalized farmer profiles with location-based services

- **Multi-language Support**: Available in multiple Indian languages### 🤖 AI-Powered FAQ Assistant

- **Voice Recognition**: Ask questions using voice input

### 🌤️ Weather Integration- **Image Analysis**: Upload crop photos for AI-powered analysis

- **Real-time Weather Data**: Integration with OpenWeatherMap API- **Text-to-Speech**: Listen to AI responses

- **Location-based Forecasting**: Weather information for 200+ Indian cities- **Chat Interface**: Interactive conversation with agricultural AI assistant

- **Agricultural Weather Insights**: Farming recommendations based on weather conditions- **Multilingual Support**: Questions and answers in local languages

- **Enhanced Simulation**: Fallback system with realistic weather data

### 🏛️ Government Schemes

### 🤖 AI-Powered FAQ Assistant- **Scheme Information**: Access to various agricultural government schemes

- **Voice Recognition**: Ask questions using voice input- **Eligibility Checker**: Check eligibility for different programs

- **Image Analysis**: Upload crop photos for AI-powered analysis- **Application Guidance**: Step-by-step application process help

- **Text-to-Speech**: Listen to AI responses

- **Chat Interface**: Interactive conversation with agricultural AI assistant## 🛠️ Technical Stack

- **Multilingual Support**: Questions and answers in local languages

### Mobile Development

### 🌾 Crop Recommendation System- **Language**: Kotlin

- **ML-based Predictions**: Recommends optimal crops based on soil and environmental conditions- **Platform**: Android (API 21+)

- **Soil Analysis**: Advanced soil type detection using machine learning- **Architecture**: MVVM with Clean Architecture

- **95% Accuracy**: Trained on comprehensive agricultural datasets- **UI Framework**: Material Design 3

- **Database**: Room (SQLite)

### 🏛️ Government Schemes

- **Scheme Information**: Access to various agricultural government schemes### AI & Machine Learning

- **Eligibility Checker**: Check eligibility for different programs- **Voice Recognition**: Android Speech Recognition API

- **Application Guidance**: Step-by-step application process help- **Text-to-Speech**: Android TTS Engine

- **Image Analysis**: Custom AI models for crop analysis

---- **Natural Language Processing**: For multilingual support



## 🛠️ Technical Stack### APIs & Services

- **Weather API**: OpenWeatherMap integration

### Mobile Development- **Location Services**: GPS and network-based location

- **Language**: Kotlin 1.9.10- **Cloud Storage**: For user data and preferences

- **Platform**: Android (API 21+)

- **Architecture**: MVVM with Clean Architecture## 🚀 Getting Started

- **UI Framework**: Material Design 3

- **Database**: Room (SQLite)### Prerequisites

- **Build Tool**: Gradle 8.1.2- Android Studio Arctic Fox or later

- Android SDK (API 21 or higher)

### AI & Machine Learning- Kotlin 1.9+

- **ML Framework**: scikit-learn, TensorFlow- Internet connection for weather data

- **Models**: Random Forest (Crop), Gradient Boosting (Soil)

- **Voice Recognition**: Android Speech Recognition API### Installation

- **Text-to-Speech**: Android TTS Engine

- **Image Processing**: OpenCV, Pillow1. **Clone the Repository**

   ```bash

### APIs & Services   git clone https://github.com/AnuranjanJain/FasalSathi.git

- **Weather API**: OpenWeatherMap integration   cd FasalSathi

- **Location Services**: GPS and network-based location   ```

- **Firebase**: Cloud storage and analytics

2. **Open in Android Studio**

---   - Open Android Studio

   - Select "Open an existing project"

## 🚀 Quick Start   - Navigate to the cloned directory

   - Wait for Gradle sync to complete

### Prerequisites

- **Android Studio** Arctic Fox or later3. **Configure API Keys** (Optional - Has fallback simulation)

- **JDK** 8 or higher   

- **Python** 3.8+ (for ML development)   The app includes a realistic weather simulation system, so API keys are optional.

- **Git** for version control   

   If you want to use real weather data:

### 5-Minute Setup (Android App)   - Get a free API key from [OpenWeather](https://openweathermap.org/api)

   - Update in your local configuration (not committed to repo)

1. **Clone the repository**

   ```bash4. **Build and Run**

   git clone https://github.com/AnuranjanJain/FasalSathi.git   ```bash

   cd FasalSathi   # Using Gradle

   ```   ./gradlew assembleDebug

   

2. **Open in Android Studio**   # Or use Android Studio's Run button (Shift+F10)

   - Launch Android Studio   ```

   - File → Open → Select the `FasalSathi` folder

   - Wait for Gradle sync (2-3 minutes)5. **Set Up ML Models (Optional)**

   

3. **Build and Run**   Pre-trained models are included. To retrain:

   ```bash   ```bash

   # Using build script   # Create virtual environment

   ./build.sh -i   python3 -m venv venv

      source venv/bin/activate  # On Windows: venv\Scripts\activate

   # Or using Gradle directly   

   ./gradlew assembleDebug   # Install dependencies

      pip install -r requirements.txt

   # Or use Android Studio's Run button (Shift+F10)   

   ```   # Train models

   python ml_pipeline/train_models.py

### ML Pipeline Setup   ```



1. **Automated Setup** (Recommended)## 📁 Project Structure

   ```bash

   ./setup_ml.sh```

   ```SIH25/

├── app/                          # Android application

2. **Manual Setup**│   ├── build.gradle.kts          # App-level build configuration

   ```bash│   ├── google-services.json      # Firebase configuration

   # Create virtual environment│   └── src/

   python3 -m venv venv│       ├── main/

   source venv/bin/activate  # Linux/Mac│       │   ├── AndroidManifest.xml

   # venv\Scripts\activate   # Windows│       │   ├── java/com/fasalsaathi/app/

   │       │   │   ├── FasalSaathiApplication.kt

   # Install dependencies│       │   │   ├── ui/          # UI components (Activities, Fragments)

   pip install -r requirements.txt│       │   │   ├── data/        # Data layer (Repository, DAO, Entities)

   │       │   │   ├── ml/          # ML model integration

   # Train models (optional - pre-trained models included)│       │   │   ├── weather/     # Weather service

   python ml_pipeline/train_models.py│       │   │   └── utils/       # Utility classes

   ```│       │   └── res/

│       │       ├── layout/      # XML layouts

---│       │       ├── values/      # Strings, colors, themes

│       │       ├── drawable/    # Images and icons

## 📁 Project Structure│       │       └── mipmap/      # App icons

│       ├── test/                # Unit tests

```│       └── androidTest/         # Instrumentation tests

FasalSathi/├── ml_pipeline/                  # Machine Learning Pipeline

├── app/                          # Android application│   ├── train_models.py          # Model training script

│   ├── build.gradle.kts          # App-level build configuration│   ├── deploy_models.py         # Model deployment utilities

│   ├── google-services.json      # Firebase configuration│   ├── fixed_predictor.py       # Production predictor

│   └── src/│   ├── requirements.txt         # Python dependencies

│       ├── main/│   ├── models/                  # Trained ML models (484MB+)

│       │   ├── AndroidManifest.xml│   │   ├── crop_recommendation_model.joblib

│       │   ├── java/com/fasalsaathi/app/│   │   ├── soil_type_model.joblib

│       │   │   ├── FasalSaathiApplication.kt│   │   └── model_metadata.json

│       │   │   ├── ui/          # UI components (Activities, Fragments)│   └── android_integration/     # Android ML integration

│       │   │   ├── data/        # Data layer (Repository, DAO, Entities)│       ├── MLPredictor.java

│       │   │   ├── ml/          # ML model integration│       └── model_config.json

│       │   │   ├── weather/     # Weather service├── Datasets/                     # Training datasets

│       │   │   └── utils/       # Utility classes│   ├── MASTER_DATASET_INDEX.csv

│       │   └── res/             # Resources (layouts, strings, drawables)│   ├── ml_soil_health_dataset.csv

│       ├── test/                # Unit tests│   ├── realistic_crop_soil_dataset.csv

│       └── androidTest/         # Instrumentation tests│   └── sample_soil_health_card_data.csv

│├── gradle/                       # Gradle wrapper files

├── ml_pipeline/                  # Machine Learning Pipeline├── build.gradle.kts             # Project-level build configuration

│   ├── train_models.py          # Model training script├── settings.gradle.kts          # Gradle settings

│   ├── deploy_models.py         # Model deployment utilities├── requirements.txt             # Python dependencies (root)

│   ├── fixed_predictor.py       # Production predictor├── README.md                    # This file

│   ├── requirements.txt         # Python dependencies├── CHANGELOG.md                 # Version history

│   ├── models/                  # Trained ML models└── LICENSE                      # MIT License

│   │   ├── crop_recommendation_model.joblib  # 484MB│       │       │   ├── colors.xml

│   │   ├── soil_type_model.joblib            # 32MB│       │       │   ├── strings.xml

│   │   └── model_metadata.json│       │       │   └── themes.xml

│   └── android_integration/     # Android ML integration│       │       ├── values-night/

│       ├── MLPredictor.java│       │       │   └── themes.xml

│       └── model_config.json│       │       └── xml/

││       │           ├── backup_rules.xml

├── Datasets/                     # Training datasets│       │           └── data_extraction_rules.xml

│   ├── MASTER_DATASET_INDEX.csv│       ├── test/

│   ├── ml_soil_health_dataset.csv│       │   └── java/com/example/myandroidapp/

│   ├── realistic_crop_soil_dataset.csv│       │       └── ExampleUnitTest.kt

│   └── sample_soil_health_card_data.csv│       └── androidTest/

││           └── java/com/example/myandroidapp/

├── gradle/                       # Gradle wrapper files│               └── ExampleInstrumentedTest.kt

├── build.gradle.kts             # Project-level build configuration├── build.gradle.kts              # Project-level build configuration

├── settings.gradle.kts          # Gradle settings├── gradle.properties             # Gradle properties

├── requirements.txt             # Python dependencies (root)├── settings.gradle.kts           # Gradle settings

├── build.sh                     # Automated build script└── gradlew                       # Gradle wrapper script

├── setup_ml.sh                  # ML setup script```

├── README.md                    # This file

├── CHANGELOG.md                 # Version history## Prerequisites

└── LICENSE                      # MIT License

```- Java Development Kit (JDK) 8 or higher

- Android SDK

---- Android Studio or VS Code with Android extensions



## 🔨 Building the App## Building the Project



### Using Build Script (Recommended)To build the project:



```bash```bash

# Build debug APK./gradlew build

./build.sh```



# Build and install on connected deviceTo build a debug APK:

./build.sh -i

```bash

# Build release APK./gradlew assembleDebug

./build.sh -r```



# Clean buildTo build a release APK:

./build.sh -c

```bash

# Clean, build, and install./gradlew assembleRelease

./build.sh -c -i```

```

## Running the Project

### Using Gradle Directly

To run on an emulator or connected device:

```bash

# Debug build```bash

./gradlew assembleDebug./gradlew installDebug

# Output: app/build/outputs/apk/debug/app-debug.apk```



# Release build## Project Configuration

./gradlew assembleRelease

# Output: app/build/outputs/apk/release/app-release.apk- **Package Name**: `com.example.myandroidapp`

- **Min SDK**: 24 (Android 7.0)

# Install on device- **Target SDK**: 34 (Android 14)

./gradlew installDebug- **Compile SDK**: 34



# Clean build artifacts## Dependencies

./gradlew clean

```- AndroidX Core KTX

- AndroidX AppCompat

### Using Android Studio- Material Design Components

- ConstraintLayout

1. Click the green "Run" button (▶️) or press `Shift+F10`- JUnit for testing

2. Select your device/emulator- Espresso for UI testing

3. Build menu → Build APK(s) for APK generation

## Development

---

The main activity is located at `app/src/main/java/com/example/myandroidapp/MainActivity.kt` and displays a simple "Hello World!" message.

## 🤖 ML Pipeline

You can customize the app by:

### Available Models1. Modifying the layout in `app/src/main/res/layout/activity_main.xml`

2. Adding new activities and resources

#### 1. Crop Recommendation Model3. Updating the app name and package in the configuration files

- **Type**: Random Forest Classifier (Ensemble)4. Adding new dependencies in `app/build.gradle.kts`
- **Accuracy**: ~95% on test set
- **Input Features**: N, P, K, pH, Temperature, Humidity, Rainfall, EC, OC, S, Zn, Fe, Cu, Mn, B
- **Output**: Recommended crop type with confidence score
- **File**: `crop_recommendation_model.joblib` (484MB)

#### 2. Soil Type Detection Model
- **Type**: Gradient Boosting Classifier
- **Accuracy**: ~92% on test set
- **Input**: Soil composition and chemical properties
- **Output**: Soil type (Alluvial, Black, Red, Laterite, Desert, Mountain, Arid, Yellow)
- **File**: `soil_type_model.joblib` (32MB)

### Training Models

```bash
# Activate virtual environment
source venv/bin/activate

# Train all models
python ml_pipeline/train_models.py

# Models will be saved to ml_pipeline/models/
```

### Using the Predictor

```python
from ml_pipeline.fixed_predictor import FixedModelPredictor

# Initialize predictor
predictor = FixedModelPredictor(models_path="ml_pipeline/models")

# Crop recommendation
result = predictor.predict_crop({
    'n': 90, 'p': 42, 'k': 43, 'ph': 6.5,
    'temperature': 25, 'humidity': 70, 'rainfall': 800
})
print(f"Recommended crop: {result['crop']}")
print(f"Confidence: {result['confidence']:.2%}")
```

### Android Integration

```java
// In your Android activity
MLPredictor predictor = new MLPredictor(context);

// Make prediction
CropRecommendation result = predictor.recommendCrop(
    n, p, k, ph, temperature, humidity, rainfall
);
```

---

## 🧪 Testing

### Unit Tests

```bash
# Run all unit tests
./gradlew test

# Run specific test
./gradlew test --tests com.fasalsaathi.app.ExampleUnitTest

# Generate test report
./gradlew test --continue
# Report: app/build/reports/tests/testDebugUnitTest/index.html
```

### Instrumentation Tests

```bash
# Run on connected device/emulator
./gradlew connectedAndroidTest

# Run specific test
./gradlew connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=com.fasalsaathi.app.ExampleInstrumentedTest
```

### Code Coverage

```bash
# Generate coverage report
./gradlew jacocoTestReport
# Report: app/build/reports/jacoco/jacocoTestReport/html/index.html
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Getting Started

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
4. **Commit your changes**
   ```bash
   git commit -m 'feat: add amazing feature'
   ```
5. **Push to your fork**
   ```bash
   git push origin feature/amazing-feature
   ```
6. **Open a Pull Request**

### Code Style Guidelines

#### Kotlin
- Follow [Kotlin Coding Conventions](https://kotlinlang.org/docs/coding-conventions.html)
- Use 4 spaces for indentation
- Maximum line length: 120 characters
- Use meaningful variable and function names

#### Python
- Follow [PEP 8](https://pep8.org/)
- Use type hints where applicable
- Document functions with docstrings
- Maximum line length: 100 characters

### Commit Message Format

```
type(scope): brief description

Detailed explanation (if needed)

Fixes #issue_number
```

**Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

**Example**:
```
feat(weather): add 7-day forecast display

Implements extended weather forecast with daily breakdown.
Includes temperature, precipitation, and wind data.

Fixes #42
```

### What to Contribute

- 🐛 **Bug fixes**: Check issues labeled `bug`
- ✨ **New features**: Discuss in issues first
- 📝 **Documentation**: Improve docs, add examples
- 🎨 **UI/UX**: Design improvements, accessibility
- 🤖 **ML models**: Improve accuracy, add new models
- 🧪 **Tests**: Increase code coverage

---

## 🐛 Troubleshooting

### Gradle Sync Failed

```bash
# Clean and rebuild
./gradlew clean
./gradlew build --refresh-dependencies

# Delete .gradle cache
rm -rf .gradle
./gradlew build
```

### Device Not Detected

```bash
# Check ADB
adb devices

# Restart ADB server
adb kill-server
adb start-server

# Check USB debugging is enabled on device
```

### Python Import Errors

```bash
# Ensure virtual environment is activated
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows

# Reinstall dependencies
pip install --upgrade -r requirements.txt
```

### Models Not Found

```bash
# Train models
python ml_pipeline/train_models.py

# Or check if models directory exists
ls ml_pipeline/models/
```

### Build Too Slow

Add to `gradle.properties`:
```properties
org.gradle.daemon=true
org.gradle.parallel=true
org.gradle.caching=true
org.gradle.jvmargs=-Xmx2048m
```

### Out of Memory During Build

```bash
# Increase heap size
export GRADLE_OPTS="-Xmx4096m"
./gradlew clean build
```

---

## 📊 Performance Metrics

### App Performance
- **APK Size**: ~15-20 MB (debug), ~10-15 MB (release)
- **Min SDK**: API 21 (Android 5.0)
- **Target SDK**: API 36 (Android 14+)
- **Load Time**: < 2 seconds on modern devices

### ML Model Performance
- **Crop Recommendation**: 95.2% accuracy, <100ms prediction
- **Soil Type Detection**: 92.1% accuracy, <50ms prediction
- **Model Size**: 516 MB total (loaded on-demand)

---

## 🔐 Security & Privacy

- **Data Storage**: All user data stored locally in encrypted SQLite database
- **API Keys**: Not hardcoded, use local configuration
- **Permissions**: Only requests necessary permissions
- **Privacy Policy**: No personal data shared without consent

---

## 📱 Supported Devices

- **Minimum**: Android 5.0 (API 21)
- **Recommended**: Android 8.0+ (API 26+)
- **Screen Sizes**: Phones and tablets (4" - 10"+)
- **Orientations**: Portrait and landscape
- **Languages**: Hindi, English, Marathi, Gujarati, Punjabi, and more

---

## 🗺️ Roadmap

- [ ] Offline mode for core features
- [ ] Integration with government agricultural APIs
- [ ] Crop disease detection using image recognition
- [ ] Market price tracking and predictions
- [ ] Community forum for farmers
- [ ] SMS-based feature access for low-end devices
- [ ] Integration with weather satellites

---

## 🙏 Acknowledgments

- **SIH 2025**: Smart India Hackathon project
- **OpenWeatherMap**: Weather data API
- **scikit-learn**: ML framework
- **Android Community**: Libraries and tools
- **Contributors**: All contributors to this project

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 📞 Contact & Support

- **Repository**: [github.com/AnuranjanJain/FasalSathi](https://github.com/AnuranjanJain/FasalSathi)
- **Issues**: [GitHub Issues](https://github.com/AnuranjanJain/FasalSathi/issues)
- **Discussions**: [GitHub Discussions](https://github.com/AnuranjanJain/FasalSathi/discussions)

---

## 📈 Project Status

![GitHub last commit](https://img.shields.io/github/last-commit/AnuranjanJain/FasalSathi)
![GitHub issues](https://img.shields.io/github/issues/AnuranjanJain/FasalSathi)
![GitHub pull requests](https://img.shields.io/github/issues-pr/AnuranjanJain/FasalSathi)

**Status**: Active Development 🚀

---

<p align="center">
  Made with ❤️ for Indian Farmers 🌾
  <br>
  <strong>FasalSathi - Your Farming Companion</strong>
</p>
