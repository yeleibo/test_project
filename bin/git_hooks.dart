
import 'dart:io';
import 'package:path/path.dart' as path;
void main(List<String> arguments) {
  // ignore: omit_local_variable_types
  stdout.writeln("$arguments");
  Map<String, Function> params = {
    hookList[0]: preCommit,
    hookList[1]: commitMsg
  };
  var gitHooType=arguments.first;
  params.forEach((String key, Function value) {
    if(key==gitHooType){
      value.call();
    }
  });

}

final List<String> hookList = [
  'preCommit',
  'commitMsg',
  'applypatchMsg',
  'preApplypatch',
  'postApplypatch',
  'prepareCommitMsg',
  'commitMsg',
  'postCommit',
  'preRebase',
  'postCheckout',
  'postMerge',
  'prePush',
  'preReceive',
  'update',
  'postReceive',
  'postUpdate',
  'pushToCheckout',
  'preAutoGc',
  'postRewrite',
  'sendemailValidate'
];

String getCommitEditMsg() {
  var rootDir = Directory.current;
  var myFile = File(path.fromUri('../.git/COMMIT_EDITMSG'));
  var commitMsg = myFile.readAsStringSync();
  return commitMsg;
}

Future<bool> commitMsg() async {
  // var commitMsg = Utils.getCommitEditMsg();
  // if (commitMsg.startsWith('fix:')) {
  //   return true; // you can return true let commit go
  // } else {
  //   print('you should add `fix` in the commit message');
  //   return false;
  // }
  return true;
}

Future<bool> preCommit() async {
  stdout.writeln(getCommitEditMsg());
  // try {
  //   ProcessResult result = await Process.run('dartanalyzer', ['bin']);
  //   print(result.stdout);
  //   if (result.exitCode != 0) return false;
  // } catch (e) {
  //   return false;
  // }
  return true;
}
