import 'package:flutter/material.dart';
import 'package:task4_5/model.dart';
import 'package:task4_5/common.dart';
import 'package:task4_5/adding_page.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  bool? checkBoxValue = false;
  Model result = Model();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Commons.taskArray.length,
      itemBuilder: (ctx, i) => ListTile(
        title: Text(Commons.taskArray[i].taskName!),
        leading: Checkbox(
            value: Commons.taskArray[i].finish!,
            //value: checkBoxValue,
            activeColor: Colors.greenAccent,
            onChanged: (val) {
              setState(() {
                checkBoxValue = val;
              });
            }),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red[400],
          ),
          onPressed: () {},
        ),
      ),
    );

  }
}
