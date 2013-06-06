# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="muse"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem nixoncd)

__git_files () {
  _wanted files expl 'local files' _files
}

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias be="bundle exec"
alias riakstart="~/riak-1.2.1/rel/riak/bin/riak start"
alias riakstop="~/riak-1.2.1/rel/riak/bin/riak stop"
alias reload=". ~/.zshrc"
alias vim='mvim -v'
alias vundle="vim +BundleInstall +qall"
alias ber="bundle exec rspec"
alias mcache="memcached -d -p 11211 -I 10m -m 2048 start"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session as a function
export PATH="$PATH:/usr/local/sbin"
