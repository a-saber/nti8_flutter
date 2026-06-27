
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
        children:
        [
          //
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green
            ),
            alignment: Alignment.center,
            child: Text('Hi'),
          ),

          //

          Text('Hello'),


          //
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children:
                [
                  //
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                  ),
              
                  SizedBox(height: 30,),
              
                  //
                  Row(
                    children: [
                      //
                      Container(
                        width: 50,
                        height: 25,
                        color: Colors.grey,
                      ),
              
                      SizedBox(width: 20,),
                      //
                      Text('data')
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),

    );
  }
}
