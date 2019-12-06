alias config='/usr/bin/git --git-dir=/Users/jerryturcios08/.cfg/ --work-tree=/Users/jerryturcios08'
alias config='/usr/local/bin/git --git-dir=/Users/jerryturcios08/.cfg/ --work-tree=/Users/jerryturcios08'
export PATH=~/Development/Database/mongodb-osx-x86_64-3.6.4/bin:$PATH

# Virtual wrapper configuration
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ -f /Users/jerryturcios08/.travis/travis.sh ] && source /Users/jerryturcios08/.travis/travis.sh

export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="/usr/local/Cellar/php/7.3.10/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###-tns-completion-start-###
if [ -f /Users/jerryturcios08/.tnsrc ]; then 
    source /Users/jerryturcios08/.tnsrc 
fi
###-tns-completion-end-###
