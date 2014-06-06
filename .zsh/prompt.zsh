autoload -U colors && colors # Enable colors in prompt
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Custom colors

black="%{[0;30m%}"
red="%{[0;31m%}"
green="%{[0;32m%}"
blue="%{[0;34m%}"
magenta="%{[0;35m%}"
cyan="%{[0;36m%}"
yellow="%{[0;93m%}"

normal="%{[0m%}"


PROMPT="$yellow%1~$normal
🍕  $yellow\$$normal "


#PROMPT="At $magenta%1~$normal 
#Yes, $cyan%n$normal?$red λ$normal "




