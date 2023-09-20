import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Second Screen"),
    ),
    body: Center(
      child:ElevatedButton(
          onPressed: () {  //1
            Navigator.pop(context);    //خطوه لوره اقفل الشاشه الى اتفتحت

            //Navigator.pushNamed(context, "/"); اطلع قدام
            },
          child: Text("Back"),
    ),));
  }
}
