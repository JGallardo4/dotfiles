#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#          ██          ██   ██                 
#         ░░          ░░   ░██                 
#  ██   ██ ██ ███████  ██ ██████ ██████  █████ 
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░ 
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████ 
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░  

# Set U.S. International keyboard to use special characters by holding the right Alt key and then the character you want to modify.
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

exec i3
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
