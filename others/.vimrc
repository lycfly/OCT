"***************************************************
"              Lu Yicheng's VIM script
"
" Last modified : 2020.5.14
"***************************************************



" =============================================================================
"                     快捷键记录
" =============================================================================
" F2               :  打开/关闭nerdtree （win端常常要配合Fn键使用）
"   选中几行按 =   :  选中部分智能排版 
"  shift + >或<    :  左右缩进（2个空格）
"            \il   :  IndentLine |
"            \tb   :  自动 testbench.v
" norm模式下 \ev   :  打开.vimrc
" norm模式下 \sv   :  立即生效.vimrc
" norm模式下 \rv   :  自动运行tb生成波形并查看
" g + t            :  在多个tab之间切换
" norm 模式下 \vg  :  自动例化
" norm模式下  g+d  :  高亮所有与选择单词相同的单词
" norm 模式下 \dv  :  自动 dumpfile codes
" :noh             :  取消所有高亮
" 鼠标右键+shift   :  高亮当前单词 
" 注意： 
" 加入了windows快捷键支持，原本的ctrl + v现在是粘贴，原来的块选现在变为
" Ctrl + q
" 
" Ctrl + w         :  批量注释// 
" v + ctrl + a     :  all select
"
"点击到nerdtree文档按t:  新建该文档的tab
" 



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


" =============================================================================
"        << 判断操作系统是 Windows 还是 Linux 和判断是终端还是 Gvim >>
" =============================================================================
" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif
 
" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif


" -----------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
" -----------------------------------------------------------------------------
" 用于更方便的管理vim插件，具体用法参考 :h vundle 帮助
" Vundle工具安装方法为在终端输入如下命令
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" 如果想在 windows 安装就必需先安装 "git for window"，可查阅网上资料

set nocompatible                                      "禁用 Vi 兼容模式
filetype off                                          "禁用文件类型侦测
if(g:islinux == 1) 
    set rtp+=~/.vim/bundle/Vundle.vim
    let vim_bundle_path = '~/.vim/bundle/'
else
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
    let vim_bundle_path = '$VIM/vimfiles/bundle/'

endif

call vundle#begin(vim_bundle_path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kshenoy/vim-signature'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim' "auto bu quan
Plugin 'nathanaelkane/vim-indent-guides'   "添加行，添加vim-indent-guides插件
""Plugin 'airblade/vim-gitgutter'  "git diff 
call vundle#end()            " required
filetype plugin indent on    " required
" -----------------------------------------------------------------------------
" NERDTree config
" -----------------------------------------------------------------------------
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary")
" 当vim启动时自动切换当前目录到vim打开文件的目录
autocmd VimEnter * cd %:p:h
autocmd vimenter * NERDTree  "auto open nerdtree

" 设置代码配色方案
if g:isGUI
    colorscheme molokai               "Gvim配色方案
else
    colorscheme molokai               "终端配色方案
endi

" -----------------------------------------------------------------------------
"  < indentLine 插件配置 >
" -----------------------------------------------------------------------------
" 用于显示对齐线，与 indent_guides 在显示方式上不同，根据自己喜好选择了
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
nmap <leader>il :IndentLinesToggle<CR>
 " 设置对齐线默认开1/关0状态
let g:indentLine_enabled = 0
if g:isGUI
    let g:indentLine_char = "┊"
    let g:indentLine_first_char = "┊"
endif
 
" 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_term = 239
 
" 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_gui = '#666666'
"

" -----------------------------------------------------------------------------
"  < neocomplcache 插件配置 >
" -----------------------------------------------------------------------------
set completeopt-=preview
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

" -----------------------------------------------------------------------------
" verilog enable floding
" -----------------------------------------------------------------------------
set foldmethod=syntax

"let g:SuperTabDefaultCompletionType = 'context'
"
" -----------------------------------------------------------------------------
" verilog 自动例化
" -----------------------------------------------------------------------------
if(g:islinux == 1)
    so ~/.vim/bundle/vlog_inst_gen.vim 
else
    so $VIM/vimfiles/bundle/vlog_inst_gen.vim 
endif
nnoremap <leader>vg :VlogInstGen<CR>

" -----------------------------------------------------------------------------
" syntastic
" -----------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_verilog_checkers = ['vcs']
nnoremap <leader>cv :SyntasticCheck<CR>

" -----------------------------------------------------------------------------
"编辑 我的 vimrc 文件 
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"重读 我的 vimrc 文件 
:nnoremap <leader>sv :source $MYVIMRC<cr>
" -----------------------------------------------------------------------------
let g:neocomplcache_enable_quick_match = 1 
" -----------------------------------------------------------------------------
"  < 编写文件时的配置 >
" -----------------------------------------------------------------------------
"colorscheme elflord          " 着色模式：黄色和粉红色为主
set guifont=courier\ new\ 12    " 字体 && 字号
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
set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]
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
" -----------------------------------------------------------------------------
"  <  批量缩进和取消缩进以及选中自动缩进 >
" -------------------------------------------------------------------
nnoremap = ==
vnoremap = =gv
nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv
" -----------------------------------------------------------------------------
"  < 加入或删除注释// >
" -----------------------------------------------------------------------------
"映射和绑定
nmap <C-W> <Esc>:Setcomment<CR>
imap <C-W> <Esc>:Setcomment<CR>
vmap <C-W> <Esc>:SetcommentV<CR>
command! -nargs=0 Setcomment call s:SET_COMMENT()
command! -nargs=0 SetcommentV call s:SET_COMMENTV()

"非视图模式下所调用的函数
function! s:SET_COMMENT()
    let lindex=line(".")
    let str=getline(lindex)
    "查看当前是否为注释行
    let CommentMsg=s:IsComment(str)
    call s:SET_COMMENTV_LINE(lindex,CommentMsg[1],CommentMsg[0])
endfunction

"视图模式下所调用的函数
function! s:SET_COMMENTV()
    let lbeginindex=line("'<") "得到视图中的第一行的行数
    let lendindex=line("'>") "得到视图中的最后一行的行数
    let str=getline(lbeginindex)
    "查看当前是否为注释行
    let CommentMsg=s:IsComment(str)
    "为各行设置
    let i=lbeginindex
    while i<=lendindex
         call s:SET_COMMENTV_LINE(i,CommentMsg[1],CommentMsg[0])
        let i=i+1
    endwhile
endfunction

"设置注释
"index:在第几行
"pos:在第几列
"comment_flag: 0:添加注释符 1:删除注释符
function! s:SET_COMMENTV_LINE( index,pos, comment_flag )
    let poscur = [0, 0,0, 0]
    let poscur[1]=a:index
    let poscur[2]=a:pos+1
    call setpos(".",poscur) "设置光标的位置

    if a:comment_flag==0
        "插入//
        exec "normal! i//"
    else
        "删除//
        exec "normal! xx"
    endif
endfunction

"查看当前是否为注释行并返回相关信息
"str:一行代码
function! s:IsComment(str)
    let ret= [0, 0] "第一项为是否为注释行（0,1）,第二项为要处理的列，
    let i=0
    let strlen=len(a:str)
    while i<strlen
        "空格和tab允许为"//"的前缀
        if !(a:str[i]==' ' ||    a:str[i] == '  ' )
            let ret[1]=i
            if a:str[i]=='/' && a:str[i+1]=='/'
                let ret[0]=1
            else
                let ret[0]=0
            endif
            return ret
        endif
        let i=i+1
    endwhile
    return [0,0]  "空串处理
endfunction


"--------------------------------------
" ======= 引号 && 括号自动匹配 =======
"--------------------------------------
 
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char"     return "\<Right>"
     return "\<Right>"
  else
     return a:char
  endif
endf
"-------------------------------------------------------------------
" 自动执行tb和.v的仿真
"-------------------------------------------------------------------

:nnoremap <leader>rv :call Verilog_runtb()<CR>

function! Verilog_runtb()
 "gnome-terminal -t 'new'" new terminal
    if (g:iswindows && g:isGUI)
      let vname = expand('%')
      let objname = vname[:-6]
      let vcdname = vname[:-3].".vcd"

      execute "echo vname"
      execute "echo objname"
      
      execute ":!iverilog -o ".objname." *.v"
      execute "echo 'iverilog run successfully!'"
      execute ":!vvp ".objname
      execute ":!gtkwave ".vcdname

    else
     let verilog_list = split(globpath('.', '*.v\|\(sv\)'), '\n')
    "" execute "echo verilog_list" 
     let length = len(verilog_list)
    "" execute "echo length" 
     for ii in range(length)
        let verilog_list[ii] = '.'.verilog_list[ii]
     endfor
     let input_files = join(verilog_list,' ')
     execute "echo input_files.' '" 
     let run_string = ["vcs -full64 -Mupdate "]
     call add(run_string,"-debug_pp -LDFLAGS -rdynamic -PP -no_error ZONMCM ")
     call add(run_string,"-P ${NOVAS_HOME}/share/PLI/VCS/LINUX64/novas.tab ")
     call add(run_string,"${NOVAS_HOME}/share/PLI/VCS/LINUX64/pli.a ")
     call add(run_string,input_files." ")
     call add(run_string,"+v2k +warn=noACC_CLI_ON +warn=noTFIPC +define+${BOOT_MODE} +nospecify +notimingcheck ")
     call add(run_string,"-override_timescale=1ns/1ps -sverilog -R +cli+3 | tee ./simulation/sim.log ")
     let run_sim = join(run_string,'')
     execute "echo run_string" 
     execute "echo run_sim"
     if (globpath('.', 'simulation')=='')
       execute ":!mkdir simulation"
     endif
     " open VCS simulation
     execute ":!echo ".run_sim." > ./simulation/run"
     execute ":!chmod u+x ./simulation/run"
     execute ":!cd simulation;./run"


  
      
    
endif
    
endfunction

:nnoremap <leader>vd :call Verdi_start()<cr>
function! Verdi_start()
    let verilog_list = split(globpath('.', '*.v\|\(sv\)'), '\n')
    "" execute "echo verilog_list" 
     let length = len(verilog_list)
    "" execute "echo length" 
     for ii in range(length)
        let verilog_list[ii] = '.'.verilog_list[ii]
     endfor
     let input_files = join(verilog_list,' ')
   let novas_wav = "./novas.fsdb"
     let verdi_run = "verdi -sv -nologo ".input_files." -ssf ".novas_wav
     execute ":!cd simulation;".verdi_run
endfunction

"-------------------------------------------------------------------
"    dumpvars snap
"-------------------------------------------------------------------
:nnoremap <leader>dv :call Dump()<cr>
function! Dump()
    if (g:iswindows && g:isGUI)  
     let string = "initial begin\n    $fsdbDumpvars();\n    $dumpvars();\n    #1000 $finish;\n end"      
    else
     let string = "initial begin\r    $fsdbDumpvars();\r    $fsdbDumpMDA();\r    $dumpvars();\r    #1000 $finish;\r end"
   endif
    execute "s/$/".string
endfunction

"-------------------------------------------------------------------
"    auto testbench (python)
"-------------------------------------------------------------------
:nnoremap <leader>tb :call Autotb()<cr>
function! Autotb()
python << EOF

import vim,re

def clear_commonts(lines):
   
    block_comment_index = []  # record block comment index
    # remove // comment 
    for i in range(len(lines)):
        lines[i] = re.sub('//.*$','',lines[i])
        all_pairs = re.findall('/\*',lines[i])
        if(all_pairs != []):
            next_index = 0
            new_line = lines[i]
            for j in range(len(all_pairs)): 
                # print(new_line)
                find_index = re.search('/\*',new_line).span()
                next_index = find_index[1]
                new_line = new_line[next_index:]
                block_comment_index.append(i)
                if(re.search('\*/',new_line)!=None): # find paired */
                    block_comment_index.append(i)
        else:
            if(re.search('\*/',lines[i])!=None): # find paired */
                block_comment_index.append(i)

    # print(block_comment_index)
    if(len(block_comment_index)%2!=0):
        raise('ERROR: /* and */ not paired')
    else:
        for i in range(int(len(block_comment_index)/2)):
            left_index = block_comment_index[i*2]
            right_index = block_comment_index[i*2+1]
            if(left_index==right_index):               # inline /* */
                lines[left_index] = re.sub('/\*.*\*/','',lines[left_index])
            else: 
                for j in range(left_index+1,right_index):  # delet comment in block /* */
                    lines[j] = ''
                lines[left_index] = re.sub('/\*.*$','',lines[left_index])
                lines[right_index] = re.sub('^.*\*/','',lines[right_index])
    
    return lines


def find_inst_name(line):
    pattern = re.compile('(module)\s+(\w+)')
    if(pattern.search(line)!=None):
        return pattern.search(line).group(2)
    else:
        return ''


def lines2string(lines):
    string = ''
    for l in lines:
      string += l
    return string

def find_port_and_width(s):
    signed_flag = 0
    l_tmp = re.sub('(input)|(output)|(inout)','',s,1) # count=1 will not sub these word in signal name
    l_tmp = re.sub('(wire)|(reg)','',l_tmp,1)
    if(re.search('\sunsigned[\s\[]',l_tmp)!=None):
        signed_flag = 'unsigned'
    elif(re.search('\ssigned[\s\[]',l_tmp)!=None):
        signed_flag = 'signed'
    else:
        signed_flag = ' '
    l_tmp = re.sub('(signed)|(unsigned)','',l_tmp,1)
    l_tmp = re.sub('\s','',l_tmp)
    if(re.search('\[.+\]',l_tmp)!=None):
        width = re.search('\[.+\]',l_tmp).group(0)
        l_tmp = re.sub('\[.+\]','',l_tmp)
    else:
        width = '1'
    #print(l_tmp)
    if(re.search('\w+(?=[;,\s\)])',l_tmp)!=None):
        port_name = re.search('\w+(?=[;,\s\)])',l_tmp).group(0)
    else:
        raise('Port name lost!')
    print(width,port_name,signed_flag)
    return width,port_name,signed_flag
       
def find_parameter(s):
    l_tmp = re.sub('\s','',s)
    name_search = re.search('\w+(?=\=)',l_tmp)
    val_search = re.search('(?<=\=)[\w\+\-\*/\%\$\'`]+',l_tmp)
    if(name_search!=None):
        name = name_search.group(0)
    else:
        name = ''
    if(val_search!=None):
        val = val_search.group(0)
    else:
        val = ''
    return name,val

def find_input_output(lines):
    inst_dict = {'name':'','input':[],'output':[],'inout':[],'para':[]}
    string = lines2string(lines)
    inst_dict['name'] = find_inst_name(string)
    if inst_dict['name'] == '':
      raise('Inst name lost!')
    output_pattern = re.compile('\Woutput[\[\s][\w\s\[\]:\+\-\*/\(\)%\{\}\'`]*[,;]') # include 0-9 a-z A-Z [:] \n
    input_pattern = re.compile('\Winput[\[\s][\w\s\[\]:\+\-\*/\(\)%\{\}\'`]*[,;]') # include 0-9 a-z A-Z [:] \n 
    inout_pattern = re.compile('\Winout[\[\s][\w\s\[\]:\+\-\*/\(\)%\{\}\'`]*[,;]') # include 0-9 a-z A-Z [:] \n 
    input_list = input_pattern.findall(string)
    output_list = output_pattern.findall(string)
    inout_list = inout_pattern.findall(string)
    
    para_search_end_index = input_pattern.search(string).span()[0]
   # print (string[:para_search_end_index])
    para_pattern = re.compile('\Wparameter\s+[\s\w\[\]:\+\-\*/\(\)%\{\}\=,\'`]*')
    para_search = para_pattern.search(string[:para_search_end_index])
    if(para_search!=None):
        para_string = para_search.group(0)
        #print(para_string)
        para_string = ' '+para_string
        para_string = re.sub('\sparameter\s','',para_string)
        para_list = para_string.split(',')
       # print(para_list)
        for l in para_list:
            inst_dict['para'].append(find_parameter(l))
        
    else:
        inst_dict['para'] = []

    
    
    for l in input_list:
        inst_dict['input'].append(find_port_and_width(l))
    for l in output_list:
        inst_dict['output'].append(find_port_and_width(l))
    for l in inout_list:
        inst_dict['inout'].append(find_port_and_width(l))
 
    return inst_dict

def max_len(ll,mode=0):
    max_len = 1
    for l in ll:
        if(len(l[mode])>max_len):
            max_len = len(l[mode])
    return max_len

def build_input_port_tb(in_list,mode='input'):
    max_in_len_width = max_len(in_list,0)
    max_in_len_signed = max_len(in_list,2)
    string = ''
    net_type = {'input':'reg','output':'wire','inout':'wire'}
    for in_port in in_list:
        in_name = in_port[1]
        width = in_port[0] if in_port[0]!='1' else ''
        signed_type = in_port[2]
        added_len_signed = max_in_len_signed - len(signed_type)
        added_len_width =  max_in_len_width - len(width)
        s = '%s %s '%(net_type[mode],signed_type) + added_len_signed*' '
        s += '%s'%(width) + added_len_width*' ' + ' %s;\n'%(in_name)
        #print(max_in_len_width)
        #print(max_in_len_signed)
        string += s
    return string
  
def build_para_tb(in_list):
    max_in_len = max_len(in_list,0)
    string = ''
    for in_port in in_list:
        in_name = in_port[0]
        number = in_port[1]
        added_len = max_in_len - len(in_name)
        s = 'parameter %s '%(in_name) + added_len*' '+'= %s;\n'%(number)
        string += s
    return string

def find_clk_and_rst(in_list):
    clk = ''
    rst = ''
    for l in in_list:
        name = l[1]
        if(re.search('clk',name,re.I)!=None):
            clk = name
            break
    for l in in_list:
        name = l[1]
        if(re.search('rst',name,re.I)!=None):
            rst = name
            break
    return clk,rst

def input_initial_tb(in_list,rst):
    string = 'initial begin\n'
    for l in in_list:
        if(l[1]!=rst):
            s = '  %s = 0;\n'%l[1]
            string += s
    rst_kind = re.search('(?<=rst)_?n',rst,re.I)==None #1:rst, 0:rst_n
    string += '  %s = %d;\n  #4 %s = %d; #2 %s = %d;\n'%(rst,1-rst_kind,rst,rst_kind,rst,1-rst_kind)
    string += 'end\n'
    return string

def build_inst(inst_dict):
    inst_name = inst_dict['name']
    name_len = len(inst_name)
    string = inst_name
    if(inst_dict['para']==[]):
        para_string = ' '
    else:
        para_string = ' #('
        para_max_in_len = max_len(inst_dict['para'],0)
        for i,para_port in enumerate(inst_dict['para']):
            para_name = para_port[0]
            number = para_port[1]
            added_len = para_max_in_len - len(para_name)
            s = (i!=0)*(name_len+3)*' '+'  .%s '%(para_name) + added_len*' '+'( '+ para_name +added_len*' '+' )'+(i!=len(inst_dict['para'])-1)*','+(i==len(inst_dict['para'])-1)*')'+'\n'
            para_string += s 

    string += para_string
    string += 'U_'+ inst_name.upper()+'_0\n'
    # port inst
    port_list = inst_dict['input']+inst_dict['output']+inst_dict['inout']
    port_max_in_len = max_len(port_list,1)
    port_string = '('
    for i,port in enumerate(port_list):
        port_name = port[1]
        added_len = port_max_in_len - len(port_name)
       # print(port_list)
        s =  (i!=0)*' '+'  .%s '%(port_name) + added_len*' '+'( '+ port_name + added_len*' '+' )'+(i!=len(port_list)-1)*','+(i==len(port_list)-1)*');'+'\n'
        port_string += s
    
    string += port_string
    return string

def add_dumpvars():
    string = '\ninitial begin\n  $fsdbDumpvars();\n  $fsdbDumpMDA();\n  $dumpvars();\n  #1000 $finish;\nend'
    return string

def add_head(name,author='Yicheng Lu'):
    import time
    now_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) 
    year = now_time[0:4]
    string = "// -----------------------------------------------------------------\n//                 Copyright (c) %s .\n//                       ALL RIGHTS RESERVED\n// -----------------------------------------------------------------\n// Filename      : %s.v\n// Author        : %s\n// Created On    : %s\n// Last Modified :\n// -----------------------------------------------------------------\n// Description:\n//\n// -----------------------------------------------------------------\n"%(year,name,author,now_time)
    return string

def build_tb(inst_dict):
    string = add_head(name=inst_dict['name']+'_tb')
    string += '\n`timescale 1ns/1ps\n\n'
    string += 'module %s();\n\n'%(inst_dict['name']+'_tb')
    string += build_para_tb(inst_dict['para'])
    string += '\n'
    string += build_input_port_tb(inst_dict['input'],'input')
    string += '\n'
    string += build_input_port_tb(inst_dict['output'],'output') 
    string += '\n'
    string += build_input_port_tb(inst_dict['inout'],'inout')
    clk,rst = find_clk_and_rst(inst_dict['input'])
    string += '\nalways #1 %s = ~%s;\n'%(clk,clk)
    string += input_initial_tb(inst_dict['input'],rst)
    string += '\n'
    string += build_inst(inst_dict)
    string += '\n'
    string += add_dumpvars()
    string += '\n'
    string += '\nendmodule\n'
    return string


lines = []
for l in vim.current.buffer[:]:
  lines.append(l+'\n')  # string in buffer do not contain '\n'

clear_lines = clear_commonts(lines)
inst_dict = find_input_output(clear_lines)
tb_string = build_tb(inst_dict)
#print(tb_string)

vim.command("badd %s"%(inst_dict['name']+'_tb.v'))
buffer_num = len(vim.buffers)
print(buffer_num)
vim.command("tabnew")
vim.command("b"+str(buffer_num))
vim.current.buffer[:] = tb_string.split('\n')
vim.command('NERDTree')

EOF

endfunction




"-----------------------------------------
"          模拟windows的复制粘贴撤销全选
"-----------------------------------------

" Set options and add mapping such that Vim behaves a lot like MS-Windows 
" 
" Maintainer:    Bram Moolenaar <Bram@vim.org> 
" Last change:    2006 Apr 02 
   
" bail out if this isn't wanted (mrsvim.vim uses this). 
if exists("g:skip_loading_mswin") && g:skip_loading_mswin 
  finish 
endif 
   
" set the 'cpoptions' to its Vim default 
if 1    " only do this when compiled with expression evaluation 
  let s:save_cpo = &cpoptions 
endif 
set cpo&vim 
   
" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows 
behave mswin 
   
" backspace and cursor keys wrap to previous/next line 
set backspace=indent,eol,start whichwrap+=<,>,[,] 
   
" backspace in Visual mode deletes selection 
vnoremap <BS> d 
   
" CTRL-X and SHIFT-Del are Cut 
vnoremap <C-X> "+x 
vnoremap <S-Del> "+x 
   
" CTRL-C and CTRL-Insert are Copy 
vnoremap <C-C> "+y 
vnoremap <C-Insert> "+y 
   
" CTRL-V and SHIFT-Insert are Paste 
map <C-V>        "+gP 
map <S-Insert>        "+gP 
   
cmap <C-V>        <C-R>+ 
cmap <S-Insert>        <C-R>+ 
   
" Pasting blockwise and linewise selections is not possible in Insert and 
" Visual mode without the +virtualedit feature.  They are pasted as if they 
" were characterwise instead. 
" Uses the paste.vim autoload script. 
   
exe 'inoremap <script> <C-V>' paste#paste_cmd['i'] 
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v'] 
   
imap <S-Insert>        <C-V> 
vmap <S-Insert>        <C-V> 
   
" Use CTRL-Q to do what CTRL-V used to do 
noremap <C-Q>        <C-V> 
   
" Use CTRL-S for saving, also in Insert mode 
noremap <C-S>        :update<CR> 
vnoremap <C-S>        <C-C>:update<CR> 
inoremap <C-S>        <C-O>:update<CR> 
   
" For CTRL-V to work autoselect must be off. 
" On Unix we have two selections, autoselect can be used. 
if !has("unix") 
  set guioptions-=a 
endif 
   
" CTRL-Z is Undo; not in cmdline though 
noremap <C-Z> u 
inoremap <C-Z> <C-O>u 
   
" CTRL-Y is Redo (although not repeat); not in cmdline though 
noremap <C-Y> <C-R> 
inoremap <C-Y> <C-O><C-R> 
   
" Alt-Space is System menu 
if has("gui") 
  noremap <M-Space> :simalt ~<CR> 
  inoremap <M-Space> <C-O>:simalt ~<CR> 
  cnoremap <M-Space> <C-C>:simalt ~<CR> 
endif

   
" CTRL-A is Select all 
noremap <C-A> gggH<C-O>G 
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G 
cnoremap <C-A> <C-C>gggH<C-O>G 
onoremap <C-A> <C-C>gggH<C-O>G 
snoremap <C-A> <C-C>gggH<C-O>G 
xnoremap <C-A> <C-C>ggVG 
    
" CTRL-Tab is Next window 
noremap <C-Tab> <C-W>w 
inoremap <C-Tab> <C-O><C-W>w 
cnoremap <C-Tab> <C-C><C-W>w 
onoremap <C-Tab> <C-C><C-W>w 
   
" CTRL-F4 is Close window 
noremap <C-F4> <C-W>c 
inoremap <C-F4> <C-O><C-W>c 
cnoremap <C-F4> <C-C><C-W>c 
onoremap <C-F4> <C-C><C-W>c 
   
" restore 'cpoptions' 
set cpo& 
if 1 
  let &cpoptions = s:save_cpo 
  unlet s:save_cpo 
endif 
