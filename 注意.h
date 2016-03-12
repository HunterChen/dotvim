打开 ~/下的.vimrc文件，确保查看是否有这样一条配置：

1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
 如果没有，请修改.ycm_extra_conf.py的路径是正确的。

　　打开　~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py

1
vim ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
 您可以在flags[ * ]数组的后面添加你想要的路径，例如: stdio.h等Ｃ语言的头文件包含在/usr/include中，那么您需要添加这样一条

'-isystem',

‘/usr/include’,

注意，不要忘记后面的“，”。

需要CPP的补全，就需要添加：

'-isystem',

‘/usr/include/c++/4.7’,
