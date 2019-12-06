# Open files in Chrome
alias chrome="open -a 'Google Chrome'"

# MySQL configuration
export PATH=${PATH}:/usr/local/mysql/bin

# Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# Ruby configuration
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno configuration
export DENO_INSTALL="/Users/jerryturcios08/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
