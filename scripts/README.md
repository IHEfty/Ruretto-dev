# $1Gambler

**$1Gambler** is a simple and interactive gambling game built using the [**Tender**](https://github.com/2dprototype/tender). Players can place bets and experience the thrill of gambling in a user-friendly environment.

## Table of Contents

- [Features](#features)
- [Gameplay Overview](#gameplay-overview)
- [Code Explanation](#code-explanation)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Features

- Simple betting interface for easy gameplay.
- Quick input handling for placing bets.
- User data management to save player settings and statistics.
- Supports a variety of betting options.

## Gameplay Overview

In **$1Gambler**, players can place bets on various outcomes. The game is designed to be intuitive, with an easy-to-use interface that allows players to enter their desired bet amounts quickly. 

### Game Mechanics
- Players input their bet amounts using the number keys.
- The game confirms the bets and determines outcomes based on random results.
- User data is saved, allowing players to pick up where they left off.

## Code Explanation

### Key Code Snippets

Here's a brief overview of the main functionalities in the **$1gambler.td** file.

```tender
// Sample code snippet for handling bets
var chars = "1234567890"
var n = ""

export fn(e, cm) {
    // Capture number input and reset after 2 seconds
    if includes(chars, e.rune) {
        n += string(e.rune) 
        go(fn(){
            times.sleep(times.second*2)
            n = ""
        })
    }
    // Handle input confirmation for placing bets
    else if e.code == 40 {
        a := int(n)
        if is_int(a) {
            // Logic for placing a bet based on input
            n = ""
        }
    }
    // Reset on invalid input
    else {
        n = ""
    }
}
```

- **Input Handling**: The function captures user input for betting amounts and manages timeouts for input resets.
- **Bet Confirmation**: When the player confirms their bet (usually by pressing Enter), the game processes the bet and checks if it's valid.

### User Data Management

```tender
import "fs"
import "os"
import "path"

var user_dir = path.join(os.getenv("appdata"), "$1Gambler")
var user_file = path.join(user_dir, "userdata.dat")

if !fs.exists(user_dir) {
    fs.mkdir(user_dir)
}

fs.writefile(user_file, `{"betting_scale":1,"betting_chips":[],"points":1}`)
```

- **Directory Creation**: The game creates a user-specific directory to store user data.
- **Data Initialization**: Sets up a default user data file with initial values for betting scale and points.

## Installation

To install **$1Gambler**, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/IHEfty/Ruretto-dev.git
   cd Ruretto-dev
   cd scripts
   ```

2. Ensure you have the Tender interpreter installed.

3. Run the game:

   ```bash
   tender $1gambler.td
   ```

## Usage

1. Launch the game using the Tender interpreter.
2. Enter your desired bet amount using the number keys.
3. Press Enter to confirm your bet.
4. Your game progress and settings will be saved automatically for your next session.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
