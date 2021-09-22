source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" ALE configs
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_error = '×'
let g:ale_sign_warning = '≈'
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
\}

call plug#begin(stdpath('data') . '/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'vim-airline/vim-airline'

  Plug 'cespare/vim-toml'
  Plug 'dense-analysis/ale'

  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
call plug#end()
