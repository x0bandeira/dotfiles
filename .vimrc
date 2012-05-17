set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'

Bundle 'FuzzyFinder'

Bundle 'altercation/solarized', {'rtp': 'vim-colors-solarized/'}

Bundle 'ervandew/supertab'

Bundle 'https://github.com/jondistad/vimclojure'
Bundle 'https://github.com/bbommarito/vim-slim.git'

filetype plugin indent on

set number 
set expandtab 
set tabstop=2
set shiftwidth=2 
set smartindent
set autoread

set incsearch
set hlsearch

set cursorline
set scrolloff=4

set hidden

set mouse=a

set guifont=Inconsolata\ Bold\ 9

let mapleader = ","
let g:mapleader = ","

map <right> :bn<cr>
map <left>  :bp<cr>

map <leader>t :FufCoverageFile<cr>


"function! RepoInfo()
"  let gitBranch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
"  let repoDir = system("basename $(pwd) | sed -e 's/\\n//'")
"  
"  let info = ': ' . repoDir
"  
"  if gitBranch != ''
"    let info .= ' » ' . gitBranch
"  end 
"
"  return substitute(info, '\n', '', 'g')
"endfunction
"
"set laststatus=2
"if has('gui_running')
"  set statusline=%t\ [%l,%c]\ \ \ \ \ \ %{RepoInfo()}\ %m
"end

autocmd BufNewFile,BufRead *.scss setfiletype css
autocmd BufNewFile,BufRead *.clj setfiletype clojure
autocmd BufNewFile,BufRead *.slim setfiletype slim
