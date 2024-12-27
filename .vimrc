set autoindent
set smartindent
set showmatch
set ruler
set nohls
set nu
syntax on
set backspace=2
set nocompatible
set encoding=utf-8
highlight Comment ctermfg=Blue
if &diff
    colorscheme mycolorscheme
endif


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Normal pasting
set pastetoggle=<F2>


" Disable stupid backup and swap files - they trigger too many events
" " for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" Indent in visual mode using <,> keys.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Rebind <Leader> key
" " I like to have it here becuase it is easier to reach than the default and
" " it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


set statusline=%F%m%r%h%w\%=[L:\%l\ C:\%c\ P:\%p%%]
hi statusline ctermfg=black ctermbg=darkgreen
set laststatus=2


autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype indent on      " load file-specific indentation

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
" Note: Most plugin managers will do this automatically!
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

let g:UltiSnipsSnippetDirectories=["UltiSnips", "MySnippets"]

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

imap jj <Esc>
