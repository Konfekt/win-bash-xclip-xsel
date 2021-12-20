The script `clip.sh` and the two symlinks `xclip` and `xsel` are brute drop-in replacements for `xclip` and `xsel` to make them in [Git BASH](https://gitforwindows.org/) or [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) (Windows Subsystem for Linux)  read and write on the Microsoft Windows clipboard.
For this to work, a parameter `-i/-in/--input` or `-o/-out/--output`, which specifies whether the clipboard is being read or written onto, must be passed (whereas `xclip` and `xsel` can infer it).

# Installation

Inside the Git Bash or WSL terminal in Microsoft Windows 10:

1. Save these scripts, say to `~/bin/`, and mark `xclip.sh` executable by

    ```sh
    mkdir ~/bin && cd ~/bin
    git clone https://github.com/Konfekt/win-bash-xclip-xsel
    ```

1. add the path of the folder that contains the obtained executables (say `~/bin`) to your environment variable `$PATH`:
    For this, add to your file `~/.profile` (for Bash, or `~/.zshenv` for ZSH) the following line under Git Bash

    ```sh
    [ -z ${MSYSTEM+x} ] || export PATH="${PATH:+"$PATH:"}$HOME/bin/win-bash-xclip-xsel"
    ```

    respectively under WSL

    ```sh
    [ -z ${WSLENV+x} ] || export PATH="${PATH:+"$PATH:"}$HOME/bin/win-bash-xclip-xsel"
    ```

# Related

The Vim plug-in [vim-wsl-copy-paste](https://github.com/Konfekt/vim-wsl-copy-paste) adds mappings in Vim under WSL to write and read on the Microsoft Windows clipboard 
