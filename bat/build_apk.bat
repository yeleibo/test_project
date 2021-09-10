%一起打包全部%
flutter build apk
-t main.dart //指定打包的入口文件
--split-per-abi //分平台打包
%分开打包%
flutter build apk --flavor baidu
flutter build apk --flavor xiaomi
flutter build apk --flavor vivo
flutter build apk --flavor oppo
flutter build apk --flavor huawei
flutter build apk --flavor lenovo
flutter build apk --flavor tencent
flutter build apk --flavor server


