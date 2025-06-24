#!/bin/bash

echo "🔍 IoT Device Configuration Audit - Simulation Mode"
echo "---------------------------------------------------"
echo ""

# Simulated device inventory
devices=("Camera01" "SmartPlug07" "SensorX3" "LightBulb22")

# Simulated configuration check results
for device in "${devices[@]}"; do
    echo "📦 Device: $device"

    case $device in
        "Camera01")
            echo "   • Firmware Version: v1.0.3"
            echo "   • Update Status: ❌ No updates in 2 years"
            echo "   • Credential Status: ⚠️ Uses default admin/admin"
            echo "   • Encryption: ❌ HTTP only (no TLS)"
            ;;
        "SmartPlug07")
            echo "   • Firmware Version: v3.1.0"
            echo "   • Update Status: ✅ Auto-update enabled"
            echo "   • Credential Status: ✅ Unique credentials set"
            echo "   • Encryption: ✅ MQTT over TLS"
            ;;
        "SensorX3")
            echo "   • Firmware Version: Unknown"
            echo "   • Update Status: ❌ Firmware not detected"
            echo "   • Credential Status: ❌ Hardcoded in source"
            echo "   • Encryption: ⚠️ CoAP on port 5683, no DTLS"
            ;;
        "LightBulb22")
            echo "   • Firmware Version: v2.0.0"
            echo "   • Update Status: ⚠️ Update mechanism disabled"
            echo "   • Credential Status: ✅ Unique password"
            echo "   • Encryption: ❌ Unencrypted local API"
            ;;
    esac

    echo ""
done

echo "✅ Summary Recommendations:"
echo "1. Enforce firmware update checks for all devices."
echo "2. Replace default or hardcoded credentials."
echo "3. Prefer TLS/DTLS for all communications."
echo "4. Disable open ports like 1883 (MQTT) and 5683 (CoAP) unless secured."
echo ""
echo "🔒 This is a simulated audit for learning purposes only."

