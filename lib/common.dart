
import 'model.dart';
class Commons {
  static  List<Model> taskArray = [
    Model(finish: false,taskName: "test")
  ];

  static  List<Model> incomplete = [];
  static  List<Model> complete = [];


  static void incompleteTasks(){
  incomplete = taskArray.where((element) => element.finish== false).toList();
  }

  static void completeTasks(){
    complete = taskArray.where((element) => element.finish== true).toList();
  }


}
