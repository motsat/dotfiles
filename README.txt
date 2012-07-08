Clone from github
git clone git@github.com:motsat/dotfiles.git
cd dotfiles
./setup.sh
ln -s dotfiles/.zshrc ~/.zshrc

.dotfileの種類
.vimrc
.zshrc

molokai.vimはvisualblockの色が見づらいから235から239に変更してつかう
  hi Visual                      ctermbg=239
