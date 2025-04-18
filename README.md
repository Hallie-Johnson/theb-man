# THE B-MAN

### 🦇 Description
- **THE B-MAN - Gameplay Trailer**: TBA

### 🖥️ Game Engine + How to Run Game
- **GameMaker** (IDE: **v2024.13.0.190** | Runtime: **v2024.13.0.238**) -- **Please play the game with the latest version of GameMaker.**
- Choose the **Windows** or **macOS** platform to run it on.

### 🕹️ Overview
- **Genre**: Action
- **Platform**: PC
- **Player Count**: Singleplayer
- **Length**: 1hr+

### 🎮 Key Points
- **THE B-WRANG**: 3 levels, 2D platformer, defeat various waves of Jester's plagiarized student projects. 
- **THE B-MOBILE**: 3 levels, avoid obstacles by navigating through 3 different lanes on the road to catch up to Meowwoman. 
- **THE B-WING**: 3 levels, fly around the Queen city and destroy all of Mr. Frozen's robots.
- **Boss Battles**: 4 levels, master the game by completing challenging levels of each level type (THE B-WRANG, THE B-MOBILE, THE B-WING).
- **Save File Functionality**: Auto-saving feature implemented to allow players to exit the game and come back later.
- **Upgrades**: Collect up to 27 B-XP pickups throughout the levels. Use collected B-XP to upgrade the B-Man's academic weapons.
- **Customizable Decrypter Questions**: Questions are pulled from a JSON file, allowing users to add up to 27 custom questions. Questions are located in the *datafiles* folder of the project.
- **Index**: Refer to the index to learn more about the 20 characters, items, and academic weapons in the game.
- **Tutorials**: Complete interactive tutorials for the THE B-WRANG, THE B-MOBILE, THE B-WING, and Decrypter to learn the game.
- **Cutscenes**: Enter the world of the B-Man with pre-generated cutscenes.
- **Debug Console**: Activate cheat codes with simple commands.

---

### 🎯 Game Guide
- Upon entering the game, you must **complete all tutorial levels** to unlock the main levels. If you need help in any level, you can pause the game and click the *Help* button to get level information.
- **THE B-WRANG Guide**
    - Objective: Avoid losing your health and survive the waves of enemies. If you run out of stamina by sprinting and/or punching, B-Man will need to rest and will be vulnerable to attacks until his stamina is restored.
    - Controls:
        - **[W]** - Jump
        - **[D]** - Move Left
        - **[A]** - Move Right
        - **[SHIFT] + [A] or [D]** - Sprint
        - **[LEFT MOUSE BUTTON - LMB]** - Punch
        - **[RIGHT MOUSE BUTTON - RMB] + [Aim with Mouse]** - Throw THE B-WRANG
    - Hazards:
        - **Jester Fighter Bot**: Deals *medium* damage to the player upon collision.
        - **Jester Ranged Bot**: *Fires projectiles* at the player and deals damage upon collision.
        - **Jester Tank Bot**: Deals *high* damage to the player upon collision.
    - Pickups:
        - **B-XP**: Collect a maximum of 3 in each level to upgrade the B-Man.
    - Tips:
        - **Upgrades Count**: THE B-WRANGs do not decrease your stamina and still cause damage. Prioritize upgrading THE B-WRANG count.
- **THE B-MOBILE Guide**
    - Objective: Dodge Cat Traps and obstacles and get to Meowwoman. Cat Traps, which look like an 'X' will deplete your health. Traffic cones are obstacles that will reduce your distance to Meowwoman. You must use your boost to reach Meowwoman in time.
    - Controls:
        - **[W]** - Move Up
        - **[S]** - Move Down
        - **[SHIFT]** - Boost
    - Hazards:
        - **Traffic Cones**: Increases the distance between the THE B-MOBILE and Meowwoman, but *does not* deal any health damage.
        - **Cat Traps**: Decreases the THE B-MOBILE's health, but *does not* affect distance from the THE B-MOBILE to Meowwoman.
    - Pickups:
        - **B-XP**: Collect a maximum of 3 in each level to upgrade the THE B-MOBILE.
        - **Boost**: Collect boost pickups to replenish boost.
    - Tips:
        - **Consider the Consequences**: Driving can become difficult with faster speeds. Consider the options of hitting a traffic cone versus hitting an Cat Trap. If you are low on health, hit a traffic cone. If you are high on health, hit an Cat Trap.
        - **Do Not Follow the Leader**: When Meowwoman is in sight, do not follow her movements. She will avoid traffic cones, but not Cat Traps, thus following her exactly might result in hitting Abt Traps and losing health.
        - **Center Field**: When switching lanes, try to get back to the center lane to easily avoid hazards.
        - **Boost Carefully**: It's fun to boost, but boosting into to many obstacles will hinder progress. Boost when you feel safe to do so, not just because you can.
- **THE B-WING Guide**
    - Objective: Eliminate all enemies within the timeframe. When boosting, you cannot move up down due to the high speed of the THE B-WING. Upon getting defeated, enemies will drop power ups to restore your boost and health. In order to fire at enemies, the player will need to face the enemy in order to shoot as the THE B-WING cannot shoot targets behind itself.
    - Controls:
        - **[W]** - Move Up
        - **[S]** - Move Down
        - **[A]** - Move Right
        - **[D]** - Move Left
        - **[SHIFT]** - Boost
        - **[LEFT MOUSE BUTTON - LMB] + [Aim with Mouse]** - Shoot
    - Hazards:
        - **Frost Fighter**: *Fires projectiles* at the player and causes damage to the THE B-WING upon collision.
    - Pickups:
        - **B-XP**: Collect a maximum of 3 in each level to upgrade the THE B-MOBILE.
        - **Boost**: Collect boost pickups to replenish boost.
        - **Health**: Collect health pickups to replenish health.
    - Tips:
        - **Slow and Steady**: Going fast is great to reach enemies within the timeframe, but take it slow when in combat to aim better.
        - **Ready, Aim, Fire**: Make sure to face the enemy to fire. The THE B-WING cannot fire at enemies behind itself.

---

### 💾 Save File Information
This game uses an auto-save feature. Progress is saved upon upgrading your character or successful completion of a level. To manually save, refer to the in-game settings.

Windows Save File location: **C:\Users\[YOUR USERNAME]\AppData\Local\Summer_Game**

---

### ⭐ Cheat Codes
Cheat codes are handled with a debug console. You can access the debug console by pressing the **[HOME]** button on your keyboard. Below are the commands you can use. Do not include the quotation (") marks.
- "**save**" - Saves your current game.
- "**upgrade 0**" - Removes all upgrades.
- "**upgrade 1**" - Gives the player all upgrades.
- "**tutorial 0**" - Sets all tutorials as incomplete.
- "**tutorial 1**" - Sets all tutorials as complete.
- "**wrang 0**" - Sets all THE B-WRANG levels as incomplete and removes all B-XP found for THE B-WRANG levels.
- "**wrang 1**" - Sets all THE B-WRANG levels as completes and all B-XP is found.
- "**mobile 0**" - Sets all THE B-MOBILE levels as incomplete and removes all B-XP found for THE B-MOBILE levels.
- "**mobile 1**" - Sets all THE B-MOBILE levels as completes and all B-XP is found.
- "**wing 0**" - Sets all THE B-WING levels as incomplete and removes all B-XP found for THE B-WING levels.
- "**wing 1**" - Sets all THE B-WING levels as completes and all B-XP is found.
- "**sfx 0**" - Turns off sound effects.
- "**sfx 1**" - Turns on sound effects.
- "**music 0**" - Turns off music.
- "**music 1**" - Turns on music.
- "**fullscreen 0**" - Turns off fullscreen/sets game into windowed mode.
- "**fullscreen 1**" - Turns on fullscreen.
- "**upgrade points 0**" - Gives maximum B-XP (27).
- "**upgrade points 1**" - Removes all B-XP.
- "**mission 0**" - Works when in-game. Auto-lose the mission.
- "**mission 1**" - Works when in-game. Auto-win the mission.
- "**health**" - Works when in-game. Gives 10000 health to the player.
- "**boost**" - Works when in-game. Gives 10000 boost to the player.
- "**stamina**" - Works when in-game. Gives 10000 stamina to the player.
- "**skip wave**" - Works only in THE B-WRANG levels. Skips the current wave.
- "**[ROOM NAME]**" - Takes you to the room you want to go. Here are the possible rooms:
    - **Misc Rooms**
        - rm_SaveFiles - Save File screen at the start of the game.
        - rm_Title - Title screen.
    - **Cutscene Rooms**
        - rm_Cutscene_1 - Introduction cutscene.
        - rm_Cutscene_2 - Post Meowwoman boss battle cutscene.
        - rm_Cutscene_3 - Post Mr. Frozen boss battle cutscene.
        - rm_Cutscene_4 - Pre Jester boss battle cutscene.
        - rm_Cutscene_5 - Post Jester boss battle cutscene.
        - rm_Cutscene_6 - Ending cutscene.
    - **Pre-Cutscene Rooms**
        - rm_Pre_Battle1 - Story screen before THE B-WRANG level 1.
        - rm_Pre_Battle2 - Story screen before THE B-WRANG level 2.
        - rm_Pre_Battle3 - Story screen before THE B-WRANG level 3.
        - rm_Pre_Battle4 - Story screen before THE B-WRANG level 4.
        - rm_Pre_Road1 - Story screen before THE B-MOBILE level 1.
        - rm_Pre_Road2 - Story screen before THE B-MOBILE level 2.
        - rm_Pre_Road3 - Story screen before THE B-MOBILE level 3.
        - rm_Pre_Road4 - Story screen before THE B-MOBILE level 4.
        - rm_Pre_Air1 - Story screen before THE B-WING level 1.
        - rm_Pre_Air2 - Story screen before THE B-WING level 2.
        - rm_Pre_Air3 - Story screen before THE B-WING level 3.
        - rm_Pre_Air4 - Story screen before THE B-WING level 4.
    - **Main Hub Rooms**
        - rm_IconPlayer - Player upgrade screen.
        - rm_IconIndex - Index screen.
        - rm_IconHome - Home level select screen.
        - rm_IconHelp - Tutorial select screen.
        - rm_IconSettings - Settings screen.
    - **THE B-WRANG Rooms**
        - rm_Battle0 - THE B-WRANG tutorial.
        - rm_Battle1 - THE B-WRANG level 1.
        - rm_Battle2 - THE B-WRANG level 2.
        - rm_Battle3 - THE B-WRANG level 3.
        - rm_Battle4 - THE B-WRANG level 4.
        - rm_Battle5 - THE B-WRANG level 5 (Jester Boss Battle).
    - **THE B-MOBILE Rooms**
        - rm_Road0 - THE B-MOBILE tutorial.
        - rm_Road1 - THE B-MOBILE level 1.
        - rm_Road2 - THE B-MOBILE level 2.
        - rm_Road3 - THE B-MOBILE level 3.
        - rm_Road4 - THE B-MOBILE level 4 (Meowwoman Boss Battle).
    - **THE B-WING Rooms**
        - rm_Air0 - THE B-WING tutorial.
        - rm_Air1 - THE B-WING level 1.
        - rm_Air2 - THE B-WING level 2.
        - rm_Air3 - THE B-WING level 3.
        - rm_Air4 - THE B-WING level 4 (Mr. Frozen Boss Battle).

---

### ✨ Credits

#### Software
- Game Engine: **[GameMaker Studio 2](https://gamemaker.io/en)**
- Cutscene Animation Software:  **[Mine-imator](https://www.mineimator.com/)**
- Editing Software: **[DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve)**
- Artwork Software: **[FireAlpaca](https://firealpaca.com/)**

#### Other
- Game Text Font: **[Quadriana](https://fontesk.com/quadriana-font/)**
- Game Artwork: **Hallie Johnson**
- Cutscene Animation: **Hallie Johnson**

#### Music
- *The Harrowing, City Lanes, Ions Above, Chiptune Roller Derby, Metro Alchemist, Run at Midnight, Synthwave C, Cruising the Skyline, Driving to the Future, Winds of Tek, Dystopian Paradise, Metro Tank, Drifting to the Finish Line, Synthwave I, Phantom of the Night, Positive Day, A Meeting of Genres, Anthem for Tomorrow, Bright Future Ahead, Just Breathe* -- **TeknoAXE** ([teknoaxke.com](https://teknoaxe.com/Home.php)) Licensed under Creative Commons: By Attribution 4.0 https://creativecommons.org/licenses/by/4.0/

#### Sounds
[Creative Commons 0 License](https://creativecommons.org/publicdomain/zero/1.0/)
- *Nitro Activation* by **strexet** -- https://freesound.org/s/404333/ -- License: Creative Commons 0 
- *machinegun-one-shot.wav* by **DeltaCode** -- https://freesound.org/s/668347/ -- License: Creative Commons 0 
- *Futuristic shot* by **BloodPixelHero** -- https://freesound.org/s/572621/ -- License: Creative Commons 0 
- *explosion13.wav* by **V-ktor** -- https://freesound.org/s/435416/ -- License: Creative Commons 0 
- *Distant car tire screetch* by **Sadiquecat** -- https://freesound.org/s/737192/ -- License: Creative Commons 0 
- *Fast Woosh - RicRob -  Helm - 12.wav* by **RuidosoSoundFX** -- https://freesound.org/s/507161/ -- License: Creative Commons 0 
- *small-metal-hit-11.wav* by **newagesoup** -- https://freesound.org/s/337872/ -- License: Creative Commons 0 
- *VSH-25-knuckle-thump-metal pipe-short.wav* by **newagesoup** -- https://freesound.org/s/369099/ -- License: Creative Commons 0 
- *quick woosh* by **florianreichelt** -- https://freesound.org/s/683101/ -- License: Creative Commons 0 
- *Damage sound effect* by **Raclure** -- https://freesound.org/s/458867/ -- License: Creative Commons 0 
- *PUNCH-BOXING-05-REVERB.wav* by **newagesoup** -- https://freesound.org/s/348246/ -- License: Creative Commons 0 
- *Metal Hit* by **BenjaminNelan** -- https://freesound.org/s/410364/ -- License: Creative Commons 0
- *success_02.wav* by **Kenneth_Cooney** -- https://freesound.org/s/463067/ -- License: Creative Commons 0
- *Powerup/success.wav* by **GabrielAraujo** -- https://freesound.org/s/242501/ -- License: Creative Commons 0
- *Snap Click 07.wav* by **ironcross32** -- https://freesound.org/s/582906/ -- License: Creative Commons 0
- *Ui sounds* - **Shimmering success** by Philip_Berger -- https://freesound.org/s/648212/ -- License: Creative Commons 0
