set nocompatible
set encoding=utf-8

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

if has('mouse')
    set mouse=a
endif

set hidden
set wildmenu
set wildmode=longest:full,full
set list
set listchars=tab:▸\ ,trail:·
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set cmdheight=2
set number
set relativenumber

set shiftwidth=4
set softtabstop=4
set expandtab
set scrolloff=8

set clipboard=unnamedplus
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall

nnoremap <space> <nop>
let mapleader=" "
" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'dbeniamine/cheat.sh-vim'
call plug#end()

" }}}

colorscheme gruvbox
set background=dark
" vim-airline settings --------------------------------------------------------
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" vim-airline settings end ---------------------------------------------------

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:is_posix = 1

let g:fugitive_gitlab_domains = {'ssh://git.ci.motional.com': 'https://gitlab.ci.motional.com'}

let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=1
nnoremap <leader>nt :NERDTreeToggle<CR>

nnoremap <leader>f :GFiles<CR>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>l :BLines<cr>
nnoremap <leader>rg :Rg<cr>
nnoremap <leader>gb :GBranches<cr>
nnoremap <F2> :Maps<cr>

" Quicker window movement
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>wf :w!<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>
" Vertical and horizontal splits
nnoremap <leader>vs <C-w>v
nnoremap <leader>xs <C-w>S
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>ve :edit ~/.vimrc<cr>

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

vnoremap < <gv
vnoremap > >gv
vnoremap p "_dP
vnoremap y myy`y
vnoremap Y myY`y
nnoremap Y y$
nnoremap <leader>xo :!xdg-open %<cr><cr>
imap jk <esc>
imap ;; <esc>A;<esc>
nmap <silent> gf :edit <cfile><cr>
nmap <leader>Q :bufdo bdelete<cr>

autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
autocmd ColorScheme * highlight SignColumn guibg=#adadad
autocmd ColorScheme * highlight CocWarningSign guibg=#ffffff

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Only show signcolumn on errors
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Apply AutoFix to problem on the current line.
nmap <leader>cf  <Plug>(coc-fix-current)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-x> <Plug>(coc-range-select)
xmap <silent> <C-x> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

noremap <F3> <esc> :w <cr> :make <cr>
noremap <F5> <esc> :w <cr> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %< % && ./%< <cr>
