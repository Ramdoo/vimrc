"edit by Zhang Zhiji

" Ctrl + H                   --光标移当前行行首       [插入模式]
" Ctrl + J                   --光标移下一行行首       [插入模式]
" Ctrl + K                   --光标移上一行行尾       [插入模式]
" Ctrl + L                   --光标移当前行行尾       [插入模式]
" Ctrl + C                   --单源文件编译           [已配置 C/C++]
" Ctrl + R                   --单源文件运行           [已配置 C/C++ Ruby Bash]
" Ctrl + ]                   --转到函数定义
" Ctrl + T                   --返回调用函数
" Ctrl + E                   --一步加载语法模板和作者、时间信息
" ESC  + H                   --Normal模式下开启Devhelp查询功能

" <C-P>                      --关键字补全
" <C-X><C-L>                 --整行补全
" <C-X><C-O>                 --全能补全
" Tab键                      --插入模式下语法结构补全 [snipMate插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容
" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]

" jj                         --保存文件并留在插入模式 [插入模式]
" kk                         --返回Normal模式         [插入模式]
" nt                         --打开NERDTree           [非插入模式]
" tl                         --打开TagList            [非插入模式]
" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :se ft=cpp                 --手动选择语法高亮       [:set filetype=cpp 或 :set syntax=cpp 亦可]
" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件


" ---------- 主要插件详细用法说明 ---------------------
" :Tlist                     --呼出变量和函数列表     [TagList插件]
" :LoadTemplate              --呼出语法模板           [Load_Template插件]
" :AuthorInfoDetect          --添加作者、时间等信息   [NERD_commenter && authorinfo插件]

" ---------- snipMate [全局可用的补全关键字] ----------
" cprt                       --插入版权信息           [助记：copyright]
" date                       --插入当前时间
" fiok                       --插入文件的最后修改时间 [助记：file ok]
" desc                       --插入文件描述           [助记：description]
" 更多关键字可自行查看vimfiles/snippets下的各个文件   [Linux下为~/.vim/snippets]

" ---------- a.vim [自动切换C/C++同名头文件] ----------
" :A                         --切换同名头文件并独占整个屏幕
" :AS                        --切换同名头文件并垂直分屏，头文件在上
" :AV                        --切换同名头文件并水平分割，头文件在左


" ---------- NERDTree [智能文件浏览器] ----------------
" :NERDTree                  --启动NERDTree插件
" o [小写]                   --切换当前文件或目录的打开、关闭状态
" u                          --打开上层目录
" p [小写]                   --返回上层目录
" P [大写]                   --返回根目录
" K                          --转到当前目录第一个节点
" J                          --转到当前目录最后的节点
" m                          --显示文件系统菜单       [增、删、移]
" ?                          --弹出帮助菜单
" q                          --退出该插件

colorscheme evening          " 着色模式：黄色和粉红色为主
"set guifont=Monaco:h11       " 字体 && 字号
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=2             " 换行时行间交错使用2空格
set cindent shiftwidth=2     " 自动缩进2空格
set nu!                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
"set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
"set showmatch               " 显示括号配对情况
"set cursorline              " 突出显示当前行
"set nowrap                  " 设置不自动换行
set writebackup              " 设置无备份文件
set nobackup
"set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set tabstop=2                " 设置Tab键的宽度        [等同的空格个数]
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.c,*.cpp,*.h,*.cl,*.rb,*.sql,*.sh,*.vim,*.js,*.css,*.html 2match Underlined /.\%81v/

" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1


" ======= 引号 && 括号自动匹配 ======= "
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
":inoremap ` ``<ESC>i

function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
     return "\<Right>"
  else
     return a:char
  endif
endf

" ESC + H             Normal模式下开启Devhelp查询功能
function! DevHelpCurrentWord()
  let word = expand("<cword>")
  exe "!devhelp -s " . word . " &"
endfunction
nmap <esc>h :call DevHelpCurrentWord()<CR>

" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" :Tlist              调用TagList
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" :LoadTemplate       根据文件类型自动加载模板
let g:template_path='~/.vim/template/'

" snipMate            Tab智能补全
let g:snips_author='Ruchee'

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='Ruchee'
let g:vimrc_email='my@ruchee.com'
let g:vimrc_homepage='http://www.ruchee.com'

" Ctrl + H            将光标移到当前行的行首
imap <c-h> <ESC>I

" Ctrl + J            将光标移到下一行的行首
imap <c-j> <ESC>jI

" Ctrl + K            将光标移到上一行的末尾
imap <c-k> <ESC>kA

" Ctrl + L            将光标移到当前行的行尾
imap <c-l> <ESC>A

" Ctrl + E            一步加载语法模板和作者、时间信息
map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
imap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi

" jj                  保存当前文件并留在插入模式      [插入模式]
imap jj <ESC>:w<CR>li

" kk                  返回Normal模式，不执行保存      [插入模式]
imap kk <ESC>l

" nt                  打开NERDTree窗口，在左侧栏显示  [非插入模式]
map nt :NERDTree<CR>

" tl                  打开Taglist窗口，在右侧栏显示   [非插入模式]
map tl :Tlist<CR><c-l>


" ======= 编译 && 运行 ======= "
" 编译源文件
func! CompileCode()
  exec "w"
  if &filetype == "c"
    exec "!clang -std=c99 %<.c -o %<"
  elseif &filetype == "cpp"
    exec "!clang++ -std=c++98 %<.cpp -o %<"
  elseif &filetype == "ruby"
    exec "!ruby %<.rb"
  elseif &filetype == "sh"
    exec "!bash %<.sh"
  endif
endfunc

" 运行可执行文件
func! RunCode()
  exec "w"
  if &filetype == "c" || &filetype == "cpp"
    exec "! ./%<"
  elseif &filetype == "ruby"
    exec "!ruby %<.rb"
  elseif &filetype == "sh"
    exec "!bash %<.sh"
  endif
endfunc

" Ctrl + C 一键保存、编译
map <c-c> :call CompileCode()<CR>
imap <c-c> <ESC>:call CompileCode()<CR>
vmap <c-c> <ESC>:call CompileCode()<CR>

" Ctrl + R 一键保存、运行
map <c-r> :call RunCode()<CR>
imap <c-r> <ESC>:call RunCode()<CR>
vmap <c-r> <ESC>:call RunCode()<CR>


" ======= VimWiki ======= "
" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h4,h5,h6,pre,script,style'

let g:vimwiki_list = [{
\ 'path': '~/mysite/wiki',
\ 'path_html': '~/mysite/html/',
\ 'html_header': '~/mysite/template/header.html',
\ 'html_footer': '~/mysite/template/footer.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'Clang': 'c', 'C++': 'cpp', 'Lisp': 'lisp', 'Ruby': 'ruby', 'SQL': 'sql', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'CMake': 'cmake', 'JS': 'javascript', 'CSS': 'css', 'HTML': 'html', 'XML': 'xml'},}]

