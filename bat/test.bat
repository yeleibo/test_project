%生成分析文件 coverage/icov.info%
flutter test --coverage
flutter test --coverage bash <(curl -s https://codecov.io/bash) -t 8f22a554-b5e5-4a8b-b178-7db33f9bb72e

%查看分析结果%
%mac%
genhtml -o coverage coverage/lcov.info
# Open in the default browser (mac):
open coverage/index.html
%window%
%使用auto打开，然后Packages->locv-info->Toggle%