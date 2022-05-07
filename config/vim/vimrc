"{{{ basic settings
set nocompatible
set encoding=utf-8

filetype indent plugin on
syntax on
set mouse=a

set hidden
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum
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
set number
set relativenumber

set shiftwidth=4
set softtabstop=4
set expandtab
set scrolloff=8
set splitright
set splitbelow

set clipboard=unnamedplus
set foldmethod=marker

nnoremap <space> <nop>
let mapleader=" "
"}}}

"{{{ vim-plug
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'stsewd/fzf-checkout.vim'
" Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'vuciv/vim-bujo'
Plug 'chrisbra/Colorizer'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'vim-utils/vim-man'
Plug 'kergoth/vim-bitbake'
call plug#end()
"}}}

"{{{ colorscheme
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE
"}}}

"{{{ vim-airline
let g:airline_theme='bubblegum'
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
"}}}

"{{{ other plugins settings
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:is_posix = 1
let g:fugitive_gitlab_domains = {'ssh://git.ci.motional.com': 'https://gitlab.ci.motional.com'}

" bujo
nmap <Leader>tc <Plug>BujoChecknormal
nmap <Leader>ta <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4

" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=1

" Floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_autoclose = 1

let g:startify_bookmarks = [
            \ { 'i': '~/.config/i3/config' },
            \ { 'v': '~/.vimrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 'z': '~/.zshrc' },
            \ { 'w': '~/vimwiki/index.md' },
            \ '~/repo/personal',
            \ '~/repo/agent',
            \ '~/repo/av-stack',
            \ ]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"}}}

"{{{ key mappings
" Quicker window movement
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>wf :w!<cr>
nnoremap <leader>q :bd<cr>
nnoremap <leader>wq :wq<cr>
" Vertical and horizontal splits
nnoremap <leader>vs <C-w>v
nnoremap <leader>xs <C-w>S
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>
nnoremap <leader>u :bprevious<CR>
nnoremap <leader>ve :edit ~/.vimrc<cr>
tnoremap <leader><esc> <C-\><C-n>
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
nnoremap <C-a> <esc>ggVG
imap jk <esc>
imap ;; <esc>A;<esc>
nmap <silent> gf :edit <cfile><cr>
nmap <leader>Q :FloatermKill!<cr>:bufdo bdelete<cr>:qa<cr>
imap <F5> <esc> :w <cr> :FloatermNew --autoclose=0 --position=bottom --height=0.4 --width=0.9 compile-and-run %<cr>
nmap <F5> <esc> :w <cr> :FloatermNew --autoclose=0 --position=bottom --height=0.4 --width=0.9 compile-and-run %<cr>
nnoremap <leader>nt :NERDTreeToggle %<CR>
nmap <silent> <leader><cr> :noh<cr>
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>l :BLines<cr>
nnoremap <leader>rg :Rg<cr>
nnoremap <leader>gb :GBranches<cr>
nmap <F2> :Maps<cr>
cnoremap w!! w !sudo tee > /dev/null %

" vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
"}}}

"{{{ coc.vim
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
"}}}

