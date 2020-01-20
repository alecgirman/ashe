if exists('did_asheinit_vim') || &cp || version < 700
    finish
endif
let did_asheinit_vim = 1

function! InitCore()
    " % - current file
    " p - full path - REQUIRED see :h filename-modifiers
    " h - head of filepath
    let g:ashe_root=expand("%:p:h") . "/" 
    set showmode
    set showcmd
    set showmatch
    set hidden
    set autowrite
    set autoread
    set number
    set relativenumber
    set laststatus=2
    set showtabline=2
    set scrolloff=10
    set nowrap
    set completeopt=longest,menuone,preview
    set wildmode=list:longest
    set modeline
    set noswapfile

    " search settings
    set ignorecase      " Ignore case in search and seek commands
    set smartcase       " ...but only in search commands
    set incsearch       " Search as were typing
    set hlsearch        " Highlight search matches

    set mouse=a             " Enable full mouse support
    set mousemodel=popup  " Define the mouse model

    if !has ('nvim')		" only works in vim
        set ttymouse=sgr      " Set terminal mouse input mode
    endif


    " Editor tab settings
    set tabstop=4
    set shiftwidth=4
    set autoindent
    set expandtab
    set smarttab

    " Misc settings
    set wildmenu
    set history=250
    set viminfo='1000,<500,s100
    set timeoutlen=500

    set diffexpr+=iwhite
    set diffexpr+=iblank

    syntax on
endfunction

"ashedir = '~/.vim'



" function! SourceInternals()
"     source! ~/.vim/plugin/plugins.vim
"     source! ~/.vim/plugin/functions.vim
"     source! ~/.vim/plugin/keybinds.vim
"     source! ~/.vim/plugin/colors.vim
" endfunction

function! ConfigurePostload()
    call ashe#postloader#ConfigurePluginsPostload()
    call ashe#postloader#ConfigureColors()
endfunction

function! EarlyInit()
    call ashe#postloader#SourceInternals()
    call ashe#postloader#InitCore()
    call ashe#postloader#ConfigurePluginsPreload()
endfunction

function! LateInit()
    call ashe#postloader#InstallThirdPartyPlugins()
    call ConfigurePostload()
    call ashe#keybinds#LoadDefaultKeybinds()
endfunction

function! FullInit()
    call EarlyInit()
    call LateInit()
endfunction

" TODO: move to autoload
command! -nargs=0 FullInit :call FullInit()

let did_asheinit_vim=2 " init complete indicator
