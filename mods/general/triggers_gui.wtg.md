version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Initialization | False |
| 1 | Archipelago | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |
| File_Ability_List | integer | 10 | . |
| original_descriptions | string | 10 | . |
| read_lines | string | 10 | . |
| NUM_FILE_ABILITIES | integer | . | 10 |
| last_filename | string | . |  |

# Triggers
## Melee Initialization
- enabled: True
- category: [0] Initialization
- starts off: False
- is custom text: False
- run on map init: False
```description
Default melee game initialization for all players
```
### Functions
- Event MapInitializationEvent
- Action MeleeStartingVisibility
- Action MeleeStartingHeroLimit
- Action MeleeStartingResources
- Action MeleeClearExcessUnits


## fileio
- enabled: True
- category: [1] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## status
- enabled: True
- category: [1] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## item_locations
- enabled: True
- category: [1] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions


## map_info
- enabled: True
- category: [1] Archipelago
- starts off: False
- is custom text: True
- run on map init: False
```description

```
### Functions

