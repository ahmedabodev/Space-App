import 'package:get/get.dart';

class HomeController extends GetxController{

  int index=0;

  changeindex(value){
    index=value;
    update();
  }


}