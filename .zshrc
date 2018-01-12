     1	# 環境変数
     2	export LANG=ja_JP.UTF-8
     3	
     4	# ヒストリの設定
     5	HISTFILE=~/.zsh_history
     6	HISTSIZE=10000
     7	SAVEHIST=10000
     8	# 直前のコマンドの重複を削除
     9	setopt hist_ignore_dups
    10	# 同じコマンドをヒストリに残さない
    11	setopt hist_ignore_all_dups
    12	# 同時に起動したzshの間でヒストリを共有
    13	setopt share_history
    14	
    15	# 補完機能を有効にする
    16	autoload -Uz compinit
    17	compinit -u
    18	if [ -e /usr/local/share/zsh-completions ]; then
    19	  fpath=(/usr/local/share/zsh-completions $fpath)
    20	fi
    21	# 補完で小文字でも大文字にマッチさせる
    22	zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
    23	# 補完候補を詰めて表示
    24	setopt list_packed
    25	# 補完候補一覧をカラー表示
    26	zstyle ':completion:*' list-colors ''
    27	
    28	# コマンドのスペルを訂正
    29	setopt correct
    30	# ビープ音を鳴らさない
    31	setopt no_beep
    32	
    33	# prompt
    34	autoload -Uz vcs_info
    35	setopt prompt_subst
    36	zstyle ':vcs_info:git:*' check-for-changes true
    37	zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
    38	zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
    39	zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
    40	zstyle ':vcs_info:*' actionformats '[%b|%a]'
    41	precmd() { vcs_info }
    42	PROMPT='%m:%F{green}%~%f %n %F{yellow}$%f '
    43	RPROMPT='${vcs_info_msg_0_}'
    44	
    45	# alias
    46	alias ls='ls -aF'
    47	alias ll='ls -l'
    48	alias rm='rm -i'
    49	alias cp='cp -i'
    50	alias mv='mv -i'
    51	alias vi='vim'
    52	alias cat='cat -n'
    53	alias less='less -NM'
    54	alias g='git'
    55	alias h='history'
    56	export CLICOLOR=1
    57	export LSCOLORS=DxGxcxdxCxegedabagacad
