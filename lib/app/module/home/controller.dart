import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:to_do_list_getx/app/data/models/task.dart';
import 'package:to_do_list_getx/app/data/services/repository.dart';

class HomeController extends GetxController{
 TaskRepository taskRepository;
 HomeController({ required this. taskRepository});
 final formKey= GlobalKey<FormState>();
 final editCtl= TextEditingController();
 final chipIndex=0.obs;
 final deleting= false.obs;
 final tasks=<Task>[].obs;
 @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_)=>taskRepository.writeTasks(tasks));
  }
  @override
  void onClose() {

    super.onClose();
  }
  void changeChipIndex(int value){
   chipIndex.value= value;
   
  }
  void changeDeleitng (bool value){
  deleting.value= value;
  }
   bool addTask(Task task){
   if(tasks.contains(task)){
     return false;
   }
   tasks.add(task);
   return true;
   }

  void deleteTasking(Task task) {
  tasks.remove(task);

  }
}