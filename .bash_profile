# Setting PATH for Android SDK
# The original version is saved
export PATH="$HOME/Android/tools:$PATH"
export PATH="$HOME/Android/platform-tools:$PATH"

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

# Setting PATH for Qt 5.11
export PATH=$PATH:~/Development/Toolsets/Qt/5.11.1/clang_64/bin

# Open files in Chrome
alias chrome="open -a 'Google Chrome'"

# MySQL configuration
export PATH=${PATH}:/usr/local/mysql/bin

# Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# Kdevelop paths
export KDEDIRS=$KDEDIRS:$HOME/Library/Preferences/KDE:/usr/local/kde4
export PATH=/usr/local/kde4/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/kde4/lib:$DYLD_LIBRARY_PATH
launchctl setenv DYLD_LIBRARY_PATH /usr/local/kde4/lib:$DYLD_LIBRARY_PATH
export XDG_DATA_HOME=$HOME/Library/Preferences/KDE/share
export XDG_DATA_DIRS=/usr/local/kde4/share:/usr/local/share:/usr/share

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
