# bostra-powerups
 Power-ups for MZ-skills in a fallout-eqsue style

      ____  ____  _______________  ___ 
   / __ )/ __ \/ ___/_  __/ __ \/   |
  / __  / / / /\__ \ / / / /_/ / /| |
 / /_/ / /_/ /___/ // / / _, _/ ___ |
/_____/\____//____//_/ /_/ |_/_/  |_|
                                     
Add to your qb-core>shared>items.lua file
```lua
    ['book_batterup']     = { ['name'] = 'book_batterup', ['label'] = 'Athletics and You', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_batterup.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'A strange book with an athlete on the cover...' },
    ['book_brawler']      = { ['name'] = 'book_brawler', ['label'] = 'Brutal Brawlers', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_brawler.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'A fancy book with sexy sculpted bodies on the cover...' },
    ['book_clothing']     = { ['name'] = 'book_clothing', ['label'] = 'The Life and Times of Anna Wintour', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_clothing.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'A chique fashion editorial biography...' },
    ['book_enforcer']     = { ['name'] = 'book_enforcer', ['label'] = 'The Punisher, Vol 2', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_enforcer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'A book bound with lies, and written in blood or so says the cover?' },
    ['book_heist']        = { ['name'] = 'book_heist', ['label'] = 'Make or Break, The Heist Lowdown', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_heist.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'The Book of Bad Deeds, The Cover Reads' },
    ['book_hunting']      = { ['name'] = 'book_hunting', ['label'] = 'Alpha Hunters Weekly', ['weight'] = 100,
        ['type'] = 'item', ['image'] = 'book_hunting.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true,
        ['combinable'] = nil, ['description'] = 'How To Get Away With Murder, The Zoo version...' },
    ['book_looter']       = { ['name'] = 'book_looter', ['label'] = 'Tarkov Times and Tribulations', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_looter.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,
        ['description'] = 'Finders Keepers, reads the cover' },
    ['book_mining']       = { ['name'] = 'book_mining', ['label'] = 'The Art of Mining', ['weight'] = 100,
        ['type'] = 'item', ['image'] = 'book_mining.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true,
        ['combinable'] = nil, ['description'] = 'The Variety of Ores and Oddities, engraved on the cover...' },
    ['book_techjunkie']   = { ['name'] = 'book_techjunkie', ['label'] = 'Tech For Dummies:Electronics', ['weight'] = 100,
        ['type'] = 'item', ['image'] = 'book_techjunkie.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true,
        ['combinable'] = nil, ['description'] = 'Circuitry covers the book' },
    ['book_treasurehunt'] = { ['name'] = 'book_treasurehunt', ['label'] = 'Lost, and Found Myself', ['weight'] = 100, ['type'] = 'item',
        ['image'] = 'book_treasurehunt.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true,
        ['combinable'] = nil, ['description'] = 'Treasure is best left in my pockets, The exercept on the back reads...' },
```

## Installation
1. Download the script and put it in the resources directory, ensure you have the skills dependency.
2. Add the **above** code to your qb-core>shared>items.lua file
3. Add the *following* code to your server.cfg/resouces.cfg
```
ensure bostra-powerups
```

## Troubleshooting
If you have any issues, please feel free to contact me on discord: Bostra#0001
If you are having issues with the script, please ensure you have the dependencies first, if you do and still have issues, please contact me.
Please ensure you have the listed skills within mz-skills or you change them accordingly to your own.


## Credits
-Jimathy - sourcing his animation and prop methods.
-McKlean - book images.
-MrZainRP - MZ-skills integration.

