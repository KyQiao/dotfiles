# this will install binary in ./bin folder
cd ~ && mkdir -p usr
mkdir -p backup && mkdir -p code && mkdir -p data
cd usr && mkdir -p bin && mkdir -p lib mkdir -p include
curl -sfL https://git.io/chezmoi | sh
# git remote add origin https://github.com/KyQiao/dotfiles.git
./bin/chezmoi init https://github.com/KyQiao/dotfiles.git
./bin/chezmoi apply
