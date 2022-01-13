
import 'package:to_do_list_getx/app/data/models/task.dart';
import 'package:to_do_list_getx/app/data/provides/task/provider.dart';

class TaskRepository{
  TaskProvider taskProvider;
  TaskRepository({
    required this.taskProvider
});
   List<Task> readTasks()=> taskProvider.readTasks();
   void writeTasks(List<Task> tasks)=>taskProvider.writeTasks(tasks);
}