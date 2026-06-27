
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Hello')),
          Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: 10
                    )
                  ]
              ),
              child: Icon(Icons.eighteen_mp, size: 60,)),


          Container(
            child: Text('Hello World Hi Ahmed ', style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.amber,
              letterSpacing: -1,
              wordSpacing: 5,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.dashed
            ),),
          ),
          SizedBox(height: 50,),

          Container(
            width: 100,
            height: 100,
            // color: Colors.grey,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              // shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.red,
                // Colors.black,
                Colors.blue,
              ]),
              border: Border.all(
                color: Colors.green,
                width: 3
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  color: Colors.black,
                  blurRadius: 15,
                  spreadRadius: 10
                )
              ]

            ),
            alignment: Alignment.center,
            child: Text('Hi', style: TextStyle(
              fontSize: 30
            ),),
          ),


          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello'),
                        Text('USer Name'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
