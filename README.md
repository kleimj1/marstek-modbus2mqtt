# Marstek Modbus2MQTT Add-on

Dieses Add-on verbindet deinen Marstek Venus / Duravolt Heimspeicher mit Home Assistant über Modbus (via Elfin EW11) und veröffentlicht die Daten über MQTT – inklusive automatischer MQTT Discovery.

## 🔧 Voraussetzungen

- Home Assistant OS (HassOS) mit Supervisor
- MQTT Broker (z. B. Mosquitto)
- Elfin EW11 RS485-WiFi-Adapter
- Verbindungskabel RS485 → Marstek:
  - JST XH 2.54, 6-polig, typisches Mapping:
    - Pin 1 (Rot) → RS485 A (Elfin: Pin 1)
    - Pin 2 (Schwarz) → RS485 B (Elfin: Pin 4)
    - Pin 5 (Schwarz) → +5V (Elfin: Pin 2)
    - Pin 6 (Schwarz) → GND (Elfin: Pin 3)

## 🧰 Installation

1. Erstelle im Home Assistant Ordner `/config/addons/marstek_modbus2mqtt`
2. Kopiere diese Dateien dorthin:
   - `config.json`
   - `config.yaml`
3. Gehe in Home Assistant:
   - Einstellungen → Add-ons → „⋮“ → Nach Add-ons suchen / Neu laden
4. Installiere das Add-on
5. Konfiguriere im UI:
   - IP des Elfin EW11
   - MQTT-Broker Host/IP
6. Starte das Add-on

## 🔎 Was wird veröffentlicht?

- Batterie-SoC
- Lade-/Entladeleistung
- Spannung, Strom (DC & AC)
- MQTT Topics mit automatischer Home Assistant-Erkennung

## ✏️ Beispielhafte MQTT Topics

- `marstek/battery_soc/state`
- `marstek/soc_target/set` (zum Schreiben)

## 💡 Weitere Infos

Projekt basiert auf [`modbus2mqtt`](https://github.com/daniel-sanders/modbus2mqtt) von Daniel Sanders.
