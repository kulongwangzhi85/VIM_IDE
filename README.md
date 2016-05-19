#**VIM-IDE配置**

>由于vim插件众多，配置复杂，所以在这里上传仓库。用于日后恢复使用！

##**效果图**
![VIM-IDE1](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim_ide01.png)
![VIM-IDE3](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim-ide2.png)
![VIM-IDE3](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim-ide3.png)
![VIM-IDE4](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim_ide4.png)

---
##**特点**
> - 在使用此IDE时，只需克隆本仓库到本地，并稍作配置即可。
> - 配合tmux使用，需要将tmux.conf配置文件链接到home目录
> - 这个IDE适用于Python,MarkDown,HTTP,CSS的写作
> - Python使用YouCompleteMe和jedi自动补全,使用Python-mode进行语法检测和语法高亮
> - HTTP、CSS - 使用Emmet-vim，进行语法补全
> - ctrl+p - 当前目录一下的快速搜索斌打开编辑
> - indentLine - 缩进线
> - nerdcommenter - 快速注释
> - vim-airline、vim-airline-themes、vim-colors-solarized、vim-monokai-refined - 美化vim
> - vim-surround - 用于扩展标点符号的使用，包括: (),[],{},<>,',"等

##**安装**
> - 查看vim版本，并且是否支持Python
> - 进入vim编辑器使用:version查看版本，并且确认是否支持Python2或Python3.如果不支持，请查看系统是否装有其它版本才vim
> -  ubuntu系统执行update-alternatives --config vim,查看是否由其它版本的vim.我这系统就有好几个版本。有的支持，有的不支持
> - 安装PowerLine字体
> - 安装后进入~/.vim/bundle/目录，执行git clone --recursive git@github.com:kulongwangzhi85/VIM_IDE.git。其中--recursive递归的意思。
> - 执行以上命令后需进入每个插件目录，检查是否由test_requirements.txt文件，如果有需要执行sudo pip install -r test_requirements.txt,安装该插件所需的依赖包.
> - 其中ouCompleteMe插件执行完以上步骤后，还需执行./install.sh进行安装
> - 配置.bashrc文件，添加	export PYTHONSTARTUP="$(python -m jedi repl)"	如果是其它系统，要添加到相应的bash初始化文件中

##**待解决的问题**
2016年 05月 19日 星期四 10:11:16 CST
> - 编辑MarkDown是，括弧会自动多加个")" 
> - 对html和javascript没做什么支持

##**使用方法**




---
未完待续
