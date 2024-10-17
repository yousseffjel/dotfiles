# My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [What Macbook do I have?](#what-macbook-do-i-have)
- [OS Settings](#os-settings)
  - [Finder](#finder)
  - [Dock](#dock)
- [Homebrew](#homebrew)
- [Apps I Use Daily](#apps-i-use-daily)
  - [Quick Launching](#quick-launching)
    - [RayCast Homebrew Plugin](#raycast-homebrew-plugin)
  - [Window Management](#window-management)
  - [App Switching](#app-switching)
  - [Menu Bar Utilities](#menu-bar-utilities)
    - [Hidden Bar](#hidden-bar)
    - [System Stats Widgets](#system-stats-widgets)
  - [Web Browser](#web-browser)
    - [Arc](#arc)
- [Terminal](#terminal)
  - [Shell](#shell)
  - [Other Apps I Use In Command-Line](#other-apps-i-use-in-command-line)
  - [Load dotfiles](#load-dotfiles)
  - [Github SSH Setup](#github-ssh-setup)
- [Node.js](#nodejs)
  - [Global Modules](#global-modules)
- [VS Code](#vs-code)
  - [Font](#font)
  - [Theme/Color](#themescolor)
  - [Extensions](#extensions)
  - [Settings](#settings)
  - [Keybindings](#keybindings)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## What Macbook do I have?

I am using a 2015 13" Macbook Air for work and personal stuff.

The specs for my machine:
* Intel core i5
* 8GB RAM
* 265GB SSD

## OS Settings

These are my preferred settings for [Finder](#finder) and the [Dock](#dock).

### Finder

* Finder -> Preferences
  * General -> Show these on the desktop -> Select None
      * I try to keep my desktop completely clean.
  * General -> New Finder windows show -> Home Folder
      * I prefer to see my home folder in each new finder window instead of recent documents
  * Advanced -> Show all filename extensions -> Yes
  * Advanced -> Show warning before changing an extension -> No
  * Advanced -> When performing a search -> Search the current folder
* View
  * Show Status Bar
  * Show Path Bar
  * Show Tab Bar

### Dock

I don't use the Dock at all. It takes up screen space, and I can use RayCast to launch apps and AltTab to switch between apps. I make the dock as small as possible and auto hide it.

* System Preferences
  * Desktop & Dock
    * Size -> Small as possible
    * Position on screen -> Left
    * Automatically hide and show the Dock -> Yes
    * Animate opening applications -> No
    * Show suggested and recent apps in the Dock -> No

## Homebrew

[Homebrew](https://brew.sh/) allows us to install tools and apps from the command line.

To install it, open up the built in `Terminal` app and run this command:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will also install the xcode build tools which is needed by many other developer tools.

## Apps I Use Daily

* [Arc](#arc) - My browser for an efficient, tab-organized browsing experience.
* [Alacritty](#terminal) - A fast and lightweight terminal emulator.
* [VS-code](#vs-code) - My go-to code editor for all my development work.
* [RayCast](#quick-launching) - A productivity tool that replaces Spotlight, improving efficiency.
* [Rectangle](#window-management) - Window management tool for easy snapping and organization.
* [AltTab](#app-switching) - A macOS app for switching between windows like in Windows.
* [Hiddenbar](#hidden-bar) - Keeps my menu bar clean by hiding extra icons.

and more [here](/brew/brew-casks.txt)

You can install them in one go by placing them all into a text file and then running brew install:

```sh
xargs brew install < packages/brew-casks.txt
```

## Quick Launching

The built in spotlight search is a bit slow for me and usually has web search results as the default instead of apps or folders on my machine.

I recently switched from [Alfred](https://www.alfredapp.com/) to [RayCast](https://www.raycast.com/). I'm really liking it so far.

#### RayCast Homebrew Plugin

Install the [RayCast Homebrew Plugin](https://www.raycast.com/nhojb/brew) so we can easily install formulae and casks directly from RayCast.

## Window Management

I know this feature is built in to a lot of other operating systems, but it is not built in to a Mac, so we need an app for it.

RayCast has this feature built in, but I am still using a separate app for this.

I use [rectangle](https://rectangleapp.com/) to move and resize windows using keyboard shortcuts. I used to use [spectacle](https://www.spectacleapp.com/), but rectangle is more regularly maintained and allows me to use all of the same keyboard shortcuts as spectacle.

I highly recommend installing this and memorizing the keyboard shortcuts. Fluid and seamless window management is key to being productive while coding.

## App Switching

The built in App switcher only shows application icons, and only shows 1 icon per app regardless of how many windows you have open in that app.

I use an app switcher called [AltTab](https://alt-tab-macos.netlify.app/). It shows full window previews, and has an option to show a preview for every open window in all applications (even minimized ones).

I replace the built-in `CMD+TAB` shortcut with AltTab.

## Menu Bar Utilities

### Hidden Bar

If you have several apps running that have menu bar icons, [Hidden Bar](https://github.com/dwarvesf/hidden) will let you choose which ones should be hidden after a timeout. This cleans things up if you have a ton of background apps running.

### System Stats Widgets

I use [stats](https://github.com/exelban/stats) to see my CPU temp / usage and RAM usage at a glance.

In each widget, a key setting to look for is under "widget settings", choose "merge widgets into one".

## Web Browser

### Arc

I use the following extensions to improve my browsing experience and productivity:

* [Dark Reader](https://darkreader.org/) - Turn any website into dark mode for a more comfortable viewing experience during the night or in low-light conditions.
* [Hide YouTube Shorts](https://chrome.google.com/webstore/detail/hide-youtube-shorts/xxx) - Removes YouTube Shorts from the platform, letting me focus only on long-form video content.
* [React Developer Tools](https://react.dev/) - A helpful tool for inspecting and debugging React components when working on web development projects.
* [Wappalyzer](https://www.wappalyzer.com/) - Identifies the technologies used by websites, including frameworks, content management systems, and analytics tools.
* [Bitwarden](https://bitwarden.com/) - An open-source password manager that securely stores and encrypts my passwords, making it easy to access them across devices.
* [uBlock Origin](https://github.com/gorhill/uBlock) - A powerful, lightweight adblocker that helps block intrusive ads and trackers, improving page load times and privacy.

## Terminal

I prefer [Alacritty](https://alacritty.org/) because fast and lightweight terminal emulator.

There are a lot of options for a terminal replacement, but I've been using `alacritty` for years and it works great for my needs.

 These are my preferred settings:

* Appearance
  * Theme: Catppuccin Mocha
* Font
  - MesloLGS Nerd Font Mono

All my settings for Alacritty [here](/config/alacritty/alacritty.toml) 

### Shell

Mac now comes with `zsh` as the default [shell](https://en.wikipedia.org/wiki/Comparison_of_command_shells).

### Other Apps I Use in command-line

Command-line utilities and tools:

* [bat](https://github.com/sharkdp/bat) - A cat command clone with syntax highlighting.
* [eza](https://github.com/eza-community/eza) - A modern replacement for `ls`, more user-friendly.
* [git](https://git-scm.com/) - Version control system for managing code repositories.
* [neovim](https://neovim.io/) - A modern Vim-based text editor.
* [python@3.13](https://www.python.org/downloads/release/python-3130/) - The programming language I use for development.
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Provides syntax highlighting for my Zsh shell.
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Suggests commands based on history and completion for Zsh.
* [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter way to navigate directories.
* [starship](https://starship.rs/) - A minimal, blazing-fast shell prompt.
* [tmux](https://github.com/tmux/tmux) - Terminal multiplexer to manage multiple terminal sessions.
* [trash-cli](https://github.com/andreafrancia/trash-cli) - Safely move files to the trash from the command line.

You can install them in one go by placing them all into a text file and then running brew install:

```sh
xargs brew install < packages/brew-formulae.txt
```

#### Load dotfiles

All my dotfiles are stored on folder [config](/config/).

```sh
chmod +x install.sh
```
```sh
./install.sh
```

### Github SSH Setup

* Follow [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to setup an ssh key for github
* Follow [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to add the ssh key to your github account

## Node.js

I use nvm to manage the installed versions of Node.js on my machine. This allows me to easily switch between Node.js versions depending on the project I'm working in.

See installation instructions [here](https://github.com/nvm-sh/nvm#installing-and-updating).

OR run this command (make sure v0.41.1 is still the latest)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

Now that nvm is installed, you can install a specific version of node.js and use it:

```sh
nvm install 22.9
nvm use 22.9
node --version
```

### Global Modules

There are a few global node modules I use a lot:

* lite-server
  * Auto refreshing static file server. Great for working on static apps with no build tools.
* http-server
  * Simple static file server.
* license
  * Auto generate open source license files
* gitignore
  * Auto generate `.gitignore` files base on the current project type

```
npm install -g lite-server http-server license gitignore
```

## VS Code

## Font

* [Anonymous Pro](https://www.marksimonson.com/fonts/view/anonymous-pro)

## Themes/Color

* [Tokyo Night](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night)
  * See [`editor.tokenColorCustomizations`](#settings) in my VS Code settings for a few modifications I make to the theme.

## Extensions

* Theme / Editor Experience
  * [FontSize ShortCuts](https://marketplace.visualstudio.com/items?itemName=fosshaas.fontsize-shortcuts)
    * Change the font size with keyboard shortcuts.
  * [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
    * Nice / colorful icons for many different file types
  * [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
    * Integrates ESLint JS
  * [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    * Automatically format javascript, JSON, CSS, Sass
  * [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype)
    * Auto generate TypeScript (and other languages) types from JSON data., and HTML files.
  * [PostCSS Intellisense and Highlighting](https://marketplace.visualstudio.com/items?itemName=vunguyentuan.vscode-postcss)
    * Works better than the other more popular one of a similar name.
  * [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
    * Spell check markdown, comments and variable names.
  * [Pretty TypeScript Errors](https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors)
    * Makes TS errors more human readable.
* Useful Tools
  * [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype)
    * Auto generate TypeScript (and other languages) types from JSON data.
  * [Code Snap](https://marketplace.visualstudio.com/items?itemName=adpyke.codesnap)
    * Take pictures of code with your VS Code Theme / Font settings.
  * [Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)
    * Make HTTP requests from inside VS Code (similar to Postman / Insomnia).
* Languages and Libraries
  * [XML Tools](https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml)
    * XML Formatting, XQuery, and XPath Tools for Visual Studio Code.
  * [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
    * Intelligent Tailwind CSS tooling for VS Code.
  * React
    * [ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
      * Extensions for React, React-Native and Redux in JS/TS with ES7+ syntax. Customizable. Built-in integration with prettier.
    * [CSS to JSS](https://marketplace.visualstudio.com/items?itemName=infarkt.css-to-jss)
      * Convert CSS to JSS
    * [CSS in JS](https://marketplace.visualstudio.com/items?itemName=paulmolluzzo.convert-css-in-js)
      * Get syntax highlighting when working with CSS in JS template strings.
    * [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=styled-components.vscode-styled-components)
      * Syntax highlighting for styled-components.
  * [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar)
    * Language support for Vue 3
  * [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode)
    * Svelte language support for VS Code.
  * [Prisma](https://marketplace.visualstudio.com/items?itemName=Prisma.prisma)
    * Adds syntax highlighting, formatting, auto-completion, jump-to-definition and linting for .prisma files.
  * [htmx-tags](https://marketplace.visualstudio.com/items?itemName=otovo-oss.htmx-tags)
    * Provides HTMX tag completion in HTML files in VSCode
  * [Markdown Mermaid Preview](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)
    * View Mermaid diagrams when previewing Markdown.

### Extension package install

You can install them in one go by placing them all into a text file:

```sh
cat packages/vs-code.txt | xargs -L1 code --install-extention
```

# Settings

```json
{
    "codesnap.backgroundColor": "#000000",
    "codesnap.containerPadding": "0px",
    "codesnap.showWindowControls": false,
    "codesnap.transparentBackground": true,
    "cSpell.enabled": true,
    "cSpell.enableFiletypes": [
      "mdx"
    ],
    "diffEditor.ignoreTrimWhitespace": false,
    "editor.detectIndentation": true,
    "editor.fontFamily": "Anonymous Pro",
    "editor.fontLigatures": true,
    "editor.fontSize": 19,
    "editor.formatOnPaste": false,
    "editor.inlineSuggest.enabled": true,
    "editor.lineHeight": 0,
    "editor.linkedEditing": true,
    "editor.minimap.enabled": false,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.snippetSuggestions": "top",
    "editor.suggestSelection": "first",
    "editor.tabSize": 2,
    "editor.tokenColorCustomizations": {
      "textMateRules": [
        {
          "scope": [
            "keyword.operator",
            "punctuation.separator"
          ],
          "settings": {
            "fontStyle": ""
          }
        },
        {
          "scope": [
            "comment",
            "comment.block"
          ],
          "settings": {
            "fontStyle": "italic",
            "foreground": "#F5F"
          }
        },
        {
          "name": "envKeys",
          "scope": "string.quoted.double.env,source.env,constant.numeric.env",
          "settings": {
            "foreground": "#19354900"
          }
        }
      ]
    },
    "editor.unicodeHighlight.invisibleCharacters": false,
    "emmet.showAbbreviationSuggestions": false,
    "eslint.enable": true,
    "eslint.validate": [
      "vue",
      "react",
      "typescript",
      "html",
      "javascript"
    ],
    "explorer.openEditors.visible": 1,
    "extensions.ignoreRecommendations": true,
    "files.autoSave": "onWindowChange",
    "git.autofetch": true,
    "git.openRepositoryInParentFolders": "never",
    "markdown.preview.fontSize": 21,
    "screencastMode.keyboardOptions": {
      "showCommandGroups": false,
      "showCommands": false,
      "showKeybindings": true,
      "showKeys": false,
      "showSingleEditorCursorMoves": true
    },
    "search.exclude": {
      "**/*.code-search": true,
      "**/bower_components": true,
      "**/node_modules": true
    },
    "search.useIgnoreFiles": false,
    "svelte.enable-ts-plugin": true,
    "terminal.integrated.fontSize": 14,
    "vsicons.dontShowNewVersionMessage": true,
    "window.zoomLevel": 4,
    "workbench.colorTheme": "Tokyo Night",
    "workbench.editor.labelFormat": "medium",
    "workbench.editor.showTabs": "none",
    "workbench.iconTheme": "vscode-icons",
    "workbench.sideBar.location": "right",
    "workbench.startupEditor": "newUntitledFile",
    "workbench.statusBar.visible": false,
    "[css]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[handlebars]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[html]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[javascript]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[javascriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[json]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[jsonc]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[markdown]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "diffEditor.ignoreTrimWhitespace": false
    },
    "[scss]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[svelte]": {
      "editor.defaultFormatter": "svelte.svelte-vscode"
    },
    "[typescript]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[typescriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
  }
```

# Keybindings

```json
[
  {
    "key": "cmd+1",
    "command": "workbench.action.openEditorAtIndex1"
  },
  {
    "key": "ctrl+1",
    "command": "-workbench.action.openEditorAtIndex1"
  },
  {
    "key": "cmd+2",
    "command": "workbench.action.openEditorAtIndex2"
  },
  {
    "key": "ctrl+2",
    "command": "-workbench.action.openEditorAtIndex2"
  },
  {
    "key": "cmd+3",
    "command": "workbench.action.openEditorAtIndex3"
  },
  {
    "key": "ctrl+3",
    "command": "-workbench.action.openEditorAtIndex3"
  },
  {
    "key": "cmd+4",
    "command": "workbench.action.openEditorAtIndex4"
  },
  {
    "key": "ctrl+4",
    "command": "-workbench.action.openEditorAtIndex4"
  },
  {
    "key": "cmd+5",
    "command": "workbench.action.openEditorAtIndex5"
  },
  {
    "key": "ctrl+5",
    "command": "-workbench.action.openEditorAtIndex5"
  },
  {
    "key": "cmd+6",
    "command": "workbench.action.openEditorAtIndex6"
  },
  {
    "key": "ctrl+6",
    "command": "-workbench.action.openEditorAtIndex6"
  },
  {
    "key": "cmd+7",
    "command": "workbench.action.openEditorAtIndex7"
  },
  {
    "key": "ctrl+7",
    "command": "-workbench.action.openEditorAtIndex7"
  },
  {
    "key": "cmd+8",
    "command": "workbench.action.openEditorAtIndex8"
  },
  {
    "key": "ctrl+8",
    "command": "-workbench.action.openEditorAtIndex8"
  },
  {
    "key": "cmd+9",
    "command": "workbench.action.openEditorAtIndex9"
  },
  {
    "key": "ctrl+9",
    "command": "-workbench.action.openEditorAtIndex9"
  },
  {
    "key": "ctrl+1",
    "command": "workbench.action.focusFirstEditorGroup"
  },
  {
    "key": "cmd+1",
    "command": "-workbench.action.focusFirstEditorGroup"
  },
  {
    "key": "ctrl+3",
    "command": "workbench.action.focusThirdEditorGroup"
  },
  {
    "key": "cmd+3",
    "command": "-workbench.action.focusThirdEditorGroup"
  },
  {
    "key": "ctrl+6",
    "command": "workbench.action.focusSixthEditorGroup"
  },
  {
    "key": "cmd+6",
    "command": "-workbench.action.focusSixthEditorGroup"
  },
  {
    "key": "ctrl+7",
    "command": "workbench.action.focusSeventhEditorGroup"
  },
  {
    "key": "cmd+7",
    "command": "-workbench.action.focusSeventhEditorGroup"
  },
  {
    "key": "ctrl+2",
    "command": "workbench.action.focusSecondEditorGroup"
  },
  {
    "key": "cmd+2",
    "command": "-workbench.action.focusSecondEditorGroup"
  },
  {
    "key": "ctrl+4",
    "command": "workbench.action.focusFourthEditorGroup"
  },
  {
    "key": "cmd+4",
    "command": "-workbench.action.focusFourthEditorGroup"
  },
  {
    "key": "ctrl+5",
    "command": "workbench.action.focusFifthEditorGroup"
  },
  {
    "key": "cmd+5",
    "command": "-workbench.action.focusFifthEditorGroup"
  },
  {
    "key": "ctrl+8",
    "command": "workbench.action.focusEighthEditorGroup"
  },
  {
    "key": "cmd+8",
    "command": "-workbench.action.focusEighthEditorGroup"
  }
]
```
