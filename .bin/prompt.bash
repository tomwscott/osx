


function prompt_right() {
  echo -e "\[${WHITE}\][\\\t]"
}

function prompt_left() {
  echo -e "\[${BRIGHT_WHITE}\]\\u\[$WHITE\]@\h:\[$BRIGHT_WHITE\]\w\[${RESET}\]"
}

function prompt() {
    compensate=5
    PS1=$(printf "%*s\r%s\n> $ " "$(($(tput cols)+${compensate}))" "$(prompt_right)" "$(prompt_left)")
}
PROMPT_COMMAND=prompt
