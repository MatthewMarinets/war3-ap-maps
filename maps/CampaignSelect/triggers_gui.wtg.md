version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Archipelago | False |
| 1 | Mission Select | False |
| 2 | Markets | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |

# Triggers
## fileio
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_config
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## heroes
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## debug
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## zoom
- enabled: True
- category: [0] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## mission_select_init
- enabled: True
- category: [1] Mission Select
- starts off: False
- is custom text: True
- run on map init: True
```description

```
### Functions


## Aesthetics
- enabled: True
- category: [1] Mission Select
- starts off: False
- is custom text: False
- run on map init: False
```description

```
### Functions
- Action SetTimeOfDay
  - param String 12.00
- Action SetTimeOfDayScalePercentBJ
  - param String 0.00
- Action CreateFogModifierRectBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player00
  - param Preset FogStateVisible
  - param Variable gg_rct_mission_select_vision
- Action CreateFogModifierRadiusLocBJ
  - param Preset EnabledDisabledEnabled
  - param Preset Player00
  - param Preset FogStateVisible
  - param Function GetUnitLoc
    - Function GetUnitLoc
      - param Variable gg_unit_haro_0007
  - param String 2048.00
- Action CreateTextTagLocBJ
  - param String TRIGSTR_012
  - param Function GetRectCenter
    - Function GetRectCenter
      - param Variable gg_rct_under_construction
  - param String 12.00
  - param String 10
  - param String 100
  - param String 100
  - param String 0.00
  - param String 100.00
- Action SetPlayerName
  - param Preset Player01
  - param String TRIGSTR_014
- Event MapInitializationEvent


## markets_init
- enabled: True
- category: [2] Markets
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions

