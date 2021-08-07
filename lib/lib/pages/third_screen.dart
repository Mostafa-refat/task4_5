import 'package:flutter/material.dart';
import 'package:task4_5/common.dart';

class CompletePage extends StatefulWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  _CompletePageState createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Commons.completeTasks();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Commons.complete.length,
      itemBuilder: (ctx, i) => ListTile(
        title: Text(Commons.complete[i].taskName!),
        leading: Checkbox(
            value: Commons.complete[i].finish!,
            //value: checkBoxValue,
            activeColor: Colors.greenAccent,
            onChanged: (val) {
              setState(() {
                Commons.complete[i].finish = !Commons.complete[i].finish!;
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
