" Some Basics
    set number
    set relativenumber
    execute pathogen#infect()
    set showcmd
    syntax on
    set bg=dark
    set nocompatible
    filetype plugin on
    syntax on
    set encoding=utf-8

"   set cursorline
    set wildmenu        " Show list instead of just completing!
    set showmatch       " Show Matching
    set incsearch       " Search as you type
    set ignorecase      " Case insensitve search

" Split open at at the bottom and right!
    set splitbelow
    set splitright

" Map leader key to space
    let mapleader = "\<Space>"

" Interpret .md etc files as markdown
    let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Guides
    inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l

" Formating  {
   " set nowrap        " wrap long lines
    set autoindent    " Indent at the same level of prev line
    set shiftwidth=4  " Use indent of 4 Spaces
    set expandtab     " Tabs are spaces
    set tabstop=4     " Indentation every four colums 
    set softtabstop=4 " let backspace delete indent
" }

" Copy the whole file into the register
    map <leader>ca ggVG"*y

" Copy selected text to system clipboard (requires gvim installed):
	vnoremap <C-c> "*Y :let @+=@*<CR>
	map <C-p> "+P

" Spell check set to F6
    map <F5> :setlocal spell! spelllang=en_us<CR>

" A Beautifull file explorer
    map <C-n> :NERDTreeToggle<CR>
" Source .vimrc
    map <F9> !source ~/.vimrc<CR>

" Map the Esc key to Capslock!
    au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" Turning Vim into an IDE

   " Compile document
        map <F6> :!compile %<c-r>%<CR>
    " Out file
        map <leader>p :!out<c-r>%<CR><CR>
" My Latex shortcuts
    autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ct \center{}
    autocmd FileType tex inoremap ,c  <Esc>I%

" My cpp shortcuts
    autocmd FileType cpp inoremap ,c <Esc>I//
    autocmd FileType cpp inoremap ,uc <Esc>I<Esc>xxx
    autocmd FileType cpp inoremap ,f for(int i = 0; i < <++>; i++)<Space>{<Enter><++><Enter>}
    au bufnewfile *.cpp 0r /home/elliot/.vim/cpp_header.temp
"  Comments for Python
    autocmd FileType py inoremap ,c <Esc>I//
