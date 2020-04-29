#!/bin/sh

# xsel simulation in WSL
# usage:
#     xsel -o
#     xsel -i [string]
# From https://www.reddit.com/r/neovim/comments/fyj7mp/neovim_in_wsl_copy_to_windows_clipboard/fn241ig/

if command -v pwsh.exe >/dev/null 2>&1; then
  pwsh="pwsh.exe"
elif command -v powershell.exe >/dev/null 2>&1; then
  pwsh="powershell.exe"
else
  exit 1
fi
pwsh="$pwsh -NoProfile -NoLogo -NonInteractive"

for i in "$@"
do
  case "$i" in
  (-o|--output|-out)
    $pwsh -command Get-Clipboard | sed 's/\r$//' | head -c -1
    exit 0
    ;;
  (-i|--input|-in)
    # tee <&0 | clip.exe
    # To remove the appended newline:
    TEMP="$(wslpath "$(cmd.exe /c "<nul set /p=%TEMP%" 2>/dev/null)")"
    cat > "$TEMP/wsl_clipboard"
    $pwsh -command "Get-Content ""\$env:TEMP\wsl_clipboard"" | Set-Clipboard"
    exit 0
    ;;
  esac
done
