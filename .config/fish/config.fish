set fish_greeting

export PATH=$PATH:/snap/bin:/usr/bin

alias yaourt="yaourt --noconfirm"
alias ls="ls -a --color=always"

function cd                                                                                
  builtin cd $argv[1]
  if count $argv > /dev/null
    ls
  end
end
