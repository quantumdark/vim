set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Include connected plugins
source ~/.vim/plugins.vim

filetype plugin indent on     " required!

if has("gui_running")
    syntax on           " syntax-highlighting
    set background=light " Backgroud
    colors lucius       " Color scheme
    set guioptions=g    " Disable all GUI elements
    set guioptions+=c   " Enable Console-based dialogs for simple queries
    set guifont=Menlo\ Regular\ for\ Powerline:h12
else
    syntax on
    set t_Co=256
    set background=dark
    colors lucius

    hi clear SpellBad
    hi SpellBad cterm=underline,bold ctermfg=red
    hi SpellCap cterm=underline,bold ctermfg=red

    if $TMUX == ''
        " Set the cursor to a vertical line in insert mode and a
        " solid block in command mode
        let &t_SI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
        " enable resize vim splits inside tmux
        set ttymouse=xterm2
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    endif

    set timeout timeoutlen=1000 ttimeoutlen=10 " Speed up esc button
endif

" Ebable colorcolumn
execute "set colorcolumn=" . join(range(81,335), ',')

if has('multi_byte')
    set listchars=tab:»\ ,trail:·,eol:¶,extends:→,precedes:←,nbsp:×
endif

" Vertical split chars
set fillchars=stl:\ ,stlnc:\ ,vert:│

if has("linebreak")
      let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines
endif

" Cursor position free mode
"set ve=all nosol

set foldmethod=manual " Folding method

set foldcolumn=1 " Folding column size

" Autocomplete option: do not select the first candidate automatically
set completeopt=menuone,longest

set confirm " Get a dialog when :q, :w, or :wq fails

let mapleader = "," " Map leader

let maplocalleader = "_" " Local leader

set hlsearch        " Highlight search terms (very useful!)

set incsearch       " Show search matches while typing

set lazyredraw " Don't redraw while executing macros (good performance config)

set laststatus=2 " Enable statusline

set magic " For regular expressions turn magic on

set ignorecase " Searches are Non Case-sensitive

" set cursorline " Highlight current cursor position

set smartcase " Do smart case matching when searching

set showmatch " Show matching brackets when text indicator is over them

set showcmd " Show incomplete cmds down the bottom

set showmode " Show current mode down the bottom

set title " Show title

set acd " Vim will change the current working directory whenever you open a file

set expandtab " Use space instead of tab

set autoread " Reload files changed outside automatically

set tabstop=4 " 1 tab == 4 spaces

set shiftwidth=4

set smarttab " Be smart when using tabs

set autoindent " Enable auto indent

set smartindent " Smart indent

set wrap " Enable word wrap

" set nowrap " Disable word wrap

set noerrorbells visualbell t_vb= " No annoying sound on errors

set encoding=utf8 " Default encoding

set termencoding=utf-8 " Terminal encoding

set fileencodings=utf8,cp1251 " Supported file encodings

set number " Enable line numbers

set ruler " Always display cursor position

if has('mouse')
    set mouse=a " Mouse support
    set mousemodel=popup
    set mousehide " Hide cursor when typing
endif

set hidden " A buffer becomes hidden when it is abandoned

set noswapfile " Disable swap files

set undofile " Persistent undo

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

set noautochdir " Change the current working directory whenever you open a file

set wildmenu " Turn on the Wild menu

set wildmode=list:longest,list:full " Wildmenu configuration

set wildignore+=*.o,*.pyc,*.jpg,*.png,*.gif,*.db,*.obj,.git " Ignore compiled files

set conceallevel=2 " Conceal level

set ttyfast " Optimize for fast terminal connections

set path=.,,**

if has("autocmd")
    " Python: jedi-vim autocomplete options
    au FileType python set omnifunc=jedi#completions

    " Python: jedi-vim disable auto preview docs
    au FileType python setlocal completeopt-=preview

    " Python indentation
    " About nosmartindent please look this link
    " http://stackoverflow.com/questions/2063175/vim-insert-mode-comments-go-to-start-of-line
    au FileType python setlocal expandtab shiftwidth=4 tabstop=8 nosmartindent

    " JavaScript indentation
    au FileType javascript setlocal expandtab shiftwidth=2 tabstop=8

    " JavaScript autocomplete
    au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    au FileType javascript map <leader>d :TernDef<cr>
    au FileType javascript map <leader>r :TernRename<cr>
endif

let g:html_indent_inctags = "html,body,head,tbody"

" Another stuff (plugins configurations, keymaps and colors)
source ~/.vim/stuff.vim

