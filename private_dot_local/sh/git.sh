pushd ~/backup
wget -N -nv https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.29.2.tar.gz
tar -xzf git-2.29.2.tar.gz
pushd git-2.29.2/
./configure --prefix=$HOME/usr
make -j 8 && make install
popd
popd
# For the init env, linking curl lib should works fine
# If curl lib is buggy, change the lib and bin to local one
