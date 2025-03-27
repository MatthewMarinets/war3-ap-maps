version = TFT

# Categories
| ID  | Name | is a comment |
| --- | ---- | ------------ |
| 0 | Initialization | False |
| 1 | Archipelago | False |

# Variables
| Name | Type | Array Size | Initial Value |
| ---- | ---- | ---------- | ------------- |

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


## heroes
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

