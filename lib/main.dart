import 'package:flutter/material.dart';
import 'package:untitled13/home.dart';

void main (){

  runApp( myapp());




}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const home(),

    theme: ThemeData(

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white

      ),
      inputDecorationTheme: const InputDecorationTheme(


        border:  OutlineInputBorder(

          borderSide: BorderSide(width: 2,color: Colors.black),



        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.blue)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.black),

        )

      ),

elevatedButtonTheme: ElevatedButtonThemeData(

        style: ElevatedButton.styleFrom(


        foregroundColor: Colors.white,
backgroundColor: Colors.lightBlue


    )


    )
    ),


    );
  }
}
