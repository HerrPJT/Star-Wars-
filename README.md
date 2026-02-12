# Star Wars
3D Space Battleship game (Matlab)

---

##  Table of Contents
* [Overview](#overview)
* [How to Play](#how-to-play)
* [Game Rules](#game-rules)
* [Features](#features)
* [Technical Architecture](#technical-architeture)
  
  
---
### Overview
A strategic 3D naval warfare simulation developed in MATLAB. Unlike the traditional 2D game, this version features **spacecraft** positioned in a 3D coordinate system (10x10x10 grid).

###  How to Play
1.  **Launch:** Run the main script to select your game mode and fleet spacing preferences.
2.  **Positioning:** Place your fleet manually or choose random placement. The fleet consists of five distinct spacecraft types:
    | Spacecraft | Color | Matrix ID |
    | :--- | :--- | :--- |
    | Carrier (Nave-Mãe) | Black | 5.1 |
    | Cruiser (Cruzador) | Yellow | 4.1 |
    | Destroyer (Contratorpedeiro) | Green | 3.1; 3.2 |
    | Frigate (Fragata) | Red | 2.1; 2.2; 2.3 |
    | Fighter (Caça) | Blue | 1.1; 1.2; 1.3; 1.4 |
3.  **Attacking:** On your turn, choose an axis (X, Y, or Z) and the two corresponding coordinates. Your shot will travel through the entire chosen dimension.
4.  **Victory:** The game ends when all cells of an opponent's fleet are hit.
   

### Game Rules
- The game is played on a 3D grid that's 10 
- The first player to destroy all of opponents' ships is the winner. 

##  Visual Legend
* **Red:** Hit spacecraft cells.
* **Blue:** Shots that hit empty space.
* **Profile View:** When aiming, the game provides a 2D profile view (e.g., Y-Z plane if X-axis is chosen) to assist targeting.

###  Features
* **3D Gameplay:** Battle in a three-dimensional space where shots traverse entire axes (X, Y, or Z).
* **Game Modes:** Supports both **Single Player** (against a random-firing AI) and **Multiplayer** modes.
* **Dynamic Fleet Positioning:** Options for manual placement or randomized fleet generation.
* **Advanced UI:** Includes a dedicated graphical statuswindow showing real-time stats like hits, remaining cells, and enemy fleet status.
* **Immersive Audio:** Features background music for menus/game-over and sound effects for shots and destroyed ships.
* **Match History:**  Automatically saves game results, including date, time, winner, and total moves.


### Technical Architecture

## 🛠️ Project Structure
* `menulnicial.m`: Initial menu and mode selection.
* `posicionar_frota.m` / `frota_aleatoria.m`: Fleet setup logic.
* `funcao_estruturas.m`: Core engine for building 3D ship shapes.
* `tiro.m`: Player attack logic.
* `mostrar_tabuleiro.m`: 3D visualization of the game state.
* `estado_jogo.m`: Tracks real-time statistics and ship integrity.


## Requirements & Development
* **Language:** Matlab
* **Libraries:** Only standard Matlab utilities.
* **Integrity:** This project was developed without the use of third-party source code or AI-generated logic, based on independent research of implementation algorithms.
 











