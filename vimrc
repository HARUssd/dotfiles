set tabstop=4
set shiftwidth=4
set noexpandtab
set showmatch
set hlsearch
set laststatus=2
set ignorecase
set autoindent
set incsearch
colorscheme elflord
:syntax on
"autocmd BufRead *.tex set formatoptions=q
autocmd BufRead *.tex set tabstop=2
autocmd BufRead *.tex set shiftwidth=2
autocmd BufRead *.tex set expandtab
autocmd BufRead *.txt set formatoptions=q
autocmd BufRead *.htm* set formatoptions=q
autocmd BufRead *.bib set textwidth=1024
autocmd BufRead *.py set expandtab
autocmd BufRead *.sh colorscheme molokai
if exists('&colorcolumn')
	set colorcolumn=+1
endif

" encoding "
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,Shift_JIS,iso-2022-jp-3,ucs-bom,eucjp-ms,euc-jisx0213,euc-jp

" set ctags "
set tags=./tags,./TAGS,../tags,../TAGS,../../tags,../../TAGS,../../../tags,../../../TAGS
set tags+=tags;

" zenkaku-space "
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd VimEnter,WinEnter * match ZenkakuSpace /¡¡/
		autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
	augroup END
	call ZenkakuSpace()
endif

" search result display on center "
nmap n nzz
nmap N Nzz
nmap * *zz
nmap g* g*zz
nmap G# G#zz

" binary mode "
augroup Binary
	au!
	au BufReadPre	*.bin let &binary=1
	au BufReadPost	* if &binary | silent %!xxd -g 1
	au BufReadPost	* set ft=xxd | endif
	au BufWritePre	* if &binary | %!xxd -r | endif
	au BufWritePost	* if &binary | silent %!xxd -g 1
	au BufWritePost	* set nomod | endif
augroup END

" visual search "
vnoremap * "zy:let @/ = @z<CR>n
set ts=4
set sw=4

nmap <F3> <ESC>i#===========================================================<CR>#<CR>#<TAB><TAB>File    : <C-R>=expand("%")<CR><LF>#<TAB><TAB>Date    : <C-R>=strftime("%Y-%m-%d")<CR><LF>#<TAB><TAB>Author  : Haruki Shishido <CR>#<TAB><TAB><TAB><TAB><TAB>(shishido@ny.ics.keio.ac.jp)<CR>#<TAB><TAB>Version : 1.0.0<CR>#<CR>#===========================================================<CR><ESC>

hi Comment ctermfg=lightblue
