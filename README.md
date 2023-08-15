# AutoHotKey
All the AutoHotKey scripts I use.

## Editing
Many of the scripts contain variables, such as file paths, that can be replaced.

Hotkeys can be changed by following the AHK documentation for keylists (`https://www.autohotkey.com/docs/v2/KeyList.htm`). I may eventually change hotkeys to variables in order to simplify this process.

When using the remap along another program, place a `#HotIf` between the two sections (see `line 16` of `master.ahk`) and use the original key as opposed to the remapped version. Also use the full name version as opposed to the single character version of a key (`LAlt` instead of `<!`)

If lost first use the AHK documentation (`https://www.autohotkey.com/docs/v2/`) and Google (or your preferred search engine), if all else fails feel free to email me at `connordeleo@gmail.com` and I will respond as soon as I am able to.

## Coming Soon
### Software Specific
Terminal:
- `LWin+c`: Pull up preferred terminal window or pull forward
- `LWin+Shift+c`: Select preferred terminal based on found terminals

## Software Specific
### bendTech.ahk
Features:
- `LWin+b`: Open Bend-Tech or pull the program forward
- `Ctrl+Shift+s`: Clicks through menus automatically in order to save the file anew
- `Ctrl+Shift+z`: Replaces the strange redo hotkey put in place by Bend-Tech (`Ctrl+h`) with the standard
- `Ctrl+l`: Place a straight piece of tubing
- `Ctrl+b`: Open the bent tubing menu
- `Ctrl+Delete`: Key instead of the on screen button
- `Ctrl+d`: Place a dimension

### davinciResolve.ahk
Features:
- `LWin+d`: Open Davinci Resolve or pull the program forward
- `Ctrl+Shift+c`: Cut the current location on the timeline (Works on any tab, recommended for the edit page)

### speedCrunch.ahk
Features:
- `F16`: Open SpeedCrunch or pull the program forward

### fileExplorer.ahk
Features:
- `LWin+f`: Open the `D:\` drive via the command prompt or pull window forward

### audacity.ahk
Features:
- `LWin+a`: Open Audacity or pull the program forward
- `LWin+n`: Open audo studio's noise removal AI, `https://audo.ai/noise-removal`, with the default browser

## Personal AHK
### remap.ahk
Features (Used for alternative keyboard layouts):
- `LWin`: Replaces `LWin` with `LAlt`
- `LAlt`: Replaces `LAlt` with `LWin`

### master.ahk
Features (Combines multiple softwares and remaps):
- All bendTech.ahk features
- All davinciResolve.ahk features
- All speedCrunch.ahk features
- All fileExplorer.ahk features
- All audacity.ahk features
- All remap.ahk features