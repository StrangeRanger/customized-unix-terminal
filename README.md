# Mac Terminal Style Config
[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)

This repository contains files that are used to configure the style, look, and functionality of the mac terminal: 
- vim syntax highlighting; through better vim
- terminal syntax highlighting
- terminal profile
- etc.

These are configurations/styles that I use on my own mac, so don't expect to be too much options when it comes to styles and looks. Each sction has a README.md that contains the instructures on how to set everything up manually.

## Automatic Setup
I have added an automatic setup script that you can use to easily set everything up. It will provide you options in what you want to install. You can see what it looks like below:

# Notes
## Automatic Setup Notes
The automatic setup script is somewhat of a work in progress. The main part that needs to be worked on is the functions that are used to catch an error that can occure due to xcode being install first and the terms and conditions not being accepted, before the command line tools are installed. Considering this, the script should run perfectly as long as you don't do what was mentioned in the previous sentence.
