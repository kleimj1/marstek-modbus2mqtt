# Marstek Modbus2MQTT Bridge

Dieses Add-on verbindet deinen **Marstek Venus / Duravolt Speicher** über **Modbus TCP (z. B. via Elfin EW11)** mit **Home Assistant** – und publiziert die Daten über **MQTT**.

Es nutzt das Open-Source-Tool [`modbus2mqtt`](https://github.com/daniel-sanders/modbus2mqtt) und macht es als **vollständig UI-konfigurierbares Add-on** für HA verfügbar.

---

## 🔌 Zu Home Assistant hinzufügen

[![Installieren in Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/kleimj1/marstek-modbus2mqtt)

---

## 🧰 Installation (nach Klick auf den Button)

1. Öffne **Einstellungen → Add-ons → Add-on-Store**
2. Scrolle nach unten zu deinem Repository: **Marstek Add-ons**
3. Klicke auf das Add-on **„Marstek Modbus2MQTT Bridge“**
4. Klicke auf **Installieren**
5. Öffne die Add-on-Konfiguration:
   - Trage die IP deines **Elfin EW11** ein (`modbus_host`)
   - Trage den MQTT-Broker ein (`mqtt_host`)
6. **Starte das Add-on**
7. Die Sensoren erscheinen automatisch via **MQTT Discovery** in Home Assistant

---

## 📡 Unterstützte Sensoren

- Batterie SoC (`%`)
- Lade-/Entladeleistung (`W`)
- Spannung / Strom (DC & AC)
- Ziel-SoC & Power über MQTT setzbar
- MQTT Topics: `marstek/<sensor>/state` & `.../set`

---

## 🔌 Elfin EW11 Verkabelung (Beispiel)

| Marstek Pin | Funktion       | Elfin Pin |
|-------------|----------------|-----------|
| Pin 1 (Rot) | RS485 A        | Pin 1     |
| Pin 2       | RS485 B        | Pin 4     |
| Pin 5       | +5V (Versorgung) | Pin 2     |
| Pin 6       | GND            | Pin 3     |

---

## ⚙️ Basistechnologie

Dieses Add-on verwendet:

- 🧠 [`modbus2mqtt`](https://github.com/daniel-sanders/modbus2mqtt) als Backend
- 🔧 Alpine-basiertes eigenes Docker-Image
- 🧾 Konfigurierbare Vorlage mit Platzhaltern (`config_template.yaml`)
- 🔄 UI-Integration via `config.json` für Host, Port etc.

---

## 👨‍🔧 Maintainer

> Erstellt von [kleimj1](https://github.com/kleimj1) – Feel free to contribute or fork!

---

**Viel Spaß beim Energiemanagement mit Home Assistant!**
