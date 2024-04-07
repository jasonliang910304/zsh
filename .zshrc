# 别名设置
alias ls='ls --color=auto'
alias rog1='scrcpy -s JCAZGV330203KUL --no-audio'
alias audiorestart='systemctl --user restart pipewire'
alias screenshare='mpv --vo=xv udp://0.0.0.0:1111 --no-cache --untimed --no-demuxer-thread --video-sync=audio --vd-lavc-threads=1 & wf-recorder --muxer=mpegts --codec=libx264 --file=udp://0.0.0.0:1111'
alias playmusic_random='mpv --no-video --shuffle /mnt/sda2/音樂/Music/ --volume=50'
alias playmusic='mpv --no-video --volume=50'
# 自定义提示符设置
color="%F{#0db9d7}"  # 设置颜色为青色
reset="%f"        # 重置颜色

# 设置PS1
PS1="${color} [%n %~]\$ ${reset} "
# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit
# history setup
setopt SHARE_HISTORY
HISTFILE=$ZDOTDIR/.zhistory
SAVEHIST=100000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

source $ZDOTDIR/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
