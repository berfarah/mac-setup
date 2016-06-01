" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')

" Fancy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'chriskempson/base16-vim'

" Rename files from within vim
Plug 'tpope/vim-eunuch'

" Split navigation that works with tmux
Plug 'christoomey/vim-tmux-navigator'

" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'rstacruz/sparkup', { 'for': ['html', 'css'] }

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic', { 'for': ['ruby', 'go', 'javascript', 'css'] }

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'

" Line matching via %
Plug 'matchit.zip'

" Better autocomplete
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Sidebar + git status + persistence
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Split and join lines of code intelligently
Plug 'AndrewRadev/splitjoin.vim'

" Make commenting easier
Plug 'tpope/vim-commentary'


" Other plugins require curl
if executable("curl")
    " Gist: Post text to gist.github
    Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
endif

filetype plugin indent on                   " required!
call plug#end()

