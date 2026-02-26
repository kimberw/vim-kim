" =============================================================================
" vim_kim 配置文件
" 基于 amix/vimrc 定制
" =============================================================================

" 加载基础配置
source ~/.vim_kim/vimrcs/basic.vim

" -----------------------------------------------------------------------------
" Leader 键定义
" -----------------------------------------------------------------------------
let mapleader = ";"
let maplocalleader = ";"

" -----------------------------------------------------------------------------
" 基础设置
" -----------------------------------------------------------------------------
set rnu
highlight CursorLineNr guifg=#050505
set nu
set cin ts=4 sw=4 sts=4 et acd
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set cursorline

" -----------------------------------------------------------------------------
" 通用快捷键 (Normal + Visual)
" -----------------------------------------------------------------------------
" 复制到系统剪贴板
vnoremap <Leader>y "+y
noremap <Leader>p "+p

" 标签跳转
noremap <Leader>n <c-]>
noremap <Leader>b <c-t>

" NERDTree 切换
nnoremap <Leader>nf :NERDTreeToggle<CR>

" 禁用方向键 (可选启用)
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" -----------------------------------------------------------------------------
" 插入模式快捷键
" -----------------------------------------------------------------------------
" 快速括号
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t  <><esc>i

" Python 文件专用
autocmd FileType python inoremap $r return
autocmd FileType python inoremap $i import
autocmd FileType python inoremap $p print
autocmd FileType python inoremap $f # ---<space>

" JavaScript/TypeScript 文件专用
autocmd FileType javascript,typescript inoremap $r return
autocmd FileType javascript,typescript inoremap $f // ---<space>

" -----------------------------------------------------------------------------
" 命令行模式快捷键
" -----------------------------------------------------------------------------
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" -----------------------------------------------------------------------------
" 可视模式快捷键
" -----------------------------------------------------------------------------
" 搜索选中内容
vnoremap * :call VisualSelection('f')<CR>
vnoremap # :call VisualSelection('b')<CR>
vnoremap gv :call VisualSelection('gv', '')<CR>
vnoremap <Leader>r :call VisualSelection('replace')<CR>
vnoremap <Leader>v :'<'>GBrowse!<CR>

" 括号自动包围
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

" =============================================================================
" 插件配置 (vim-plug)
" =============================================================================

" 指定插件目录
call plug#begin('~/.vim_kim/my_plugins')

" -----------------------------------------------------------------------------
" 插件管理器
" -----------------------------------------------------------------------------
Plug 'junegunn/vim-plug'

" -----------------------------------------------------------------------------
" 文件浏览/搜索
" -----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'                 " 文件树面板
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                    " 模糊搜索

" -----------------------------------------------------------------------------
" 代码开发
" -----------------------------------------------------------------------------
Plug 'majutsushi/tagbar'                   " 代码结构面板
Plug 'ludovicchabant/vim-gutentags'        " 自动生成 tags
Plug 'tpope/vim-surround'                  " 括号/引号环绕
Plug 'tpope/vim-fugitive'                  " Git 集成
Plug 'airblade/vim-gitgutter'              " Git 变更显示
Plug 'scrooloose/nerdcommenter'            " 快速注释

" -----------------------------------------------------------------------------
" 代码补全/检查
" -----------------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'w0rp/ale'                              " 异步语法检查
Plug 'Chiel92/vim-autoformat'               " 代码自动格式化

" -----------------------------------------------------------------------------
" UI/体验
" -----------------------------------------------------------------------------
Plug 'junegunn/goyo.vim'                    " 专注模式
Plug 'mbbill/undotree'                      " 撤销历史树
Plug 'easymotion/vim-easymotion'            " 快速跳转
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " 多光标编辑

" -----------------------------------------------------------------------------
" 主题
" -----------------------------------------------------------------------------
Plug 'gruvbox-community/gruvbox'            " Gruvbox 主题

call plug#end()

" =============================================================================
" 插件相关配置
" =============================================================================

" -----------------------------------------------------------------------------
" gutentags 配置
" -----------------------------------------------------------------------------
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.tags_root']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" -----------------------------------------------------------------------------
" NERDTree 配置
" -----------------------------------------------------------------------------
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.git$', '\.svn$', 'node_modules']

" -----------------------------------------------------------------------------
" Tagbar 配置
" -----------------------------------------------------------------------------
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 30

" -----------------------------------------------------------------------------
" FZF 配置
" -----------------------------------------------------------------------------
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
\}

" -----------------------------------------------------------------------------
" Ale 配置
" -----------------------------------------------------------------------------
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" -----------------------------------------------------------------------------
" GitGutter 配置
" -----------------------------------------------------------------------------
let g:gitgutter_enabled = 1

" -----------------------------------------------------------------------------
" Goyo 配置
" -----------------------------------------------------------------------------
let g:goyo_width = 100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

" -----------------------------------------------------------------------------
" Undotree 配置
" -----------------------------------------------------------------------------
nnoremap <Leader>u :UndotreeToggle<CR>

" -----------------------------------------------------------------------------
" EasyMotion 配置
" -----------------------------------------------------------------------------
let g:easymotion_leader_key = '<Leader>'

" -----------------------------------------------------------------------------
" vim-easymotion 映射
" -----------------------------------------------------------------------------
nmap f <Plug>(easymotion-f)
nmap F <Plug>(easymotion-F)
nmap t <Plug>(easymotion-t)
nmap T <Plug>(easymotion-T)
nmap s <Plug>(easymotion-s)
nmap / <Plug>(easymotion-sn)
omap z <Plug>(easymotion-s)

" -----------------------------------------------------------------------------
" vim-surround 映射 (已内置)
" -----------------------------------------------------------------------------
" 使用 ds" / cs" / ysiw" 等命令

" -----------------------------------------------------------------------------
" vim-visual-multi 配置
" -----------------------------------------------------------------------------
let g:vm_enable_normal_usage = 1
nmap <Leader>w <Plug>(vm-visual-multi)

" -----------------------------------------------------------------------------
" Autoformat 配置
" -----------------------------------------------------------------------------
noremap <F3> :Autoformat<CR>

" -----------------------------------------------------------------------------
" EasyAlign 映射 (如果安装了 vim-easy-align)
" -----------------------------------------------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" -----------------------------------------------------------------------------
" Gruvbox 主题配置 (插件安装后启用)
" -----------------------------------------------------------------------------
" colorscheme gruvbox
" set background=dark

" -----------------------------------------------------------------------------
" 其他常用映射
" -----------------------------------------------------------------------------

" 快速保存
noremap <Leader>w :w<CR>

" 快速退出
noremap <Leader>q :q<CR>

" 刷新配置
noremap <Leader>r :source ~/.vim_kim/my_configs.vim<CR>

" 删除空行
nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" =============================================================================
" 加载扩展配置
" =============================================================================
source ~/.vim_kim/vimrcs/extended.vim
source ~/.vim_kim/vimrcs/filetypes.vim

" =============================================================================
" 插件快捷键汇总
" =============================================================================
"
" <Leader>nf  - NERDTree 切换
" <Leader>tt  - Tagbar 切换
" <Leader>u   - Undotree 切换
" <Leader>d   - GitGutter 切换
" <Leader>z   - Goyo 专注模式
" <F3>        - Autoformat 代码格式化
" <Leader>m   - 删除所有空行
"
" 文件搜索:
" :Files      - FZF 文件搜索
" :Rg         - FZF 内容搜索
" :Buffers    - FZF 缓冲区搜索
"
" EasyMotion:
" f{char}     - 向前跳转到字符
" F{char}    - 向后跳转到字符
" t{char}    - 向前跳转到字符前
" T{char}    - 向后跳转到字符后
" s{char}    - 两字符跳转
" /{char}    - 多字符搜索
"
" 标签跳转:
" <Leader>n  - 跳转到定义
" <Leader>b  - 跳回
"
