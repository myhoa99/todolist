import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/data/services/service.dart';
import 'app/module/home/binding.dart';
import 'app/module/home/view.dart';
void main() async{
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List using GetX',
      home: HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );

  }
}
