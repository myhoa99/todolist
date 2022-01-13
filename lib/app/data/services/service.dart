import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_list_getx/app/core/untils/keys.dart';

class StorageService extends GetxService{
  late GetStorage box;
  Future<StorageService> init() async{
    box= GetStorage();
    await box.write(taskKey,[]);
    return this;
  }
  T read<T> (String key){
    return box.read(key);
  }
   void write(String key, dynamic value) async{
     await box.write(key, value);
   }
}