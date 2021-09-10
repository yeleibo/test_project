%根据代码注释(只有///这样的注释才满足要求)生成代码文档 https://github.com/dart-lang/dartdoc%
%1、安装dartdoc,如不pub包错就将\flutter\bin\cache\dart-sdk\bin添加的环境变量中%
%pub global activate dartdoc%
%2、将C:\Users\Asus\AppData\Roaming\Pub\Cache\bin添加到环境变量的path中%
%3、生成项目文档%
%dartdoc%

%查看文档 主要222端口不能被占用 ,http://localhost:222/ %
%pub global activate dhttpd%
%dhttpd --path doc/api --port 222%


%后期需要执行的命名%
dartdoc
dhttpd --path doc/api --port 222