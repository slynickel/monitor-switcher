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
To use the utility to switch between profiles run save-current-layout.ps1 for each
monitor layout you want to have available.