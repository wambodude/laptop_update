# install wsl (run in windows powershell)
# wsl --update
# wsl --install ubuntu
# add user schueler with pw 1234
# go into docker desktop settings -> set dark, disable statistics and auto startup as well as under resources/wsl integration activate the new ubuntu ressource

# update everything && install stuff for zsh, zsh itself and oh-my-zsh
apt update && apt upgrade -y && apt install git wget zsh -y && sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# replace values in configuration
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
sed -i -E 's/(^plugins=\(.*)\)/\1 zsh-syntax-highlighting)/g' ~/.zshrc
