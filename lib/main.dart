import 'package:flutter/material.dart';
import 'package:untitled88/secondscreen.dart';

//Create two routes.
// Navigate to the second route using Navigator.push().
// Return to the first route using Navigator.pop().
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: MyMainScreen(),  //تانى طريقه فكره الروتز نديه اول شاشه وتاني شاشه و3 شاشه ونلغي هوم
      debugShowCheckedModeBanner: false,
      //2A  way  نلغي الهوم home
       initialRoute: '/',
       routes: {
       '/': (context) => MyMainScreen(),
        '/second': (context) => SecondScreen(),
       //'/third/ddd': (context) => ThirdScreen()
       },
    );
  }
}

class MyMainScreen extends StatefulWidget {
  const MyMainScreen({super.key});
  @override
  State<MyMainScreen> createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MyMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CVPP"),
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});
  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Zeinab Aziz"),
          ElevatedButton(
              onPressed: () {
                //1 اول طريقه
                // Navigator.push(تانى طريقه تخفي
                //   context,
                //   //تبنى شاشه جديده السطرتحت كده رحت للصفحه الجديده
                //   MaterialPageRoute(builder: (context) => const SecondScreen()),
                // );
                //ف الخطوه 2 نحط ده مكان الى اتحذف
                 Navigator.pushNamed(context,"/second");},
              child: Text("Go to Second"))
        ],
      ),
    );
  }
}
