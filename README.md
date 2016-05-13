#**VIM-IDE配置**

>由于vim插件众多，配置复杂，所以在这里上传仓库。用于日后恢复使用！

##**效果图**
![VIM-IDE1](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim_ide01.png)
![VIM-IDE3](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim-ide2.png)
![VIM-IDE3](https://github.com/kulongwangzhi85/VIM_IDE/blob/master/img/vim-ide3.png)

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
> 0 查看vim版本，并且是否支持Python
>> - 进入vim编辑器使用:version查看版本，并且确认是否支持Python2或Python3.如果不支持，请查看系统是否装有其它版本才vim
>> - ubuntu系统执行update-alternatives --config vim,查看是否由其它版本的vim.我这系统就有好几个版本。有点支持，有点不支持
> 1 使用系统命令apt-get install 安装pathogen插件，并执行vim-addon-manager install pathogen安装到vim
