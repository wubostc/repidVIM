"""""""""""""""""Vundle""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"--vim-airline
Plugin 'vim-airline/vim-airline'
"vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

"--NERDTree
Plugin 'https://github.com/scrooloose/nerdtree.git'

"--NERDCommenter
Plugin 'https://github.com/scrooloose/nerdcommenter.git'

"--tagbar
Plugin 'https://github.com/majutsushi/tagbar'

"-------------------cpp------------------------------
"--YCM
"Plugin 'Valloric/YouCompleteMe'
"--cpp14语法高亮
Plugin 'octol/vim-cpp-enhanced-highlight'
" STL-Syntax
Plugin 'Mizuchi/STL-Syntax'
"-------------------cpp------------------------------
"--vim-fswitch
Plugin 'derekwyatt/vim-fswitch'

"--auto-pairs--自动加上可以成对的符号
Plugin 'https://github.com/jiangmiao/auto-pairs'

"--ctrlsf--内容查找 requier installed ag or ack
"Plugin 'dyng/ctrlsf.vim'

"--undotree--撤销管理
Plugin 'https://github.com/mbbill/undotree'

"--vim-easymotion
"Plugin 'https://github.com/easymotion/vim-easymotion'

"--vim-autoformate--
"Plugin 'Chiel92/vim-autoformat'


"--快速替换
Plugin 'terryma/vim-multiple-cursors'

" 显示代码尾部空格
Plugin 'vim-scripts/ShowTrailingWhitespace'

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

" vim-json
Plugin 'elzr/vim-json'



"-------------------php------------------------------
" Improved PHP omni-completion. Based on the default phpcomplete.vim.
Plugin 'shawncplus/phpcomplete.vim'
" Up-to-date PHP syntax file(5.3-7.1 support) 
Plugin 'StanAngeloff/php.vim'
"-------------------php------------------------------


"-------------------Javascript------------------------------
" Enhanced JavaScript Syntax for Vim
"Plugin 'jelera/vim-javascript-syntax'
" Javascript indenter (HTML indent is included)
"Plugin 'vim-scripts/JavaScript-Indent'
"provides syntax highlighting and improved indentation.
Plugin 'pangloss/vim-javascript'
"Syntax file for JavaScript libraries.
Plugin 'othree/javascript-libraries-syntax.vim'
"Generate JSDoc to your JavaScript code.
Plugin 'heavenshell/vim-jsdoc'
"provides Tern-based JavaScript editing support.
Plugin 'ternjs/tern_for_vim'
"-------------------Javascript------------------------------

"-------------------code analysis tool------------------------------
Plugin 'w0rp/ale'
"-------------------code analysis tool------------------------------



"平滑滚动
Plugin 'terryma/vim-smooth-scroll'

"""""""""Color Scheme""""""""""

"--molokai
Plugin 'https://github.com/tomasr/molokai'

"Collection of awesome color schemes for Vim, merged for quick use.
Plugin 'rafi/awesome-vim-colorschemes'

Plugin 'romainl/flattened'

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

"""""""""""""""""ale""""""""""""""""""
let &runtimepath.=',~/.vim/bundle/ale'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_statusline_format = ['✘ %d', '⚠ %d', '⬥ ok']

"htmlhint eslint stylelint ... all on bash
"let g:ale_html_htmlhint_use_global = 1
let g:ale_html_htmlhint_executable = 'htmlhint'

"let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint'

"let g:ale_css_stylelint_use_global = 1
let g:ale_css_stylelint_executable = 'stylelint' 

"let g:ale_cpp_gcc_options = '-std=c++14 -Wall'
let g:ale_cpp_clang_options = '-std=c++14 -Wall'

"let g:ale_c_gcc_options = '-std=c11 -Wall'
let g:ale_c_clang_options = '-std=c11 -Wall'



"""""""""""""""""ale""""""""""""""""""

"""""""""""""""""""vim"""""""""""""""""""
" 开启语法高亮功能
"syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" detect file type
filetype on
" for NERDCommenter
filetype plugin on

filetype plugin indent on

" 语法提示支持c++11
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'


"set ignorecase		    	" 搜索模式里忽略大小写
"set smartcase		    	" 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite		    	" 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
"set autoindent		    	" 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set smartindent         	" 智能对齐方式
set cindent		        	" 使用 C/C++ 语言的自动缩进方式
"设置C/C++语言的具体缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:0,g0,N-s
"set backspace=2	    	" 设置退格键可用
set showmatch		    	" 设置匹配模式，显示匹配的括号
set linebreak		    	" 整词换行
set whichwrap=b,s,<,>,[,]	" 光标从行首和行末时可以跳到另一行去
"set hidden             	" Hide buffers when they are abandoned
set mouse=a 		    	" Enable mouse usage (all modes)    "使用鼠标
set number	    	    	" 显示行号
"set previewwindow	    	" 标识预览窗口
set history=50		    	" set command history to 200

set expandtab			    " 将制表符扩展为空格 for indent-guides
set tabstop=4			    " 设置制表符(tab键)的宽度
set softtabstop=4		    " 设置软制表符的宽度
set shiftwidth=4		    " (自动) 缩进使用的4个空格


" 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set laststatus=2

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

" Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、消息文本等
set encoding=UTF-8

" 设置文件读取格式
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1
set fileencodings=ucs-bom,utf-8,gb18030,default,latin1


" 高亮显示当前行列
set cursorline
"set cursorcolumn

" vim 自身命令行模式智能补全
set wildmenu

" 设置退格键
set backspace=indent,eol,start


set cmdheight=2


" 设置快捷键将选中文本块复制至系统剪贴板
noremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim, 并移动光标到内容最后
noremap <Leader>p "+gp

" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>
" 强行保存只读文件
nnoremap <Leader>W :w !sudo tee %<CR>
" 保存并退出当前窗口
nnoremap <Leader>x :x<CR>
"
nnoremap <Leader><tab> :tabnext<CR>


" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 设置 gf (文件跳转)路径
set path+=/usr/include
set path+=/usr/include/x86_64-linux-gnu
set path+=/usr/include/c++/5
"""""""""""""""""""vim"""""""""""""""""""



""""""""""""""""auto-pairs"""""""""""""""
" input:  if(a[3])
" output: if(a[3])| (In Fly Mode)
let g:AutoPairsFlyMode = 0
""""""""""""""""auto-pairs"""""""""""""""



""""""""""""""""""ctags""""""""""""""""""
"set tags+=/usr/include/c++/tags

set tags+=/usr/include/tags
""""""""""""""""""ctags""""""""""""""""""



""""""""""""""""""YCM""""""""""""""""""""
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

" 全能补全和路径补全
inoremap <C-j> <C-x><C-o>
"inoremap <C-k> <C-x><C-i>


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

" 让Vim的补全菜单行为与一般IDE一致
"set completeopt=longest,menu

" 在补全完成后自动关闭函数候选列表
let g:ycm_autoclose_preview_window_after_completion = 0

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|end

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
            \   'scss,css': [ 're!^\s{2,4}', 're!:\s+' ],
            \ }
""""""""""""""""""YCM""""""""""""""""""""



"""""""""""""""""airline"""""""""""""""""""
let g:airline#extension#ycm#enabled = 1
let g:airline#extension#ycm#error_symbol = 'E:'
let g:airline#extension#ycm#warning_symbol = 'W:'
let g:airline#extensions#tabline#buffer_nr_show = 1
"""""""""""""""""airline"""""""""""""""""""

"""""""""""""""""airline-theme"""""""""""""""""""
let g:airline_theme='cobalt2'
"""""""""""""""""airline-theme"""""""""""""""""""



""""""""""""""NERDTree"""""""""""""""
" open a NERDTree automatically when vim starts up
"autocmd VimEnter * NERDTree

" How can I open a NERDTree automatically when vim starts up if no files were specified?
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open/close the NERDTree with F2
nnoremap <F2> :NERDTreeToggle<CR>
"inoremap <F2> <Esc> :NERDTreeToggle<CR>

"" bookmarks
"let NERDTreeShowBookmarks = 1

"" hidden of files
"let NERDTreeShowHidden = 1

" NERDTree 子窗口中不显示冗余帮助信息和书签
let NERDTreeMinimalUI = 1

" you know
let NERDTreeWinSize = 30
""""""""""""""NERDTree"""""""""""""""



""""""""""""""""""tagbar""""""""""""
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
""""""""""""""""""tagbar""""""""""""



""""""""""""""""indent-guides""""""""""""
" you know
let g:indent_guides_enable_on_vim_startup = 0

" NOTE: This option only works for soft-tabs (spaces) and not hard-tabs.
let g:indent_guides_guide_size = 1

" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2

" 快捷键 <\>i 开/关缩进可视化
nmap <silent> <Leader>i :IndentGuidesToggle<CR>
""""""""""""""""indent-guides""""""""""""



"""""""""""""""""""fswitch"""""""""""""""""""
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>ch :FSHere<CR>
"""""""""""""""""""fswitch"""""""""""""""""""



""""""""""""""""""""""ag"""""""""""""""""""
"let g:ackprg = 'ag --nogroup --nocolor --column'
" or:
let g:ackprg = 'ag --vimgrep'
""""""""""""""""""""""ag"""""""""""""""""""



"""""""""""""""""""""ctrlsf""""""""""""""""
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
"""""""""""""""""""""ctrlsf""""""""""""""""



"""""""""""""""undotree""""""""""""""""""
" 撤销
nnoremap <F3> :UndotreeToggle<CR>
inoremap <F3> <Esc> :UndotreeToggle<CR>
"""""""""""""""undotree""""""""""""""""""




"""""""""""""""easymotion""""""""""""""""
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
"""""""""""""""easymotion""""""""""""""""



"""""""""""""""CPP syntax""""""""""""""""
"Highlighting of class scope is disabled by default. To enable set
let g:cpp_class_scope_highlight = 1

"Highlighting of template functions is enabled by setting
let g:cpp_experimental_template_highlight = 1
"""""""""""""""CPP syntax""""""""""""""""



""""""""""""""""快速替换"""""""""""""""""""
let g:multi_cursor_next_key = '<C-n>'
""""""""""""""""快速替换"""""""""""""""""""

""""""""""""""""去掉行尾空格"""""""""""""""""""
nnoremap <leader>t :%s/\s\+$//<cr>:let @/=''<cr>
""""""""""""""""去掉行尾空格"""""""""""""""""""



"""""""""""""vimfiler""""""""""""""""
"Normal mode default mappings.
" g?    help
" gg    top
" ge    open explorer
" j     down
" k     up
" l     entry
" h     leave
" <C-l>     redraw screen
" <Sapce>   toggle_mark_current_line
" *         toggle_mark_all_line
" c     copy file
" m     move file
" d     del file
" r     rename file
" K     mkdir

"let g:vimfiler_as_default_explorer = 1


"nnoremap <F2> :VimFilerCurrentDir<CR>

"""""""""""""vimfiler""""""""""""""""


"""""""""""""vim-json""""""""""""""""
let g:vim_json_syntax_conceal = 1
let g:vim_json_warnings=1
"""""""""""""vim-json""""""""""""""""


"""""""""""""html5""""""""""""""""
"event-handler attributes support:
let g:html5_event_handler_attributes_complete = 1

"RDFa attributes support:
let g:html5_rdfa_attributes_complete = 1

"microdata attributes support:
let g:html5_microdata_attributes_complete = 1

"WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 1
"""""""""""""html5""""""""""""""""


"""""""""""""javascript-libraries-syntax""""""""""""""""
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
"Default lib set is: jquery,underscore,backbone
let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,vue'

"""""""""""""javascript-libraries-syntax""""""""""""""""


"""""""""""""emmet-vim""""""""""""""""
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


"trigger key
let g:user_emmet_leader_key='<C-y>'


let g:user_emmet_settings = {
  \    'indentation' :  '   ',
  \    'variables' : {
  \        'lang' : 'zh',
  \    },
  \    'html' : {
  \        'filters' : 'html',
  \        'expandos' : {
  \            'ol': 'ol>li',
  \            'list': 'ul>li*3',
  \            'details':   'details>summary',
  \        },
  \        'default_attributes': {
  \            'a': {'href': ''},
\               'meta': [{'name':'viewport'},{'content':'width=device-width, initial-scale=1.0'}],
  \            'link': [{'rel': 'stylesheet'}, {'href': ''}],
  \            'script':    {'type': 'javascript'},           
  \        },
  \        'aliases': {
  \            'bq': 'blockquote',
  \            'obj': 'object',
  \            'src': 'source',
  \        },
  \        'empty_elements': 'area,base,basefont,isindex,link,meta,br',
  \        'block_elements': 'address,applet,blockquote,li,link,map',
  \        'inline_elements': 'a,abbr,acronym',
  \        'empty_element_suffix': '>',
  \    },
  \}

"""""""""""""emmet-vim""""""""""""""""


""""""""""""""vim-css3-syntax"""""""""""""""
"Some properties do not highlight correctly by default.so put following...
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END
""""""""""""""vim-css3-syntax"""""""""""""""

"""""""""""""php.vim""""""""""""""""
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
"""""""""""""php.vim""""""""""""""""

"""""""""""""vim-javascript""""""""""""""""
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
"""""""""""""vim-javascript""""""""""""""""

""""""""""""""vim-jsdoc"""""""""""""""
"Usage
"1.Move cursor on function keyword line.
"2.Type :JsDoc to insert JSDoc.
"3.Insert JSDoc above the function keyword line.

"Config
"g:jsdoc_allow_input_prompt	0	Allow prompt for interactive input.
"g:jsdoc_input_description	0	Prompt for a function description
"g:jsdoc_additional_descriptions	0	Prompt for a value for @name, add it to the JSDoc block comment along with the @function tag.
"g:jsdoc_return	1	Add the @return tag.
"g:jsdoc_return_type	1	Prompt for and add a type for the aforementioned @return tag.
"g:jsdoc_return_description	1	Prompt for and add a description for the @return tag.
"g:jsdoc_access_descriptions	0	Set value to 1 to turn on access tags like `@access <private
"g:jsdoc_underscore_private	0	Set value to 1 to turn on detecting underscore starting functions as private convention
"g:jsdoc_allow_shorthand	0	Set value to 1 to allow ECMAScript6 shorthand syntax. Since ver 0.5.0 deprecated. Use g:jsdoc_enable_es6 instead.
"g:jsdoc_param_description_separator	' '	Characters used to separate @param name and description.
"g:jsdoc_custom_args_hook	{}	Override default type and description. See help more detail.
"g:jsdoc_custom_args_regex_only	0	When using custom_args_hook, only match against regexes
"g:jsdoc_type_hook	{}	Allow to insert default description depending on the type.
"g:jsdoc_enable_es6	0	Enable to use ECMAScript6's Shorthand function, Arrow function.
"g:jsdoc_tags	see :h	Allow use of alternate tags (the ones that support synonyms) per JSDoc documentation. Can be changed on a per tag basis, for example: `let g:jsdoc_tags = {}
"g:jsdoc_user_defined_tags	{}	Allow use of user_defined_tags.


"Keymap
"generate js doc automatically
nnoremap <C-d> :JsDoc<CR>

""""""""""""""vim-jsdoc"""""""""""""""


""""""""""""""tern_for_vim"""""""""""""""
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
autocmd FileType javascript nnoremap <F12> :TernDefPreview<CR>
autocmd FileType javascript inoremap <F12> <Esc> :TernDefPreview<CR>
autocmd FileType javascript nnoremap <C-F12> :TernDoc<CR>
autocmd FileType javascript inoremap <C-F12> <Esc> :TernDoc<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete
""""""""""""""tern_for_vim"""""""""""""""

""""""""""""""phpcomplete.vim"""""""""""""""
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1

let g:phpcomplete_mappings = {
   \ 'jump_to_def': '<C-]>',
   \ 'jump_to_def_split': '<C-W><C-]>',
   \ 'jump_to_def_vsplit': '<C-W><C-\>',
   \}
""""""""""""""phpcomplete.vim"""""""""""""""

""""""""""""""vim-smooth-scroll"""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
""""""""""""""vim-smooth-scroll"""""""""""""""


"""""""""""""Theme""""""""""""""""

"--molokai
"colorscheme molokai
"let g:rehash256 = 1
" If you prefer the scheme to match the original monokai background color, put
" this in your .vimrc file:
"let g:molokai_original = 1


"""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""
"""""""""""""Theme""""""""""""""""
