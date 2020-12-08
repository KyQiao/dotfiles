# this will install binary in ./bin folder
pushd ~
mkdir -p usr
mkdir -p backup && mkdir -p code && mkdir -p data
pushd ~/usr
mkdir -p bin && mkdir -p lib mkdir -p include
curl -sfL https://git.io/chezmoi | sh
# git remote add origin https://github.com/KyQiao/dotfiles.git
./bin/chezmoi init https://github.com/KyQiao/dotfiles.git
./bin/chezmoi apply

popd
popd

gitV="$(git --version 2>&1)"
re="git version ([0-9])"
if [[ $gitV =~ $re ]];then
	if [[ ${BASH_REMATCH[1]} -ge 2 ]];then
		echo "git version >= 2"
	else
		bash ~/.local/sh/git.sh
	fi  
else
	echo "REGEX dosen't match"
fi

