
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.arrow_back, color: Colors.deepPurple,),
        title: Text('Hello', style: TextStyle(
            color: Colors.cyan,
            fontSize: 30,
            fontWeight: FontWeight.w900
        ),),
        actions: [
          Text('data'),
          SizedBox(width: 20,),
          Icon(Icons.check_circle)
        ],

      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Expanded(
          //   flex: 4,
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          
          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person),
              // Spacer(),
              Text('username')
            ],
          ),
          Spacer(),

          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          ),
        ]
      ),

    );
  }
}
