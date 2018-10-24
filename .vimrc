
" Some Basics
    set number
"    Set relativenumber
    set showcmd
    syntax on
    set bg=dark
    set nocompatible
    filetype plugin on
"   set cursorline
    set wildmenu        " Show list instead of just completing!
    set showmatch       " Show Matching
    set incsearch       " Search as you type
    set ignorecase      "Case insensitve search

" Split open at at the bottom and right!
    set splitbelow
    set splitright

" Interpret .md etc files as markdown
    let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Formating  {
    set nowrap        " wrap long lines
    set autoindent    " Indent at the same level of prev line
    set shiftwidth=4  " Use indent of 4 Spaces
    set expandtab     " Tabs are spaces
    set tabstop=4     " Indentation every four colums 
    set softtabstop=4 " let backspace delete indent
    
" }

" Spell check set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

