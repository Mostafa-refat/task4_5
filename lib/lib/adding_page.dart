import 'package:flutter/material.dart';
import 'package:task4_5/common.dart';
import 'model.dart';

class AddTaskPage extends StatefulWidget {


  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {

  bool? checkBoxValue = false;
  String? val;
  final controller = TextEditingController();
  String? value = '';
  Model result = Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Complete?',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              Checkbox(
                  value: checkBoxValue,
                  activeColor: Colors.greenAccent,
                  onChanged: (val) {
                    setState(() {
                      checkBoxValue = val;
                    });
                  }),

            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey[800],
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.grey[700]),
                ),

                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: (){
                  setState(() {
                    value = controller.text;
                    print(value);
                    print(checkBoxValue);
                    result.taskName = value;
                    result.finish = checkBoxValue;
                    Commons.taskArray.add(Model(finish: result.finish,taskName: result.taskName));
                    Navigator.pop(context);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
