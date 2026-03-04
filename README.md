# RTL Striker - Enhanced WiFi Attack Tool
**Enhanced by Kakuzu (Discord: kakuzu_f0 | Telegram: kakuzu_f0)**

Based on: https://github.com/gorebrau/delfyRTL

## Overview
Enhanced version of **delfyRTL** with major improvements and bug fixes for **Flipper Zero + BW16 (RTL8720DN)** module.

**Key Improvements:**
- 🔧 **Bug fixes** - Buffer overflow vulnerabilities patched
- ⏳ **Loading animation** - Visual feedback during WiFi scans  
- 📱 **Enhanced features** - 12 portal templates, 3 beacon packs

### **Loading Animation Demo**
![Searching Animation](Searching.gif)
*Visual feedback during WiFi network scanning*

**Attacks:**
- **Deauthentication** - Disconnect clients
- **Evil Portal** - 12 modern templates  
- **Beacon Flood** - 3 themed packs

### **Features:**

**Evil Portal Templates (12):**
- Social Media: Facebook, Instagram, TikTok
- Streaming: Netflix, YouTube
- Tech Giants: Apple, Amazon  
- French ISPs: Orange, Free, SFR, Bouygues
- Default template

**Beacon Flood Packs (3):**
- Custom AP Beacon - Your SSID
- Random AP Beacon - Auto-generated
- RickRoll AP Beacon - Classic theme

---

## Hardware
**BW16 (RTL8720DN) ↔ Flipper Zero:**

| BW16 | Flipper Zero |
|------|--------------|
| 5V   | (1) 5V       |
| GND  | (8) GND      |
| RX1  | (13) TX      |
| TX1  | (14) RX      |

*Use TX1/RX1 port to avoid SD card conflicts.*

---

## Requirements
- **Flipper Zero** (Momentum)
- **BW16 (RTL8720DN)** WiFi module
- Connection wires

---

## Installation

```bash
git clone https://github.com/kakuzu-f0/rtl-striker.git
cd rtl-striker
build.bat
```

Copy `dist/rtl_striker.fap` → `apps/Tools/` on SD card, reboot, and find **RTL Striker** in Tools menu.

---

## Usage

**Evil Portal:** Scan WiFi → Select target → Choose template → Launch

**Beacon Flood:** Send Beacon → Choose pack (Custom/Random/RickRoll)

---

## Disclaimer
**Educational & authorized security testing only.** 

---

## License
MIT License - Enhanced by Kakuzu
