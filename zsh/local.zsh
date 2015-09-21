export LANG="en_US.UTF-8"
export EDITOR=vim

alias update="sudo emaint sync -a && sudo eix-update && sudo emerge --with-bdeps=y --keep-going -avDuN @world"
alias tmux='TERM=screen-256color tmux -2'
alias vim="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias ff="export MOZ_USE_OMTC=1 && nohup firefox &>/dev/null &"

if which tmux 2>&1 >/dev/null; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi

if [ -e "./work.sh" ]
then
  source "./work.sh"
fi
