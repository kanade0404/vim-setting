syntax on
colorscheme iceberg
" bundleのディレクトリ指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
" neobundleを読み込む
call neobundle#begin(expand('~/.vim/bundle/'))
" neobundle を管理
NeoBundleFetch 'Shougo/neobundle.vim'

" **** 導入するプラグイン ****
NeoBundle 'Flake8-vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'

" neobundle を閉じる
call neobundle#end()

" インストールするか自動でチェック
NeoBundleCheck

" pyflake
"保存時に自動でチェック
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
let g:PyFlakeDefaultComplexity=10

" syntastic
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
