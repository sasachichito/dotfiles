" コンパイラを設定する.
" Vim標準のコンパイラプラグインは'runtimepath'内の、compiler/*.vimとして用意されている.
" php.vimも用意されているので、アクティブ化する.
" 以下のコマンドはmakeprgオプションとerrorformatオプションをphp.vimの内容で設定している.（アクティブ化）
compiler php

" ファイル保存時にコンパイルを実行させる. http://vim-jp.org/vimdoc-ja/autocmd.html#:autocmd
"autocmd BufWritePost *.php make %
