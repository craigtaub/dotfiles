### NVM (https://github.com/creationix/nvm)
if [ ! -d "$NVM_DIR" ];
then
    echo "installing nvm"
    git clone https://github.com/creationix/nvm.git ~/.nvm > /dev/null && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags` > /dev/null
else
    echo "attempting to update nvm"
    cd "$NVM_DIR" && git pull origin master > /dev/null && git checkout `git describe --abbrev=0 --tags` > /dev/null
fi;

cd -

# https://github.com/nolanlawson/local-npm-launch-agent
if [ ! -d ~/.local-npm ]
then
    echo "Installing local-npm"
    curl -sL https://raw.githubusercontent.com/nolanlawson/local-npm-launch-agent/master/script.py | python - > /dev/null
fi
