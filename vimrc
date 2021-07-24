"---Mappings and shortcuts---
nmap <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
"let mapleader = "\\"
"nmap <leader>l :set list!<CR>
"nmap <leader>i :set paste!<CR>
"ca ygi YcmCompleter GoToInclude
"ca ygdecl YcmCompleter GoToDeclaration
"ca ygd YcmCompleter GoToDefinition
"ca ygt YcmCompleter GoTo
"ca yst YcmCompleter GetType
"ca ysp YcmCompleter GetParent
"ca yf YcmCompleter FixIt
"ca ysd YcmCompleter GetDoc
"ca yc YcmForceCompileAndDiagnostics
"ca tn tabnew
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
"---Trailing characters---
set encoding=utf-8
set listchars=tab:>-,trail:.,precedes:<,extends:>
set clipboard=unnamedplus

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
"---Essentials---
set nocompatible
set nu
set wildmenu
set wildmode=full
set history=2000
set hidden
syntax on
syntax enable
highlight ColorColumn ctermbg=grey guibg=grey
set colorcolumn=80
highlight DiffAdd    cterm=BOLD ctermfg=0 ctermbg=22 gui=BOLD guifg=NONE guibg='#005f00'
highlight DiffDelete cterm=BOLD ctermfg=0 ctermbg=52 gui=BOLD guifg=NONE guibg='#5f0000'
highlight DiffChange cterm=BOLD ctermfg=0 ctermbg=23 gui=BOLD guifg=NONE guibg='#005f5f'
highlight DiffText   cterm=BOLD ctermfg=0 ctermbg=53 gui=BOLD guifg=NONE guibg='#5f005f'
set ignorecase
set smartcase
set incsearch
set hls
"---Plugins---
filetype off                  " required
filetype plugin off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-git'
"Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'
"Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-eunuch'
"Plugin 'tpope/vim-abolish'
"Plugin 'tpope/vim-afterimage'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'scrooloose/nerdtree'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vimwiki/vimwiki'
"Plugin 'Superbil/llvm.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end() " required
execute pathogen#infect()
"---Color scheme---
set t_Co=16
set background=dark
"---Project specific setting enable---
"set exrc
"set secure

let g:clang_format#code_style = "file"

augroup filetype

  au! BufRead,BufNewFile *.ll     set filetype=llvm
augroup END

augroup filetype
  au! BufRead,BufNewFile *.td     set filetype=tablegen
augroup END

augroup filetype
  au! BufRead,BufNewFile *.cl     set filetype=c
augroup END

filetype plugin indent on

"---Windows---
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

"---Tabs---
"map <C-S-]> gt
"map <C-S-[> gT
"map <C-1> 1gt
"map <C-2> 2gt
"map <C-3> 3gt
"map <C-4> 4gt
"map <C-5> 5gt
"map <C-6> 6gt
"map <C-7> 7gt
"map <C-8> 8gt
"map <C-9> 9gt
"map <C-0> :tablast<CR>

"---Edit---
" cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
"map <leader>ew :e %%
"map <leader>es :sp %%
"map <leader>ev :vsp %%
"map <leader>et :tabe %%

"---Tabulation and indentation---
"set ts=2 sts=2 sw=2 expandtab
"set smartindent
if has("autocmd")
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType c setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType llvm setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufNewFile,BufRead *.td setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cmake setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
"vnoremap <Tab> >gv
"vnoremap <S-Tab> <gv

"---Whitespaces---
"function! <SID>StripTrailingWhitespaces()
"    " Preparation: save last search, and cursor position.
"    let _s=@/
"    let l = line(".")
"    let c = col(".")
"    " Do the business:
"    %s/\s\+$//e
"    " Clean up: restore previous search history, and cursor position
"    let @/=_s
"    call cursor(l, c)
"endfunction

"nmap <leader>p :call <SID>StripTrailingWhitespaces()<CR>
" autocmd BufWritePre *.cpp,*.h,*.ll,*.js,.vimrc,CMakeLists.txt :call <SID>StripTrailingWhitespaces()

"---Spell checking---
"function! ToggleSpell()
"  if &spell==""
"    setlocal spell spelllang=en_us
"  else
"    setlocal nospell
"  endif
"endfunction

"map <silent> <F7> :call ToggleSpell()<CR>
"set spellsuggest=best,10
"let g:airline#extensions#tabline#enabled = 1
"set laststatus=2
"let g:airline_theme='badwolf'
