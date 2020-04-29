The script `clip.sh` and the two symlinks `xclip` and `xsel` are brute drop-in replacements for `xclip` and `xsel` to make them in `WSL` (Windows Subsystem for Linux) read and write on the Microsoft Windows clipboard instead of the Linux clipboard.

# Installation

Inside the console of WSL in Microsoft Windows 10:

1. Save these scripts, say to `~/bin/`, and mark `xclip.sh` executable by

    ```sh
    mkdir --parents ~/bin &&
    git clone https://github.com/Konfekt/xclip-xsel-WSL &&
    cp ~/bin/xclip-xsel-WSL/{clip.sh,xclip,xsel} &&
    chmod a+x ~/bin/clip.sh
    ```

1. add the path of the folder that contains the obtained executables (say `~/bin`) to your environment variable `$PATH`:
    If you use `bash` or `zsh`, by adding to `~/.profile` or `~/.zshenv` the line

    ```sh
        PATH=$PATH:~/bin
    ```

