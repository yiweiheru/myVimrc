set nocompatible              			"We want the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','				"The default leader is \, but a comma is much better.	

set backspace=indent,eol,start			"Make backspace behave like every other editor.
set nonumber					"Show the line numbers.
set noerrorbells visualbell t_vb=		"No damn error bells.
set autowriteall				"Automatically write the file when switch the buffers.

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
        

set noswapfile



"------------------Search------------------"
set hlsearch					"Highlight the target word.
set incsearch					"Seaerch by a incrimental way dynamiclly.




"------------------WindowSplitting------------------"
set splitbelow					"Set the current cursor in the below new opened window.
set splitright					"Set the current cursor in the right new opened window.

"Simplify the way to goto the wanted window.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>				
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"------------------Visuals------------------"

colorscheme molokai
set t_CO=256					"Use 256 colors. This is useful for Terminal Vim.
set guifont=Monaco:h16
set guioptions-=e				"Remove the Gui tabs.


set guioptions-=l				"Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R


"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg


"Get rid of the ugly split borders.
hi vertsplit guibg=bg guifg=bg



"------------------Plugins------------------"
"/
"/ CtrlP
"/
nmap <Leader>e :CtrlPBufTag<cr>
nmap <Leader>r :CtrlPMRUFiles<cr>



"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0			"Use the Vinegar without effect of NERDTree.



"/
"/ Greplace.vim
"/
set grepprg=ag					"We want to use Ag for the search.
let g:grep_cmd_opts = '--line-numbers --noheading'



"/
"/ vim-multiple-cursors
"/
set selection=inclusive


"------------------Mappings------------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.vim/vimrc<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :tabedit ~/.vim/snippets/


"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>


"Make NERDtree easy to toggle.
nmap <Leader>1 :NERDTreeToggle<cr>

"Find the ctags easily.
nmap <Leader>f :tag<space>

"<Esc> key in insert mode.
"imap jj <Esc>


"------------------Auto-Commands------------------"

"Automaticlly source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




" Notes and Tips
" - press 'zz' to instantly center the line where the cursor is located.
" - press <c-]> to instantly locate the tag; press <c-^> to return.
" - <cs ' " > change surroundings by the Plugins vim-surround.
