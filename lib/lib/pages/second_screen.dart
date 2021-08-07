import 'package:flutter/material.dart';
import 'package:task4_5/common.dart';

class InCompletePage extends StatefulWidget {
  const InCompletePage({Key? key}) : super(key: key);

  @override
  _InCompletePageState createState() => _InCompletePageState();
}

class _InCompletePageState extends State<InCompletePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Commons.incompleteTasks();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Commons.incomplete.length,
      itemBuilder: (ctx, i) => ListTile(
        title: Text(Commons.incomplete[i].taskName!),
        leading: Checkbox(
            value: Commons.incomplete[i].finish!,
            //value: checkBoxValue,
            activeColor: Colors.greenAccent,
            onChanged: (val) {
              setState(() {
                Commons.incomplete[i].finish = !Commons.incomplete[i].finish!;
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
    );;
  }
}
