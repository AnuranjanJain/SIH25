#!/bin/bash

# Screenshots Management Script for FasalSathi
# This script helps manage app screenshots in the README

set -e

SCREENSHOTS_DIR="screenshots"
README_FILE="README.md"

echo "📸 FasalSathi Screenshots Manager"
echo "=================================="
echo ""

# Check if screenshots directory exists
if [ ! -d "$SCREENSHOTS_DIR" ]; then
    echo "📁 Creating screenshots directory..."
    mkdir -p "$SCREENSHOTS_DIR"
    echo "✅ Directory created: $SCREENSHOTS_DIR/"
    echo ""
fi

# Function to display menu
show_menu() {
    echo "What would you like to do?"
    echo ""
    echo "1) 📱 Add screenshot placeholders to README"
    echo "2) 🖼️  List current screenshots"
    echo "3) 📝 Generate screenshot template"
    echo "4) ✅ Validate README images"
    echo "5) 🚪 Exit"
    echo ""
    read -p "Enter your choice (1-5): " choice
}

# Function to add screenshot placeholders
add_placeholders() {
    echo ""
    echo "📱 Screenshot Categories:"
    echo "1. Dashboard (dashboard.png)"
    echo "2. Weather (weather.png)"
    echo "3. AI Assistant (ai_assistant.png)"
    echo "4. Crop Recommendations (crop_recommend.png)"
    echo "5. Profile (profile.png)"
    echo "6. Government Schemes (govt_schemes.png)"
    echo ""
    echo "💡 Tip: Take screenshots using Android Studio or device"
    echo "   Then place them in the screenshots/ directory"
}

# Function to list screenshots
list_screenshots() {
    echo ""
    echo "📂 Current screenshots:"
    if [ -d "$SCREENSHOTS_DIR" ] && [ "$(ls -A $SCREENSHOTS_DIR)" ]; then
        ls -lh "$SCREENSHOTS_DIR"
    else
        echo "   No screenshots found in $SCREENSHOTS_DIR/"
        echo ""
        echo "💡 To add screenshots:"
        echo "   1. Take screenshots of your app"
        echo "   2. Place them in the $SCREENSHOTS_DIR/ folder"
        echo "   3. Update README.md to reference them"
    fi
    echo ""
}

# Function to generate template
generate_template() {
    echo ""
    echo "📝 Creating screenshots template..."
    
    cat > "$SCREENSHOTS_DIR/README.md" << 'EOF'
# Screenshots Guide

## How to Add Screenshots

1. **Capture Screenshots**
   - Use Android Studio (Run → Tools → Screenshot)
   - Or use device screenshot (Power + Volume Down)

2. **Optimize Images**
   - Resize to max 1080px width
   - Compress using tools like TinyPNG
   - Save as PNG or JPG

3. **Naming Convention**
   - `dashboard.png` - Main dashboard
   - `weather.png` - Weather screen
   - `ai_assistant.png` - AI chat interface
   - `crop_recommend.png` - Crop recommendations
   - `profile.png` - User profile
   - `govt_schemes.png` - Government schemes

4. **Update README.md**
   Replace placeholder images with:
   ```markdown
   ![Dashboard](screenshots/dashboard.png)
   ![Weather](screenshots/weather.png)
   ![AI Assistant](screenshots/ai_assistant.png)
   ```

## Creating GIFs (Optional)

For animated demonstrations:

1. Record screen using Android Studio
2. Convert to GIF using:
   - ezgif.com (online)
   - ffmpeg (command line)
   ```bash
   ffmpeg -i screen_recording.mp4 -vf "scale=480:-1" output.gif
   ```

## Recommended Dimensions

- Screenshots: 1080x2400 (or actual device resolution)
- GIFs: 480x1067 (compressed for README)
- Max file size: 5MB per image

## Example Layout

```markdown
<div align="center">
  <img src="screenshots/dashboard.png" width="250" />
  <img src="screenshots/weather.png" width="250" />
  <img src="screenshots/ai_assistant.png" width="250" />
</div>
```
EOF
    
    echo "✅ Template created: $SCREENSHOTS_DIR/README.md"
    echo ""
}

# Function to validate README
validate_readme() {
    echo ""
    echo "🔍 Validating README images..."
    
    # Check for image references in README
    if grep -q "!\[" "$README_FILE"; then
        echo "✅ Image syntax found in README"
        
        # List image references
        echo ""
        echo "📸 Image references in README:"
        grep "!\[" "$README_FILE" | sed 's/.*!\[/  - /'
    else
        echo "⚠️  No image references found in README"
    fi
    
    echo ""
    echo "💡 To add images to README:"
    echo "   1. Add images to screenshots/ folder"
    echo "   2. Reference them using: ![Alt Text](screenshots/image.png)"
    echo ""
}

# Main loop
while true; do
    show_menu
    
    case $choice in
        1)
            add_placeholders
            ;;
        2)
            list_screenshots
            ;;
        3)
            generate_template
            ;;
        4)
            validate_readme
            ;;
        5)
            echo ""
            echo "👋 Goodbye!"
            exit 0
            ;;
        *)
            echo "❌ Invalid choice. Please enter 1-5."
            echo ""
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
    clear
done
