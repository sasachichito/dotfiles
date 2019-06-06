# dotfiles  

## clone  
```
git clone --recursive https://github.com/sasachichito/dotfiles.git
```

## 利用方法(vim) 
```
# 既存のコンフィグファイルを移動
$ mv ~/.vim ~/.vim_org
$ mv ~/.vimrc ~/.vimrc_org
# シンボリックリンク作成
$ ln -s dotfiles/.vim ~/.vim
# Vimのバージョンが8.0以上の場合  
$ ln -s dotfiles/.vimrc ~/.vimrc
# Vimのバージョンが8.0未満の場合  
$ ln -s dotfiles/.vimrc_for_under_ver.8.0 ~/.vimrc
```

## ctags
インストールが必要(vimで利用)  
