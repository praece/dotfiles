# Praece dotfiles

## Setup
1. Install zsh
2. Install oh-my-zsh
3. Install all apps
	- Postgres
	- Sublime
	- iTerm
4. Install homebrew and apps
	- nginx - set to run on startup (instructions in http://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)
		- generate and trust two ssl certs in /usr/local/etc/nginx/ssl
			- `sudo openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout mobile.key -out mobile.crt` servername `*.mobile.dev`
			- `sudo openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout web.key -out web.cr` servername `*.web.dev`
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