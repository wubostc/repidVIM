"==========================================
" Link: https://github.com/wubostc/repidVIM
" Author: wubostc
" Version: beta
" Email: 913721086@qq.com
" Desc:
"==========================================

set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

"-------------------Status line------------------------------
"--vim-airline
Plugin 'vim-airline/vim-airline'
"vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'
"-------------------Status line------------------------------


"-------------------Code Completion------------------------------
"currently supported languages, look at the following.
"C          ->      clang
"C++        ->      clang
"JavaScript ->      tern_for_vim
"PHP        ->      phpcomplete.vim
Plugin 'Valloric/YouCompleteMe'
"-------------------Code Completion------------------------------

"-------------------Code analysis------------------------------
"Asynchronous Lint Engine(the current analysis engine).
"C          ->      clang
"C++        ->      clang
"CSS        ->      stylelint
"HTML       ->      HTMLHint
"JavaScript ->      eslint
"Shell      ->      shellcheck
Plugin 'w0rp/ale'
"-------------------Code analysis------------------------------


"-------------------Bash------------------------------
"Write and run BASH-scripts using menus and hotkeys.
"Plugin 'vim-scripts/bash-support.vim'
"-------------------Bash------------------------------

"-------------------CPP------------------------------
"--cpp14语法高亮
Plugin 'octol/vim-cpp-enhanced-highlight'
" STL-Syntax
Plugin 'Mizuchi/STL-Syntax'
"This Vim plugin will help switching between companion files (e.g. ".h" and ".cpp" files)
Plugin 'derekwyatt/vim-fswitch'
"-------------------CPP------------------------------
"--ctrlsf--内容查找 requier installed ag or ack
"Plugin 'dyng/ctrlsf.vim'


"--vim-easymotion
"Plugin 'https://github.com/easymotion/vim-easymotion'

"--vim-autoformate--
"Plugin 'Chiel92/vim-autoformat'


"--快速替换
Plugin 'terryma/vim-multiple-cursors'

"--tagbar
Plugin 'https://github.com/majutsushi/tagbar'

"-------------------html+css------------------------------
" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
Plugin 'othree/html5.vim'
" CSS3 syntax (and syntax defined in some foreign specifications) support
Plugin 'hail2u/vim-css3-syntax'
"emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plugin 'mattn/emmet-vim'
"css/less/sass/html color preview for vim
Plugin 'gko/vim-coloresque'
"always highlights the enclosing html/xml tags
Plugin 'Valloric/MatchTagAlways'
"-------------------html+css------------------------------

"-------------------JSON------------------------------
" vim-json
Plugin 'elzr/vim-json'
"-------------------JSON------------------------------


"-------------------PHP------------------------------
" Improved PHP omni-completion. Based on the default phpcomplete.vim.
Plugin 'shawncplus/phpcomplete.vim'
" Up-to-date PHP syntax file(5.3-7.1 support)
Plugin 'StanAngeloff/php.vim'
"-------------------PHP------------------------------


"-------------------Javascript------------------------------
"A vim javascript indent script
Plugin 'jiangmiao/simple-javascript-indenter'
"Javascript indenter (HTML indent is included)
Plugin 'vim-scripts/JavaScript-Indent'
"provides syntax highlighting and improved indentation.
Plugin 'pangloss/vim-javascript'
"Syntax file for JavaScript libraries.
Plugin 'othree/javascript-libraries-syntax.vim'
"Generate JSDoc to your JavaScript code.
Plugin 'heavenshell/vim-jsdoc'
"provides Tern-based JavaScript editing support.
Plugin 'ternjs/tern_for_vim'
"-------------------Javascript------------------------------



"-------------------Easily use------------------------------
"--undotree--撤销管理
Plugin 'https://github.com/mbbill/undotree'
"Smooth scrolling(<c-u> <c-d>)
Plugin 'terryma/vim-smooth-scroll'
"Adds file type glyphs/icons to popular Vim plugins.
Plugin 'ryanoasis/vim-devicons'
"Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'
"A simple, easy-to-use Vim alignment plugin.
"Plugin 'junegunn/vim-easy-align'
" 显示代码尾部空格
Plugin 'vim-scripts/ShowTrailingWhitespace'
"--NERDCommenter
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
"display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'
"-------------------Easily use------------------------------

"-------------------Explorer------------------------------
"Allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'
"-------------------Explorer------------------------------


"-------------------Color Scheme------------------------------
"Collection of awesome color schemes for Vim, merged for quick use.
Plugin 'rafi/awesome-vim-colorschemes'
"-------------------Color Scheme------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""Vundle""""""""""""""""""

syntax enable
syntax on
filetype on
filetype plugin on
filetype plugin indent on

" 语法提示支持c++11
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'


set ignorecase		    	" 搜索模式里忽略大小写
"set smartcase		    	" 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite		    	" 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
"set autoindent
set smartindent         	" 智能对齐方式
set cindent		        	" 使用 C/C++ 语言的自动缩进方式
"c缩进方式
"set cinoptions=f0,{0,t0,:1s,i1s,n-2,p0,c3,(0,U1,=1s,>1s,=1s,g0,N-s
set cinoptions=>1s,e0,n0,f0,{0,}0,^0,L-1,:1s,=1s,l0,b0,t0,p0,c3,(0,U1,M0,m0
"cpp缩进方式
set cinoptions+=g0,h1s,N0,i1s
"js缩进方式
set cinoptions+=j1,J1,)50,*100
"set backspace=2	    	" 设置退格键可用
set showmatch		    	" 设置匹配模式，显示匹配的括号
set linebreak		    	" 整词换行
set whichwrap=b,s,<,>,[,]	" 光标从行首和行末时可以跳到另一行去
"set hidden             	" Hide buffers when they are abandoned
set mouse=a 		    	" Enable mouse usage (all modes)
set number	    	    	" 显示行号
"set previewwindow	    	" 标识预览窗口
set history=50		    	" set command history to 200

set expandtab			    " 制表符是否扩展为空格
set tabstop=4			    " 制表符(tab键)的宽度
set softtabstop=4		    " 软制表符的宽度
set shiftwidth=4		    " 换行缩进

set laststatus=2            " statebar airline

"标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
set ruler

" 基于缩进或语法进行代码折叠
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

set showcmd			        " 命令行显示输入的命令
set showmode		    	" 命令行显示vim当前模式

set incsearch		    	" 输入字符串就显示匹配点
set hlsearch            	" 高亮显示搜索结果

" Vim 内部使用的字符编码方式
set encoding=UTF-8

" 设置文件读取格式
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1
"set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 高亮显示当前行列
set cursorline
"set cursorcolumn

" vim 自身命令行模式智能补全
set wildmenu

" 设置退格键
set backspace=indent,eol,start

set cmdheight=1

set modeline
"------------------------------------------------------------------

autocmd BufReadPost  *      call Main(0)
autocmd BufNewFile   *.*    call Main(1)


let s:f_mapkey = 0

function! Main(args_)
    if a:args_ != 0
        call AddHeader()
    endif
    call InitCommPlugins()
    call InitUI()
    call MapKeys()
    call AddEventListener()
    call AutoComplete()
endfunc

function! AddHeader()
    let l:ft = &filetype

    if l:ft == 'python'
        call setline(1, '# -*- coding: utf-8 -*-')
        call setline(2, '')
        call setline(3, '"""   """')
        call setpos('.', [0, 3, 5, 0])
    endif
    "set insertmode
endfunc

function! AddEventListener()
    " :read path/filename
    autocmd! FileReadPre   * normal mz
    autocmd! FileReadPost  * normal 'z

    autocmd! BufWritePre,FileWritePre *.* call DelWhitespace()

    "autocmd! QuitPre * call QuitPre()
    let l:ft = &filetype

    if strlen(l:ft) == 0
        " :set ft=???
        autocmd FileType * call AutoComplete()

        autocmd FileReadPost *.c,*.cpp,*.h set ft=cpp
        autocmd FileReadPost *.js          set ft=javascript
        autocmd FileReadPost *.html        set ft=html
        autocmd FileReadPost *.css         set ft=css
        autocmd FileReadPost *.less        set ft=less
        autocmd FileReadPost *.json        set ft=json
        autocmd FileReadPost *.py          set ft=python
    endif

endfunc

function! DelWhitespace()
    "if confirm("trim whitespace?","&yes\n&no",2,"Question") == 1
    try
        exec "%s/\\s\\+$//g"
    catch /E486:/
        "nothing...
    endtry
    "endif
endfunc


function! AsynChecker()
    "ale
    let &runtimepath.=',~/.vim/bundle/ale'
    let g:ale_sign_error = '✘'
    let g:ale_sign_warning = '⚠'
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_statusline_format = ['✘ %d', '⚠ %d', '⬥ ok']
    let g:airline#extensions#ale#enabled = 1

    let g:ale_html_htmlhint_executable = 'htmlhint'

    let g:ale_javascript_eslint_executable = 'eslint'

    let g:ale_css_stylelint_executable = 'stylelint'

    "let g:ale_cpp_gcc_options = '-std=c++14 -Wall'
    let g:ale_cpp_clang_options = '-std=c++14 -Wall'

    "let g:ale_c_gcc_options = '-std=c11 -Wall'
    let g:ale_c_clang_options = '-std=c11 -Wall'

    "Installing:
    "   apt-get install shellcheck
    "let b:ale_sh_shellcheck_exclusions = 'SC2034,SC2154,SC2164'
    let g:ale_sh_shellcheck_executable = 'shellcheck'


    "Installing:
    "   apt-get install vim-vint
    let g:ale_vim_vint_show_style_issues = 1

    "Installing:
    "   apt install pylint3
    let g:ale_python_pylint_executable = 'pylint3'
    "pylint3 --generate-rcfile
    "let g:ale_python_pylint_options = '-rcfile /path/to/pylint.rc'
endfunc


function! MapKeys()
    "use clipboard to copy and paste
    noremap <Leader>y "+y
    noremap <Leader>p "+gp

    "exit the VIM window
    nnoremap <Leader>q :q<CR>
    "save the file
    nnoremap <Leader>w :w<CR>
    "force save
    nnoremap <Leader>W :w !sudo tee %<CR>
    "save the file then exit
    nnoremap <Leader>x :x<CR>
    "Quickly switch labels
    nnoremap <Leader><tab> :tabnext<CR>
    "fast indentation
    nnoremap <Space> i<Space><Esc>l


    "tabnew && buffer
    nnoremap <C-t> :tabnew<CR>
    nnoremap <Leader><tab> :tabnext<CR>
    nnoremap <Leader><Leader><Tab> :bnext<CR>

    inoremap <C-s> <Esc>:w<CR>
    nnoremap <C-s> :w<CR>

    "try
    "iunmap   <C-s>
    "catch /E31:/
    "nothing...
    "endtry
endfunc

" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC


function! SetIndent(n_)
    exec 'set shiftwidth =' . a:n_
    exec 'set tabstop    =' . a:n_
    exec 'set softtabstop=' . a:n_
endfunc

function! AutoComplete()

    let l:ft = &filetype

    if strlen(l:ft) == 0 && s:f_mapkey == 0
        "call ReContext()

        "path complete only
        inoremap <C-j> <C-x><C-f>

        let s:f_mapkey = 1

        return 0
    endif

    call AsynChecker()
    call YCM()


    if l:ft == 'sh'

        call setline(1, "\#!/bin/bash")
        normal o
        normal o

    elseif match(l:ft, 'css$\|less$') > -1

        call SetIndent(2)
        call CompleteCSS()

    elseif l:ft == 'html'

        call SetIndent(2)
        call CompleteHTML()

    elseif l:ft == 'js'

        call CompleteJS()

    elseif l:ft == 'json'

        call CompleteJSON()

    elseif match(l:ft, 'c$\|cpp$\|h$') > -1

        call CompleteC()
        call SetTags()

    elseif l:ft == 'php'

        call CompletePHP()

    elseif l:ft == 'python'

        call CompletePython()

    endif
endfunc

function! InitCommPlugins()
    "auto-pairs
    " input:  if(a[3])
    " output: if(a[3])| (In Fly Mode)
    let g:AutoPairsFlyMode = 0

    "vim-smooth-scroll
    noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
    noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
    "noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
    "noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


    "ag
    "let g:ackprg = 'ag --nogroup --nocolor --column'
    " or:
    let g:ackprg = 'ag --vimgrep'


    "ctrlsf
    " 区分大小写 (yes,no,smart)
    let g:ctrlsf_case_sensitive = 'yes'

    " g:ctrlsf_default_root defines how CtrlSF find search root when no explicit
    " path is given. Two possible values are cwd and project. cwd means current
    " working directory and project means project root. CtrlSF locates project
    " root by searching VCS root (.git, .hg, .svn, etc.)
    let g:ctrlsf_default_root = 'cwd'

    " 搜索整个 ctrlsf_default_root 目录
    nnoremap <Leader>f :CtrlSF<CR>
    vnoremap <Leader>f :CtrlSF<CR>

    " 窗口宽 30%
    let g:ctrlsf_winsize = '30%'

    let g:ackprg='ap --nogop --nocolo --column'

    " -R - Use regular expression pattern.
    " -I, -S - Search case-insensitively (-I) or case-sensitively (-S).
    " -C, -A, -B - Specify how many context lines to be printed, identical to their counterparts in Ag/Ack.
    " Read :h ctrlsf-arguments for a full list of arguments.

    "nmap     <C-F>f <Plug>CtrlSFPrompt
    "vmap     <C-F>f <Plug>CtrlSFVwordPath
    "vmap     <C-F>F <Plug>CtrlSFVwordExec
    "nmap     <C-F>n <Plug>CtrlSFCwordPath
    "nmap     <C-F>p <Plug>CtrlSFPwordPath
    "nnoremap <C-F>o :CtrlSFOpen<CR>
    "nnoremap <C-F>t :CtrlSFToggle<CR>
    "inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


    "undotree
    " 撤销
    nnoremap <F3> :UndotreeToggle<CR>
    inoremap <F3> <Esc> :UndotreeToggle<CR>


    "easymotion
    " Disable default mappings
    "let g:EasyMotion_do_mapping = 0

    " Jump to anywhere you want with minimal keystrokes, with just one key
    " binding.
    "`s{char}{label}`
    "nmap s <Plug>(easymotion-overwin-f)
    " or
    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more comfortable.
    "nmap s <Plug>(easymotion-overwin-f2)

    " Turn on case insensitive feature
    "let g:EasyMotion_smartcase = 1

    " JK motions: Line motions
    "map <Leader>j <Plug>(easymotion-j)
    "map <Leader>k <Plug>(easymotion-k)



    "快速替换
    let g:multi_cursor_next_key = '<C-n>'

    "去掉行尾空格
    nnoremap <leader>t :%s/\s\+$//<cr>:let @/=''<cr>
endfunc

function! InitUI()
    call InitStatebar()
    call InitNERDTree()
    call InitTagbar()
    call ShowIndent(1)
    call SetTheme()
endfunc


function! SetTags()
    "ctags
    "set tags+=/usr/include/c++/tags
    set tags+=/usr/include/tags
endfunc

function! YCM()
    " 输入第一个字符就开始补全
    let g:ycm_min_num_of_chars_for_completion = 1

    " 只加载一次 .ycm_extra_conf.py 文件
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    " 开启 YCM 标签补全引擎 (ctags)(占内存)
    "let g:ycm_collect_identifiers_from_tags_files = 1

    " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
    let g:ycm_confirm_extra_conf = 1


    " 语法关键字补全
    let g:ycm_seed_identifiers_with_syntax = 1

    " 错误和警告信息
    let g:syntastic_error_symbol = '✘'
    let g:syntastic_warning_symbol = '⚠'

    " 不缓存来自omnifunc，这可能导致计算机运行缓慢
    let g:ycm_cache_omnifunc = 1

    let g:ycm_disable_for_files_larger_than_kb = 10000

    let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
    let g:ycm_python_binary_path = '/usr/bin/python2.7'


    " 在补全完成后自动关闭函数候选列表
    let g:ycm_autoclose_preview_window_after_completion = 0

    " 离开插入模式后自动关闭预览窗口
    autocmd InsertLeave * if pumvisible() == 0|pclose|end

    if s:f_mapkey
        try
            iunmap   <C-j>
        catch /E31:/
            "nothing...
        endtry
    endif
    "if hasmapto('<C-x><C-f>', 'i')
    "iunmap <C-j>
    "endif
    " 全能补全和路径补全
    inoremap <C-j> <C-x><C-o>

    " 回车即选中当前项
    inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"

    " 跳到声明
    nnoremap <C-F12> :YcmCompleter GoToDeclaration<CR>
    inoremap <C-F12> <Esc> :YcmCompleter GoToDeclaration<CR>

    " 跳到定义
    nnoremap <F12> :YcmCompleter GoToDefinition<CR>
    inoremap <F12> <Esc> :YcmCompleter GoToDefinition<CR>

    " 返回类型
    vnoremap <leader>g :YcmCompleter GetType<CR>
    nnoremap <leader>g :YcmCompleter GetType<CR>

    " 调用此命令将强制YCM立即重新编译文件和显示遇到的任何新的诊断方法
    "nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
    "inoremap <F5> <Esc> :YcmForceCompileAndDiagnostics<CR>

    let g:ycm_semantic_triggers =  {
                \   'c' : ['->', '.'],
                \   'objc' : ['->', '.'],
                \   'ocaml' : ['.', '#'],
                \   'cpp,objcpp' : ['->', '.', '::'],
                \   'perl' : ['->'],
                \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
                \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!(?=[a-zA-Z]{3,4})'],
                \   'html': ['<', '"', '</', ' '],
                \   'vim' : ['re![_a-za-z]+[_\w]*\.'],
                \   'ruby' : ['.', '::'],
                \   'lua' : ['.', ':'],
                \   'erlang' : [':'],
                \   'haskell' : ['.', 're!.'],
                \   'less,css': [ 're!^\s{2,4}', 're!:\s+' ],
                \ }
endfunc


function! InitStatebar()
    "airline
    let g:airline#extension#ycm#enabled = 1
    let g:airline#extension#ycm#error_symbol = 'E:'
    let g:airline#extension#ycm#warning_symbol = 'W:'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1

    "airline-theme
    let g:airline_theme='cobalt2'

    "vim-devicons
    "for vim-airline
    let g:airline_powerline_fonts = 1
endfunc

function! InitNERDTree()
    "NERDTree
    " open a NERDTree automatically when vim starts up
    "autocmd VimEnter * NERDTree

    " open/close the NERDTree with F2
    nnoremap <F2> :NERDTreeToggle<CR>
    "inoremap <F2> <Esc> :NERDTreeToggle<CR>

    "" bookmarks
    let g:NERDTreeShowBookmarks = 1

    "" hidden of files
    "let NERDTreeShowHidden = 1

    " NERDTree 子窗口中不显示冗余帮助信息和书签
    let g:NERDTreeMinimalUI = 1

    let g:NERDTreeWinSize = 30
    let g:NERDTreeWinPos = 'left'

    let g:NERDTreeShowLineNumbers = 1
endfunc


function! InitTagbar()
    "tagbar
    " 快捷键打开/关闭
    nnoremap <F4> :TagbarToggle<CR>
    inoremap <F4> <Esc> :TagbarToggle<CR>

    " 不显示最上面的帮助信息及全页显示函数信息
    let g:tagbar_compact = 1

    " the path of ctags
    let g:tagbar_ctags_bin = '/usr/bin/ctags'

    " you know
    let g:tagbar_width = 24

    " you know
    "let g:tagbar_atoclose = 1

    " it will be automatically load the tagbar when you open the following types of files
    "autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx call tagbar#autoopen()

    " you know
    "let g:tagbar_left = 1


    " 设置 ctags 对哪些代码标识符生成标签
    let g:tagbar_type_cpp = {
                \ 'kinds' : [
                \ 'c:classes:0:1',
                \ 'd:macros:0:1',
                \ 'e:enumerators:0:0',
                \ 'f:functions:0:1',
                \ 'g:enumeration:0:1',
                \ 'l:local:0:1',
                \ 'm:members:0:1',
                \ 'n:namespaces:0:1',
                \ 'p:functions_prototypes:0:1',
                \ 's:structs:0:1',
                \ 't:typedefs:0:1',
                \ 'u:unions:0:1',
                \ 'v:global:0:1',
                \ 'x:external:0:1'
                \ ],
                \ 'sro'        : '::',
                \ 'kind2scope' : {
                \ 'g' : 'enum',
                \ 'n' : 'namespace',
                \ 'c' : 'class',
                \ 's' : 'struct',
                \ 'u' : 'union'
                \ },
                \ 'scope2kind' : {
                \ 'enum'      : 'g',
                \ 'namespace' : 'n',
                \ 'class'     : 'c',
                \ 'struct'    : 's',
                \ 'union'     : 'u'
                \ }
                \ }
endfunc


function! CompleteJSON()
    "vim-json
    let g:vim_json_syntax_conceal = 1
    let g:vim_json_warnings = 1
endfunc


function! CompleteC()
    " 设置 gf (文件跳转)路径
    set path+=/usr/include
    set path+=/usr/include/x86_64-linux-gnu
    set path+=/usr/include/c++/5

    "fswitch
    "Switch to the file and load it into the current window.(*.cpp *.h)
    nnoremap <silent> <Leader>ch :FSHere<CR>

    "Highlighting of class scope
    let g:cpp_class_scope_highlight = 1
    "Highlighting of template functions
    let g:cpp_experimental_template_highlight = 1
endfunc



function! CompleteJS()
    "iangmiao/simple-javascript-indenter
    let g:SimpleJsIndenter_BriefMode = 1


    "javascript-libraries-syntax
    "Support libs id:
    "jQuery: jquery
    "underscore.js: underscore
    "Lo-Dash: underscore
    "Backbone.js: backbone
    "prelude.ls: prelude
    "AngularJS: angularjs
    "AngularUI: angularui
    "AngularUI Router: angularuirouter
    "React: react
    "Flux: flux
    "RequireJS: requirejs
    "Sugar.js: sugar
    "Jasmine: jasmine
    "Chai: chai
    "Handlebars: handlebars
    "Ramda: ramda
    "Vue.js: vue
    "d3.js: d3
    let g:used_javascript_libs = 'jquery,react'

    "vim-javascript
    "Enables syntax highlighting for JSDocs.
    "e.g.
    "/**
    " * Represents a book.
    " * @constructor
    " * @param {string} title - The title of the book.
    " * @param {string} author - The author of the book.
    " */
    "function Book(title, author) {
    "}
    let g:javascript_plugin_jsdoc = 1


    "vim-jsdoc
    let g:jsdoc_enable_es6 = 1	"Enable to use ECMAScript6's Shorthand function, Arrow function.
    nnoremap <leader>d :JsDoc<CR>

    "tern_for_vim
    "you should create a ".tern-project" file in the root
    "directory of your project. The following is just an example:
    "{
    "    "libs": [
    "        "browser",
    "        "chai",
    "        "ecma5",
    "        "ecma6",
    "        "jquery",
    "        "underscore"
    "    ],
    "    "loadEagerly": [
    "        "importantfile.js"
    "    ],
    "    "plugins": {
    "        "angular":{},
    "        "node":{},
    "        "complete_strings":{},
    "        "modules":{},
    "        "es_modules":{},
    "        "requirejs": {
    "            "baseURL": "./",
    "            "paths": {}
    "        }
    "    }
    "}
    "COMMANDS
    "|:TernDoc|...................... Look up Documentation
    "|:TernDocBrowse|................ Browse the Documentation
    "|:TernType|..................... Perform a type look up
    "|:TernDef|...................... Look up definition
    "|:TernDefPreview|............... Look up definition in preview
    "|:TernDefSplit|................. Look up definition in new split
    "|:TernDefTab|................... Look up definition in new tab
    "|:TernRefs|..................... Look up references
    "|:TernRename|................... Rename identifier
    let tern_show_signature_in_pum = 1
    let tern_show_argument_hints = 'on_hold'
    nnoremap <F12> :TernDefPreview<CR>
    inoremap <F12> <Esc> :TernDefPreview<CR>
    nnoremap <C-F12> :TernDoc<CR>
    inoremap <C-F12> <Esc> :TernDoc<CR>
    setlocal omnifunc=tern#Complete
endfunc


function! CompleteCSS()
    "vim-css3-syntax
    "Some properties do not highlight correctly by default.so put following...
    augroup VimCSS3Syntax
        autocmd!
        "autocmd FileType css setlocal iskeyword+=-
        autocmd FileType css,less setlocal iskeyword+=-
    augroup END
endfunc

function! CompleteHTML()
    "emmet-vim
    "let g:user_emmet_mode='n'    "only enable normal mode functions.
    "let g:user_emmet_mode='inv'  "enable all functions, which is equal to
    let g:user_emmet_mode='a'    "enable all function in all mode.

    "Enable just for html/css
    let g:user_emmet_install_global = 0
    autocmd FileType html,css,less EmmetInstall

    "trigger key
    let g:user_emmet_leader_key='<C-y>'

    let g:user_emmet_settings = {
                \    'variables' : {
                \         'lang': 'zh',
                \         'charset': 'UTF-8',
                \         'newline': '\n',
                \    },
                \    'indentation': '    ',
                \    'html' : {
                \         'snippets': {
                \            'cc:ie': "<!--[if IE]>\n\t${child}|\n<![endif]-->",
                \            'cc:noie': "<!--[if !IE]><!-->\n\t${child}|\n<!--<![endif]-->",
                \            'html:5': "<!DOCTYPE html>\n"
                \                     ."<html lang=\"${lang}\">\n"
                \                     ."<head>\n"
                \                     ."  <meta charset=\"UTF-8\">\n"
                \                     ."  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                \                     ."  <title>todo</title>\n"
                \                     ."</head>\n"
                \                     ."<body>\n"
                \                     ."  ${child}|\n"
                \                     ."</body>\n"
                \                     ."</html>",
                \        },
                \        'expandos' : {
                \            'ol': 'ol>li',
                \            'list': 'ul>li*3',
                \            'details': 'details>summary',
                \        },
                \        'default_attributes': {
                \            'a': {'href': ''},
                \            'meta': [{'name': 'viewport'}, {'content': 'width=device-width, initial-scale=1.0'}],
                \            'link': [{'rel': 'stylesheet'}, {'href': ''}],
                \            'script': {'type': 'text/javascript'},
                \            'img': [{'src': ''}, {'alt': 'loading'}],
                \        },
                \        'aliases': {
                \            'bq': 'blockquote',
                \            'obj': 'object',
                \            'src': 'source',
                \        },
                \        'empty_elements': 'area,base,basefont,isindex,link,meta,br,input',
                \        'block_elements': 'address,applet,blockquote,li,link,map',
                \        'inline_elements': 'a,abbr,acronym',
                \        'empty_element_suffix': ' />',
                \    },
                \}



    "event-handler attributes support:
    let g:html5_event_handler_attributes_complete = 1
    "RDFa attributes support:
    let g:html5_rdfa_attributes_complete = 1
    "microdata attributes support:
    let g:html5_microdata_attributes_complete = 1
    "WAI-ARIA attribute support:
    let g:html5_aria_attributes_complete = 1
endfunc


function! CompletePHP()
    "php.vim
    let php_sql_query = 1
    let php_html_instrings = 1
    let php_parent_error_close = 1
    let php_parent_error_open = 1
    "let php_var_selector_is_identifier = 1

    function! PhpSyntaxOverride()
        hi! def link phpDocTags  phpDefine
        hi! def link phpDocParam phpType
    endfunction

    augroup phpSyntaxOverride
        autocmd!
        autocmd FileType php call PhpSyntaxOverride()
    augroup END



    "phpcomplete.vim
    let g:phpcomplete_relax_static_constraint = 1
    let g:phpcomplete_complete_for_unknown_classes = 1
    let g:phpcomplete_search_tags_for_variables = 1
    let g:phpcomplete_parse_docblock_comments = 1

    let g:phpcomplete_mappings = {
                \ 'jump_to_def': '<C-]>',
                \ 'jump_to_def_split': '<C-W><C-]>',
                \ 'jump_to_def_vsplit': '<C-W><C-\>',
                \}

endfunc

function! CompletePython()
    nnoremap <F5> :w !time python3 %<CR>
endfunc


"Yggdroot/indentLine
"@param
"		f_: pass 1 to load plugin...
function! ShowIndent(f_)
    let g:indentLine_loaded      = a:f_
    let g:indentLine_enabled     = 1
    let g:indentLine_char        = '┆'
    let g:indentLine_indentLevel = 2
    nnoremap <leader>i :IndentLinesToggle <cr>
endfunc

function! SetTheme()
    "--molokai
    "colorscheme molokai
    "let g:rehash256 = 1
    "let g:molokai_original = 1

    "set t_Co=256   " This is may or may not needed.
    "set background=light
    "colorscheme PaperColor


    "let g:flattend_termcolors=256
    "colorscheme flattened_dark


    "set t_Co=256
    "if (has("termguicolors"))
    "set termguicolors
    "endif
    "colorscheme OceanicNext
    "let g:airline_theme='oceanicnext'

    "colorscheme molokayo

    if (has("termguicolors"))
        set termguicolors
    endif
    colorscheme solarized8_dark
endfunc

" vim: set ai sts=4 ts=4 sw=4:
