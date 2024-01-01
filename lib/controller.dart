import 'package:get/get.dart';
import 'package:untitled2/helper.dart';

class homecontroller extends GetxController
{
   List<dynamic> list=[];
  Future<List> callapi()
  async {
     list= await Apihelper.helper.getapi() as List;
     return list;
  }
}
