" vi互換モードにしない.
set nocompatible

" LeaderをSpaceキーにする.
let mapleader = "\<Space>"

" ファイル形式検出と、形式別プラグイン（ファイルタイププラグイン）のロードを有効化.
filetype plugin on 

" runtimepath 配下のindent/${filetype}.vimを実行する.
filetype indent on 

syntax on

set hlsearch

set number
highlight LineNr ctermfg=239

set history=200

" 折り返し表示をOFFにする.
set nowrap

" 作業ディレクトリの自動変更(タグファイルをプロジェクトルートに設置しているのでOFFにする).
" set noautochdir

" Vim付属の任意読み込みパッケージの一つを有効にする. http://vim-jp.org/vimdoc-ja/usr_05.html#matchit-install
packadd! matchit

" タグファイル作成用のキーマップを作成する.
nnoremap <F5> :!ctags -R<CR>

" 新しいタブでジャンプ
nnoremap tt :tab sp<CR> :exe("tjump ".expand('<cword>'))<CR>

" コンパイルのキーマップを作成する. 
nnoremap <F2> :make %<CR>

" NERDTREEのキーマップの作成と設定.
map <F3> <plug>NERDTreeTabsToggle<CR>
" ブックマークの初期表示
let g:NERDTreeShowBookmarks=1
" 隠しファイルの表示
let g:NERDTreeShowHidden = 1

" タブ移動のキーマップを作成する.
nmap <C-n> gt
nmap <C-p> gT

" 左右のスクロールのキーマップを作成.
nmap <Leader>l zL
nmap <Leader>h zH

" コマンドラインウィンドウ操作のキーマップの作成.
nmap <Leader>r q:iread ! 
nmap <Leader>d q:i%d \| read ! 
nmap <Leader>w q:iwrite ! 
nmap <Leader>f q:i%! 

" アクティブなバッファのコピーを一時ファイルとしてタブで開く.
nmap <Leader>t :let tmp_name = tempname() \| w `=tmp_name` \| tabe `=tmp_name`<CR>

" bashを起動する.
nmap <Leader>b :!bash<CR>

" exコマンドの出力結果をレジスタ名cにリダイレクトする関数を定義.
" function s:cmdRedirectToRegisterC(cmd) abort
"     redir @c
"     execute a:cmd
"     redir END
" endfunction
" CCコマンドで cmdRedirectToRegisterC関数をコールする.
" command -nargs=1 CC call <SID>cmdRedirectToRegisterC("<args>")
