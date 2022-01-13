import 'dart:convert';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:to_do_list_getx/app/core/untils/keys.dart';
import 'package:to_do_list_getx/app/data/models/task.dart';
import 'package:to_do_list_getx/app/data/services/service.dart';

class TaskProvider{
  final storage= Get.find<StorageService>();
//   {
//     'tasks':[
//   {
//     'title':'Work',
//     'color':'#ff123456',
//     'icon':0xe123
//   }
//     ]
// }
  List<Task> readTasks(){
    var tasks=<Task>[];
    jsonDecode(storage.read(taskKey).toString())
    .forEach((e)=> tasks.add(Task.fromJson(e)));
    return tasks;

  }
   void writeTasks(List<Task> tasks){
    storage.write(taskKey, jsonEncode(tasks));
   }
}