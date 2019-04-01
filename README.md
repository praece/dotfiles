# Praece dotfiles

## Setup
1. Install zsh
	- If you wait until you've installed brew, you can use brew install zsh
	- Set zsh as your default shell `chsh -s $(which zsh)`
2. Install oh-my-zsh
	- Install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
3. Install all apps
	- Postgres
	- Sublime (and Package Control for Sublime)
	- iTerm
4. Install homebrew and apps
	- Use homebrew to install nginx, node, and npm
		- Check out or create your own branch of the dotfiles and create an .npmrc file which should look contain the line:
			- prefix=/Users/[your username]/.npm-packages
	- nginx - set to run on startup (instructions in http://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)
		- generate two ssl certs in /usr/local/etc/nginx/ssl/dev
		  ```
			openssl req \
			    -newkey rsa:2048 \
			    -x509 \
			    -nodes \
			    -keyout mobile.key \
			    -new \
			    -out mobile.crt \
			    -subj /CN="*.mobile.dev" \
			    -reqexts SAN \
			    -extensions SAN \
			    -config <(cat /System/Library/OpenSSL/openssl.cnf \
				<(printf '[SAN]\nsubjectAltName=DNS:*.mobile.dev')) \
			    -sha256 \
			    -days 3650
		  ```
		  ```
			openssl req \
			    -newkey rsa:2048 \
			    -x509 \
			    -nodes \
			    -keyout web.key \
			    -new \
			    -out web.crt \
			    -subj /CN="*.web.dev" \
			    -reqexts SAN \
			    -extensions SAN \
			    -config <(cat /System/Library/OpenSSL/openssl.cnf \
				<(printf '[SAN]\nsubjectAltName=DNS:*.web.dev')) \
			    -sha256 \
			    -days 3650
		  ```
		- trust the two ssl certs you generated
			- Navigate to /usr/local/etc/nginx/ssl in finder. Double click the .crt files, this will open Keychain Access (might take a second). You might need to select a keychain to add the certificates to (select login). Double click *.mobile.dev and *.web.dev, open Trust, and select "Always Trust" for "when using this certificate." You will need to enter your password when you close this window to confirm the change.
		- Add "include sites-enabled/*;" in the http section of nginx.conf.
		- You might need to create sites-available and sites-enabled folders inside /usr/local/etc/nginx if they don't already exist
		- sudo nginx -s reload
	- brew install dnsmasq - set to run on startup (instructions displayed upon install)
5. Clone this project into a folder called "config" in your home directory
6. Run install scripts using `sudo sh [script]` (You will need to navigate into the install_scripts directory to do this)
	- install - create symlinks
		- sudo nginx -s reload (now that you've created symlinks, we need to restart nginx)
	- keyboard_shortcuts - will need to be re-run if you change the keyboard shortcuts in the settings
	- osx - a set of sane defaults for osx
7. Tell iterm to use com.googlecode.iterm2.plist in preferences (iTerm -> Preferences -> General -> Load preferences from a custom folder or URL -> Set this to "~/config")
8. Dev env installs
	- Node
	- NPM
9. npm install -g (as applicable, you may not need all of these. Organized by general types of apps that require each)
10. install latest python, pip and pipenv


## Other Apps
- Hummingbird window movement manager
- Spectable window manager
- Android Studio
- xcode
- Parallels if needed
- GIMP
- Chrome
- Postico
- Postman
