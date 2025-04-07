# Marstek Modbus2MQTT Bridge

Dieses Add-on verbindet deinen **Marstek Venus / Duravolt Heimspeicher** mit **Home Assistant** über **Modbus TCP** – z. B. via **Elfin EW11 (RS485 zu WLAN)** – und überträgt die Daten über **MQTT**, inklusive MQTT Discovery für automatische Erkennung.

Es basiert auf [`modbus2mqtt`](https://github.com/daniel-sanders/modbus2mqtt) und ist vollständig über das Home Assistant UI konfigurierbar.

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

## 🔋 Unterstützte Sensoren (Auszug)

- `battery_soc` → Ladezustand in %
- `battery_power` → Lade-/Entladeleistung in Watt
- `battery_voltage` → Batteriespannung
- `ac_power`, `ac_current`, `ac_voltage` → Netzseitige Messungen
- `soc_target`, `force_charge_power`, `force_discharge_power` → Steuerbar via MQTT Topic

---

## 🧠 MQTT Topics

| Funktion                       | Topic                                 |
|-------------------------------|---------------------------------------|
| SoC lesen                     | `marstek/battery_soc/state`           |
| SoC-Ziel setzen               | `marstek/soc_target/set`              |
| Ladeleistung setzen           | `marstek/force_charge_power/set`      |
| Entladeleistung setzen        | `marstek/force_discharge_power/set`   |

→ Automatisch via **Home Assistant MQTT Discovery** erkannt.

---

## 🧰 RS485 Verkabelung Marstek Venus → Elfin EW11

📸 **Bilder:**  
![Verkabelung](https://tweakers.net/i/HxQPVBgzaFSlPcM7S-LYZgotdPQ=/800x/filters:strip_icc():strip_exif()/f/image/4OWec9NjB4y9qqK5ucBPodmY.jpg?f=fotoalbum_large)

![Verkabelung]([https://tweakers.net/i/HxQPVBgzaFSlPcM7S-LYZgotdPQ=/800x/filters:strip_icc():strip_exif()/f/image/4OWec9NjB4y9qqK5ucBPodmY.jpg?f=fotoalbum_large]
**Stecken Sie das Kabel wie folgt:**

| Venus Pin | Bedeutung        | Elfin EW11 Pin |
|-----------|------------------|----------------|
| 1 (Rot)   | RS485 A          | 1              |
| 2 (Schwarz) | RS485 B        | 4              |
| 3 (Schwarz) | Nicht verwendet| –              |
| 4 (leer)  | –                | –              |
| 5 (Schwarz) | +5V Strom      | 2              |
| 6 (Schwarz) | GND            | 3              |

> ⚠️ **Hinweis:** Der Elfin EW11 wird direkt über die RS485-Leitung mit 5V versorgt – keine externe Stromversorgung notwendig!

---

## ⚙️ Add-on Technologie

- Eigenes Docker-Image basierend auf Alpine
- Automatische `config.yaml`-Generierung via UI
- Verwendet [`modbus2mqtt`](https://github.com/daniel-sanders/modbus2mqtt)

---

## 👨‍🔧 Maintainer

> Erstellt von [kleimj1](https://github.com/kleimj1) – Feedback willkommen!

---

Viel Spaß beim Energiemanagement mit Home Assistant + Marstek 💚⚡
