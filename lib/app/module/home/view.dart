import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:to_do_list_getx/app/core/untils/extensions.dart';
import 'package:to_do_list_getx/app/core/values/colors.dart';
import 'package:to_do_list_getx/app/data/models/task.dart';
import 'package:to_do_list_getx/app/module/home/controller.dart';
import 'package:to_do_list_getx/app/module/home/widgets/add_card.dart';
import 'package:to_do_list_getx/app/module/home/widgets/task_card.dart';
class HomePage extends GetView<HomeController>
{
   const HomePage({ Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
            padding: EdgeInsets.all(4.0.wp),
             child:Text('My List',
            style: TextStyle(
              fontSize: 24.0.sp,
              fontWeight: FontWeight.bold,
            ),
            ),
           ),
             GridView.count(
               crossAxisCount: 2,
               shrinkWrap: true,
               physics: ClampingScrollPhysics(),
               children: [
                 ...controller.tasks
                     .map((element) => LongPressDraggable(
                   data: element,
                   onDragStarted: ()=> controller.changeDeleitng(true),
                   onDraggableCanceled: (_, __)=>controller.changeDeleitng(false),
                   onDragEnd:(_)=>controller.changeDeleitng(false),
                   feedback: Opacity( opacity: 0.8,
                   child: TaskCard(task: element),

                   ),
                     child: TaskCard(
                     task: element)))
                     .toList(),
                 AddCard()],
             ),
          ],
        ),
      ),
       floatingActionButton: DragTarget<Task>(
        builder:(_,__,____){
        return Obx(
        ()=> FloatingActionButton(
        backgroundColor: controller.deleting.value? Colors.red:blue,
         onPressed: (){},
         child: Icon(controller.deleting.value? Icons.delete:Icons.add),
        ),
        );
        },
         onAccept: ( Task task){
           controller.deleteTasking(task);
           EasyLoading.showSuccess('Delete sucess');
         },
       ),
    );
  }
}
