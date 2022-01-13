import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:to_do_list_getx/app/data/provides/task/provider.dart';
import 'package:to_do_list_getx/app/data/services/repository.dart';
import 'package:to_do_list_getx/app/module/home/controller.dart';
class HomeBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut(
          () => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider(),
      ),
    ),
    );
  }

}