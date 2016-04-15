# Praece dotfiles

## Setup
1. Install zsh
2. Install oh-my-zsh
3. Install all apps
	- Postgres
	- Sublime
	- iTerm
4. Install homebrew and apps
	- Use homebrew to install nginx, node, and npm
	- nginx - set to run on startup (instructions in http://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)
		- generate two ssl certs in /usr/local/etc/nginx/ssl
			- `sudo openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout mobile.key -out mobile.crt`
				- You can just skip all of the questions except for servername, which should be `*.mobile.dev`
			- `sudo openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout web.key -out web.crt`
				- Skip all questions except servername, which should be `*.web.dev`
		- trust the two ssl certs you generated
			- Navigate to /usr/local/etc/nginx/ssl in finder. Double click the .crt files, this will open Keychain Access (might take a second). Double click *.mobile.dev and *.web.dev, open Trust, and select "Always Trust" for "when using this certificate." You will need to enter your password when you close this window to confirm the change.
	- dnsmasq - set to run on startup (instructions displayed upon install)
5. Clone this project into a folder called "config" in your home directory
6. Run install scripts using `sudo sh [script]`
	- install - create symlinks
	- keyboard_shortcuts - will need to be re-run if you change the keyboard shortcuts in the settings
	- osx - a set of sane defaults for osx
7. Tell iterm to use com.googlecode.iterm2.plist in preferences (iTerm -> Preferences -> General -> Load preferences from a custom folder or URL -> Set this to "~/config")
8. Dev env installs
	- Node
	- NPM


## Other Apps
- Flux
- ShiftIt
- HyperDock
- GIMP
- Chrome
- Drive
- Inkscape
- Postico
- Textual
- Selenium 
	- Download version 2.43.0 from http://selenium-release.storage.googleapis.com/index.html?path=2.43/
	- Download latest version of chromedriver from http://chromedriver.storage.googleapis.com/index.html
	- Unzip chromedriver, and place both files in /Applications/selenium
