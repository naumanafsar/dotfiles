" Some Basics
    set number
    set relativenumber
    execute pathogen#infect()
    set showcmd
    syntax on
    set bg=dark
    set nocompatible
    filetype plugin on
    filetype plugin indent on
    syntax on
    set encoding=utf-8
"   set cursorline
    set wildmenu        " Show list instead of just completing!
    set showmatch       " Show Matching
    set foldmethod=manual
    set incsearch       " Search as you type
    set ignorecase      " Case insensitve search
    set nofoldenable    " Make sure no lines are folded
"    set commentstring=# %s " Global Commenting for undetected files

" Split open at at the bottom and right!
    set splitbelow
    set splitright

" Cursor shape 
    let &t_SI = "\<Esc>[6 q" 
    let &t_SR = "\<Esc>[4 q" 
    let &t_EI = "\<Esc>[2 q" 

    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=darkgray ctermbg=18 
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=18 
    colorscheme default 
    set background=dark 
    set ts=2 sw=2 et 
    let g:indent_guides_auto_colors=0 
    let g:indent_guides_guide_size=1 
    let g:indent_guides_enable_on_vim_startup=1 


" Airline theme 
    let g:airline_theme='monochrome' 
    let g:airline_skip_empty_sections=1 
    if !exists('g:airline_symbols')   
        let g:airline_symbols = {} 
    endif 
    let g:airline#extensions#tabline#enabled=1 
    let g:airline#extensions#whitespace#enabled=0

" Folds 
    "set foldenable 
    "set foldlevelstart=10 
    "set foldnestmax=10 
    "set foldmethod=syntax

" Vim Live Preview
    let g:livepreview_previewer = 'evince'

" Convert code to HTML for my blog
    map <F11> :so ~/.vim/autoload/blog.vim 

" Disable auto commenting on new lines
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
    map <C-l> <C-w>l

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

" Copy to System's Clipboard
    vnoremap <leader>Y "*y
    vnoremap <leader>y "+Y

" Spell check set to F6
    map <F5> :setlocal spell! spelllang=en_us<CR>
    
" A Beautifull file explorer
    map <C-n> :NERDTreeToggle<CR>

" Map the Esc key to Capslock!
    au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" Turning Vim into an IDE

" Compile document
    map <F6> :w! \| !compile <c-r>%<CR><CR>

" Out file
    map <leader>o :!out <c-r>%<CR><CR>

" Clear .tex build files when i leave VIM
    autocmd VimLeave *.tex !texclear %

"  LaTeX 
    autocmd FileType tex setlocal commentstring=% %s
    autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ,toc \tableofcontents<Enter>
    autocmd FileType tex inoremap ,ct \center{}
    autocmd FileType tex inoremap ,c  <Esc>I%
    autocmd FileType tex inoremap ,cl \begin{<++>}<Enter><Enter>\end{<++>}
    autocmd FileType tex inoremap ,lx \LaTeX{}
    autocmd FileType tex inoremap ,ab \begin{abstract}<Enter><++><Enter>\end{abstract}
    autocmd FileType tex inoremap ,s \section{<++>}<Enter><++>
    autocmd FileType tex inoremap ,sc \subsection{<++>}<Enter><++>
    autocmd FileType tex inoremap ,l \label{<++>}
    autocmd FileType tex inoremap ,f \begin{figure}<Enter>\includegraphics{<++>}<Enter>\end{figure}
    autocmd FileType tex inoremap ,t \begin{table}<Enter>\centering<Enter>\begin{tabular}{<++>}<Enter><++><Enter>\end{tabular}<Enter>\end{table}
    autocmd FileType tex inoremap ,li \begin{enumerate}<Enter>\item<++><Enter>\end{enumerate}
    autocmd FileType tex inoremap ,ul \begin{itemize}<Enter>\item<++><Enter><\end{itemize}

" CPP 
    autocmd FileType cpp setlocal commentstring=// %s
    autocmd FileType cpp inoremap ,c <Esc>I//
    autocmd FileType cpp inoremap ,uc <Esc>I<Esc>xxx
    autocmd FileType cpp inoremap ,f for(int i = 0; i < <++>; i++)<Space>{<Enter><++><Enter>}
    autocmd FileType cpp inoremap ,if if(<++>)<Space>{<Enter><++><Enter>}
    autocmd FileType cpp inoremap ,nl for(int i = 0; i < <++>; i++)<Space>{<Enter>for(int j = 0; j < <++>; j++)<Space>{<Enter><++><Enter>}<Enter>}

" Python 
    autocmd FileType py inoremap ,f for<Space><++><Space>in<Space><++>:<Enter>
    autocmd FileType py inoremap ,c <Esc>I#

" Templates for LaTeX, CPP and C files
    au bufnewfile *.cpp 0r /home/elliot/.vim/cpp_header.temp
    au bufnewfile *.c 0r /home/elliot/.vim/c_header.temp
    au bufnewfile *.tex 0r /home/elliot/.vim/tex_header.temp


