The script `clip.sh` and the two symlinks `xclip` and `xsel` are brute drop-in replacements for `xclip` and `xsel` to make them in `WSL` (Windows Subsystem for Linux) read and write on the Microsoft Windows clipboard instead of the Linux clipboard.
For this to work, a parameter `-in/--input` or `-out/--output`, which specifies whether the clipboard is being read or written onto, must be passed (whereas `xclip` and `xsel` can infer it).

# Installation

Inside the console of WSL in Microsoft Windows 10:

1. Save these scripts, say to `~/bin/`, and mark `xclip.sh` executable by

    ```sh
    mkdir ~/Downloads
    cd ~/Downloads
    git clone https://github.com/Konfekt/xclip-xsel-WSL
    mkdir --parents ~/bin
    cp ~/Downloads/xclip-xsel-WSL/{clip.sh,xclip,xsel} ~/bin
    chmod a+x ~/bin/clip.sh
    ```

1. add the path of the folder that contains the obtained executables (say `~/bin`) to your environment variable `$PATH`:
    For this, add to your file `~/.profile` (for Bash, or `~/.zshenv` for ZSH) the line

    ```sh
    [ -z ${WSLENV+x} ] || export PATH="${PATH:+"$PATH:"}$HOME/bin"
    ```

# Related

The repository [wsl-gui-bins](https://github.com/Konfekt/wsl-gui-bins) contributes small Shell scripts to start common (GUI) applications from the `WSL` (Windows Subsystem for Linux) shell just like from a Linux shell.
