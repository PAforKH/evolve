import 'package:flutter/foundation.dart';
import 'package:process_run/process_run.dart';

runInBashC(String command)async{
 await compute(runInBash, command,);
}

Future<String> runInBash(String command)async{
  if(command.contains("\n")){
    return( await Shell(verbose: false, throwOnError: true).run(command)).outText;
  }
  return( await Shell(verbose: false, throwOnError: true).run("bash -c 'LANG=en_US.UTF-8 $command'")).outText;
}