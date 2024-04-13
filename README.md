# Da Hood Anti-Exploit Script

This Lua script is designed to prevent certain exploits in the game "Da Hood" on Roblox. It hooks into Roblox's scripting environment to intercept and prevent specific actions that could potentially exploit or disrupt gameplay.

## Features

- **Flag Blocking**: Prevents specific flags from being fired to the server, which could indicate attempts to exploit the game.
- **Anti-Crash**: Protects against certain types of crashing attempts by overriding functions that may lead to crashes.
- **Humanoid Property Protection**: Blocks attempts to set specific properties (`WalkSpeed` and `JumpPower`) of Humanoid instances.

## Usage

1. **Autoexec**: Ensure this script is placed in your game's autoexec script. This ensures that it runs automatically when the game starts.

2. **Configure Flags**: Modify the `Flags` table in the script to include any additional flags you want to block.

3. **Deploy**: Once configured, deploy the script to your game's server-side scripts.

## Important Notes

- This script is tailored specifically for the "Da Hood" game on Roblox (Place ID: 2788229376). Ensure you are using it in the correct environment.
- It's important to periodically review and update the script to adapt to new exploits or changes in the game's environment.
- While this script can mitigate certain exploits, it's not foolproof. Constant vigilance and monitoring for new exploits are recommended.

## Credits

This script was created by gazakov. Feel free to modify and distribute it.
