# Monitor Switcher Fork

This a fork of https://sourceforge.net/projects/monitorswitcher/ which only includes
the console application. MPL license is used as that was the original license behind
the `monitorswitcher` project.

This application can be used to save and load certain monitor layouts. This is make it
much faster to switch between different types of monitor layouts compared to going
into Windows settings and changing things around. It also saves and loads monitor 
display frequencies which are a pain to adjust.

## Building
The release Visual Studio Code task will build the release version on a known path 
which is necessary for using the simple powershell menu commands.

## Running
### Generating Configuration
To use the utility to switch between profiles first run `./SimplePowerShellMenu/save-current-layout.ps1`
for each monitor layout you want to have available.
Make sure to run it from the `SimplePowerShellMenu` directory. You will be prompted to provide a filename 
to save the file as. These file names will become the menu options, underscores will be converted to spaces
to make the menu look nicer. 

### Running
From the `SimplePowerShellMenu` directory run `monitor-switch.ps1`. For each XML file you have in that 
directory a menu option will be made available to switch to that profile.

Example:
```
Select a profile to load
  0 - Both Monitors 144Hz
  1 - Both Monitors Left 60Hz Center 144Hz
  2 - Center Monitor Only 144Hz
  3 - TV Only
[0-3 or anything else to quit]:
```

Avoid selecting the current monitor layout, it can result in the display settings getting all messed up and requiring a computer restart.