# IncDec plugin for Geany

IncDec is a plugin for Geany that provides shortcuts to increment an decrement number at the cursor

## Usage

By default, typing **Shift-+** will increment the next number, and typing **Shift--** will decrement the next number.

You can also increment and decrement number many times by typing **Shift-***. The number can be at the cursor, or to the right of the cursor (on the same line). Numbers can be negative and positive, and can be in decimal or hexadecimal format (hexadecimal number start with **0x**).

You can customize those defaults keys on the preferences, under the Keybindings tab by setting the **IncDec** keybinding.

An item **Increment or Decrement number** is also added in the **Editor Popup Menu**, it can be hidden by changing the **Plugins Preferences**.

## Installation

Download file https://github.com/scresto09/geany_incdec_plugin_standalone/archive/refs/heads/main.zip

Run:
```
./configure
make
make install
```

## Contact developers

Sylvain Cresto <scresto@gmail.com>
