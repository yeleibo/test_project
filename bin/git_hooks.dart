import 'package:git_hooks/git_hooks.dart';
// import 'dart:io';

void main(List<String> arguments) {
  // ignore: omit_local_variable_types
  Map<Git, UserBackFun> params = {
    Git.preCommit: preCommit
  };
  GitHooks.call(arguments, params);
}


Future<bool> preCommit() async {
  // try {
  //   ProcessResult result = await Process.run('dartanalyzer', ['bin']);
  //   print(result.stdout);
  //   if (result.exitCode != 0) return false;
  // } catch (e) {
  //   return false;
  // }
  return true;
}
