import 'package:get/get.dart';
class CounterAppController extends GetxController{
  RxInt count=0.obs;
  void Increment(){
    count++;
  }
    void Disincrement(){
    count--;
  }
}