# 📝 STEPS TO FOLLOW

## 1️⃣ Install the Latest Version of Neovim (Example with Snap)

``̀`bash
sudo snap install nvim --classic
``̀`

🔍 Check the installed version with:

``̀`bash
nvim --version
``̀`

## 2️⃣ Clone the Repo

- Clone the repo locally.
- Copy all files from the repo into the nvim config directory.

``̀`bash
cp yourgitrepo/* ~/.config/nvim/
``̀`

## 3️⃣ Install `vim-plug`

1. Open Neovim and run the following command to install `vim-plug`, the plugin manager:

``̀`bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ``̀`

  2. After installing `vim-plug`, you can add plugins to your `init.vim` configuration file.

## 4️⃣ Install the Plug Packages in Neovim

Inside Neovim, run the following command to install the plugins:

``̀`bash
:PlugInstall
``̀`

## 5️⃣ Install Nerd Fonts

1. Go to the [Nerd Fonts Download Page](https://www.nerdfonts.com/font-downloads).
2. Download your favorite font.
3. Install and unzip the `.ttf` file in the appropriate font directory for your operating system:
    - On Linux: Unzip the font in `~/.local/share/fonts/` or `/usr/share/fonts/`.
        - On macOS: Use the Font Book application to install the font.
        4. Change the font in your terminal emulator settings to the newly installed Nerd Font. 🌟

## 6️⃣ Relaunch Neovim

Restart Neovim to apply the changes and enjoy your new setup! 🚀

