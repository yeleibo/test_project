%根据arb文件以及yaml中相关配置(flutter_intl)生成样板代码，arb中的@符合后面的是给翻译人员看的，arb的最后面的}前面不能又,%
flutter pub run intl_utils:generate
%本地修改arb后上传arb到https://app.localizely.com/projects ----需要购买专业版或者开发项目申请才能用，暂时直接手动在代码处翻译%
flutter pub run intl_utils:localizely_upload_main  --api-token 5bb464db366f496089799b4a4af91d2949ead523fafe494290bf025d1ff7b5db