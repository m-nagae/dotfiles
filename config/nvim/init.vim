" dein.vim {{{
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('itchyny/lightline.vim')
    call dein#add('spolu/dwm.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('vim-jp/vimdoc-ja')
    call dein#add('vim-scripts/switch.vim')
    call dein#add('vim-scripts/tComment')
    call dein#add('Yggdroot/indentLine')

    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
" }}}

" itchyny/lightline.vim {{{
let g:lightline = {
            \ 'colorscheme': 'solarized',
            \ 'mode_map': { 'c': 'NORMAL' },
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
            \ },
            \ 'component_function': {
            \   'modified': 'LightlineModified',
            \   'readonly': 'LightlineReadonly',
            \   'fugitive': 'LightlineFugitive',
            \   'filename': 'LightlineFilename',
            \   'fileformat': 'LightlineFileformat',
            \   'filetype': 'LightlineFiletype',
            \   'fileencoding': 'LightlineFileencoding',
            \   'mode': 'LightlineMode',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

function! LightlineModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! LightlineFilename()
    return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
                \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
                \  &ft == 'unite' ? unite#get_status_string() :
                \  &ft == 'vimshell' ? vimshell#get_status_string() :
                \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
        let branch = fugitive#head()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction

function! LightlineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" }}}

" Editor {{{
" Appearance {{{
set laststatus=2
set list
set listchars=tab:>-,trail:·,eol:↲
set number
set ruler
set showbreak=...
set showcmd
set showmatch
set title
set wrap
" }}}

" Behaviour {{{
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set foldenable
set foldmethod=marker
set wildmenu
" }}}

" Encoding {{{
set encoding=utf-8
set fileencoding=utf-8
" }}}

" Search {{{
set hlsearch
set ignorecase
set smartcase
set wrapscan
nnoremap <silent><ESC><ESC> :nohlsearch<CR>
" }}}

" Indent {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set formatoptions+=mM
" }}}

" Color Scheme {{{
set background=dark
colorscheme solarized
" }}}
" }}}
