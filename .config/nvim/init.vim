" Installing everything only when I need to
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Muh plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-markdown'
Plug 'elzr/vim-json'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rodjek/vim-puppet'
Plug 'pearofducks/ansible-vim'
Plug 'https://github.com/m-kat/aws-vim'
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" ansible-vim settings
let g:ansible_unindent_after_newline=1
let g:ansible_attribute_highlight='ob'

" deoplete settings
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" deoplete jedi settings
" NOTE: The below lines must be pointed at existing pyenv virtual envs for
" python2 and python3 respectively, otherwise autocomplete won't work
let g:python_host_prog = '/Users/cwilson/.pyenv/versions/nvim2/bin/python'
let g:python3_host_prog = '/Users/cwilson/.pyenv/versions/nvim3/bin/python'

" vim settings
syntax on
set number
set shiftwidth=2
set tabstop=2
set expandtab

" spell check in markdown
augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd BufRead,BufNewFile *.md setlocal spell
augroup END
