 import 'package:flutter/material.dart';

class home extends StatefulWidget {
   const home({super.key});
 
   @override
   State<home> createState() => _homeState();
 }
 
 class _homeState extends State<home> {

  final TextEditingController numerEone= TextEditingController();
  final TextEditingController numerEtwo= TextEditingController();
double result=0.0;


  @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blueGrey,


       appBar:  AppBar(

         title: Text('Calculator',style: TextStyle(

           letterSpacing:
             6

         ),),
       ),

       body: Padding(
         padding: const EdgeInsets.all(70.0),
         child: Column(
           children: [

             TextField(

               controller: numerEone,
               keyboardType: TextInputType.number,
               decoration: const InputDecoration(

                 hintText: 'Number1',
                 labelText: 'Number1',


               ),




             ),
             const SizedBox(
               height: 18,
             ),
             TextField(
               controller: numerEtwo,
               keyboardType: TextInputType.number,
               decoration: const InputDecoration(

                 hintText: 'Number2',
                 hintStyle: TextStyle(

                 ),
                 labelText: 'Number2',


               ),




             ),
             const SizedBox(
               height: 18,
             ),

             Row(

               mainAxisAlignment:  MainAxisAlignment.spaceEvenly,

               children: [

             ElevatedButton.icon(


               onPressed: (){
                 add();}, icon: Icon(Icons.add),
               label: Text('ADD'),),

             ElevatedButton.icon(

               onPressed: (){sub();}, icon: Icon(
                 Icons.remove),
               label: Text('SUB'),),

                 ElevatedButton.icon(
                   onPressed: (){multify();},
                   icon: Icon(Icons.ac_unit_outlined),
                   label: Text('Multify'),),


               ],),
             const SizedBox(
               height: 40,
             ),

             ElevatedButton.icon(onPressed: (){
               divi();
             }, icon: Icon(Icons.linear_scale_sharp),label: Text('Division'),),

             const SizedBox(
               height: 30,
             ),
             Text('Result :$result',style: TextStyle(
               fontWeight: FontWeight.w900,
               fontSize: 36,
             ),)

           ],
         ),
       ),

     );
   }

   void add(){

    double num1= double.tryParse(numerEone.text)??0;

    double num2= double.tryParse(numerEtwo.text)??0;

 result=num1+num2;
setState(() {

});

   }
  void sub(){

    double num1= double.tryParse(numerEone.text)??0;

    double num2= double.tryParse(numerEtwo.text)??0;

    result=num1-num2;
    setState(() {

    });

  }

  void multify(){

    double num1= double.tryParse(numerEone.text)??0;

    double num2= double.tryParse(numerEtwo.text)??0;

    result=num1*num2;
    setState(() {

    });

  }
  void divi(){

    double num1= double.tryParse(numerEone.text)??0;

    double num2= double.tryParse(numerEtwo.text)??0;

    result=num1/num2;
    setState(() {

    });

  }


  @override
  void dispose() {
numerEone.dispose();
numerEtwo.dispose();
    super.dispose();
  }
 }
