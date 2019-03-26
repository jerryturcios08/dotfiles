# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"

# Open files in Chrome
alias chrome="open -a 'Google Chrome'"

# MySQL configuration
export PATH=${PATH}:/usr/local/mysql/bin

# Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# Ruby configuration
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
