<div align="center">

# 🌾 FasalSathi

### Smart Agricultural Assistant for Farmers in India

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android-green.svg?style=for-the-badge&logo=android)](https://developer.android.com/)
[![Kotlin](https://img.shields.io/badge/Kotlin-1.9.10-blue.svg?style=for-the-badge&logo=kotlin)](https://kotlinlang.org/)
[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg?style=for-the-badge&logo=python)](https://www.python.org/)

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=28&duration=4000&pause=1000&color=2E7D32&center=true&vCenter=true&width=600&lines=Empowering+Farmers+with+Technology;AI-Powered+Crop+Recommendations;Real-time+Weather+Insights;Smart+Farming+Solutions" alt="Typing SVG" />

</div>

---

## 📋 Quick Navigation

<table>
<tr>
<td width="25%" align="center"><b>🚀 <a href="#-quick-start">Get Started</a></b><br/>Setup in 5 minutes</td>
<td width="25%" align="center"><b>🌟 <a href="#-features">Features</a></b><br/>What we offer</td>
<td width="25%" align="center"><b>🤖 <a href="#-ml-models">ML Models</a></b><br/>95% accurate AI</td>
<td width="25%" align="center"><b>🤝 <a href="#-contributing">Contribute</a></b><br/>Join the team</td>
</tr>
</table>

---

## 🌟 Features

### 📱 Core Functionality
- **Modern Dashboard** - Material Design 3 interface with quick access to all features
- **User Profiles** - Personalized farmer accounts with location-based services
- **Multi-language** - Hindi, English, Marathi, Gujarati & more

### 🌤️ Weather Intelligence
- **Real-time Data** - Integration with OpenWeatherMap API for 200+ Indian cities
- **7-Day Forecast** - Hourly weather breakdowns with farming recommendations
- **Offline Mode** - Realistic simulation when internet unavailable

### 🤖 AI Assistant
- **Voice Recognition** - Ask farming questions using voice
- **Image Analysis** - Upload crop photos for AI-powered diagnosis
- **Text-to-Speech** - Listen to responses in local languages
- **Smart Chat** - Interactive conversation for agricultural queries

### 🌾 ML Crop Recommendation
- **95% Accurate** - AI-based crop recommendations using soil & environmental data
- **Soil Analysis** - Advanced soil type detection with 92% accuracy
- **Smart Suggestions** - Region-specific recommendations with confidence scores

### 🏛️ Government Schemes
- **Scheme Database** - Access agricultural government programs
- **Eligibility Check** - Verify eligibility for different schemes
- **Application Guide** - Step-by-step help with applications

---

## ��️ Tech Stack

<div align="center">

<img src="https://skillicons.dev/icons?i=kotlin,androidstudio,python,tensorflow,sklearn,firebase,git" />

</div>

<br/>

| **Mobile** | **Machine Learning** | **Backend** |
|------------|---------------------|-------------|
| Kotlin 1.9.10 | Random Forest (95% accuracy) | OpenWeatherMap API |
| Material Design 3 | Gradient Boosting (92% accuracy) | Firebase |
| Room Database | TensorFlow + scikit-learn | RESTful APIs |
| MVVM Architecture | OpenCV Image Processing | Cloud Storage |

---

## 🚀 Quick Start

### ⚡ One-Command Setup

```bash
# Clone repository
git clone https://github.com/AnuranjanJain/FasalSathi.git
cd FasalSathi

# For Android Development
./build.sh -i

# For ML Development  
./setup_ml.sh
```

### 📱 Android Setup

<details>
<summary><b>Click to expand detailed steps</b></summary>

**Prerequisites:** Android Studio, JDK 8+, Android SDK (API 21+)

1. **Open in Android Studio**
   - File → Open → Select FasalSathi folder
   - Wait for Gradle sync

2. **Build & Run**
   ```bash
   ./build.sh -i              # Build and install
   ./gradlew assembleDebug    # Build only
   ```

3. **Run in Android Studio**
   - Press `Shift+F10` or click Run ▶️

</details>

### 🐍 ML Pipeline Setup

<details>
<summary><b>Click to expand detailed steps</b></summary>

**Prerequisites:** Python 3.8+, pip

1. **Automated Setup** (Recommended)
   ```bash
   ./setup_ml.sh
   ```

2. **Manual Setup**
   ```bash
   python3 -m venv venv
   source venv/bin/activate          # Linux/Mac
   # venv\Scripts\activate           # Windows
   pip install -r requirements.txt
   python ml_pipeline/train_models.py
   ```

</details>

---

## 🤖 ML Models

| Model | Type | Accuracy | Speed | Size |
|-------|------|----------|-------|------|
| 🌾 Crop Recommendation | Random Forest | 95.2% | <100ms | 484 MB |
| 🏔️ Soil Detection | Gradient Boosting | 92.1% | <50ms | 32 MB |
| 📸 Image Classifier | CNN (TensorFlow) | 89.5% | <200ms | 116 MB |

### Quick Test

```python
from ml_pipeline.fixed_predictor import FixedModelPredictor

predictor = FixedModelPredictor("ml_pipeline/models")
result = predictor.predict_crop({
    'n': 90, 'p': 42, 'k': 43, 'ph': 6.5,
    'temperature': 25, 'humidity': 70, 'rainfall': 800
})

print(f"🌾 Crop: {result['crop']}")
print(f"📊 Confidence: {result['confidence']:.1%}")
```

---

## 📁 Project Structure

```
FasalSathi/
├── app/                    # Android application (Kotlin)
│   ├── src/main/          # Source code
│   │   ├── java/          # Kotlin files (UI, data, ML integration)
│   │   └── res/           # Resources (layouts, strings, images)
│   └── src/test/          # Unit & integration tests
├── ml_pipeline/            # Machine Learning (Python)
│   ├── train_models.py    # Model training
│   ├── fixed_predictor.py # Production predictor
│   └── models/            # Trained models (516 MB)
├── Datasets/              # Training datasets
├── build.sh               # Build automation script
├── setup_ml.sh            # ML setup script
└── README.md              # This file
```

---

## 🔨 Build Commands

```bash
./build.sh        # Build debug APK
./build.sh -i     # Build and install on device
./build.sh -r     # Build release APK
./build.sh -c     # Clean build
./gradlew test    # Run tests
```

---

## 🧪 Testing

```bash
# Unit tests
./gradlew test

# Integration tests (requires device)
./gradlew connectedAndroidTest

# Test coverage report
./gradlew jacocoTestReport
```

---

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** changes: `git commit -m 'feat: add amazing feature'`
4. **Push** to branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

### Commit Convention

```
feat: new feature
fix: bug fix
docs: documentation
style: formatting
refactor: code restructuring
test: add tests
chore: maintenance
```

---

## 🐛 Troubleshooting

<details>
<summary><b>Gradle Sync Failed</b></summary>

```bash
./gradlew clean
./gradlew build --refresh-dependencies
```
</details>

<details>
<summary><b>Device Not Detected</b></summary>

```bash
adb devices
adb kill-server
adb start-server
```
</details>

<details>
<summary><b>Python Import Errors</b></summary>

```bash
source venv/bin/activate
pip install --upgrade -r requirements.txt
```
</details>

<details>
<summary><b>Out of Memory</b></summary>

Add to `gradle.properties`:
```properties
org.gradle.jvmargs=-Xmx4096m
org.gradle.daemon=true
org.gradle.parallel=true
```
</details>

---

## 📊 Performance

| Metric | Value |
|--------|-------|
| APK Size (Debug) | 15-20 MB |
| APK Size (Release) | 10-15 MB |
| Cold Start Time | < 2s |
| Memory Usage | 50-80 MB |
| ML Inference | < 100ms |

---

## 🗺️ Roadmap

**Current (v1.1)** ✅
- Core features, ML models, Weather system, Multi-language

**Next (v1.2)** 🚧
- Offline mode, Enhanced disease detection, Market prices, Push notifications

**Future (v2.0)** 💡
- Community forum, SMS access, Satellite imagery, Government API integration

---

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) for details.

---

## 🙏 Acknowledgments

- **Smart India Hackathon 2025** - Project opportunity
- **OpenWeatherMap** - Weather data API
- **scikit-learn** - ML framework
- **Android Community** - Libraries and support

---

<div align="center">

## 📞 Contact

[![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)](https://github.com/AnuranjanJain/FasalSathi)
[![Issues](https://img.shields.io/badge/Issues-Report_Bug-red?style=for-the-badge&logo=github)](https://github.com/AnuranjanJain/FasalSathi/issues)
[![Discussions](https://img.shields.io/badge/Discussions-Join-blue?style=for-the-badge&logo=github)](https://github.com/AnuranjanJain/FasalSathi/discussions)

---

### ⭐ Star us on GitHub if you find this helpful!

---

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=20&duration=3000&pause=1000&color=4CAF50&center=true&vCenter=true&width=500&lines=Made+with+%E2%9D%A4%EF%B8%8F+for+Indian+Farmers;FasalSathi+-+Your+Farming+Companion;Happy+Farming!+🌾" alt="Footer" />

**[⬆ Back to Top](#-fasalsathi)**

</div>
