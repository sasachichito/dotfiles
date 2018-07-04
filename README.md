# vimの設定ファイルをまとめたリポジトリ  

## クローン  
git submoduleでパッケージ管理しているのでクローンは以下でお願いします.
```
git clone --recursive https://github.com/sasachichito/vim_config.git
```

## 利用方法  
```
# 既存のコンフィグファイルを移動
$ mv ~/.vim ~/.vim_org
$ mv ~/.vimrc ~/.vimrc_org
# シンボリックリンク作成
$ ln -s vim_config/.vim ~/.vim
```
- Vimのバージョンが8.0以上の場合  
```
$ ln -s vim_config/.vimrc ~/.vimrc
```
- Vimのバージョンが8.0未満の場合  
```
$ ln -s vim_config/.vimrc_for_under_ver.8.0 ~/.vimrc
```

## ctags
利用するのでインストールしておいてください。  
