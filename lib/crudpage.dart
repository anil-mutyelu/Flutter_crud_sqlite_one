import 'package:flutter/material.dart';

import 'db_helper.dart';


class Homepage extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
   return _Homepage();
  }

}

class _Homepage extends State<Homepage>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       width: double.infinity,
       height: double.infinity,
       color: Colors.cyanAccent,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           ElevatedButton(
               onPressed: () async {
               {
               await DatabaseHelper.instance.insertRecord({DatabaseHelper.columnName : "yogesh "});
               }
           },
               child:Text('Insert')),

               SizedBox(height: 20,),



           ElevatedButton(
               onPressed: () async {

             var dbquery = await DatabaseHelper.instance.queryDatabase();

             print (dbquery);
           },

               child:Text('Read')),



           SizedBox(height: 20,),

           ElevatedButton(
               onPressed: () async {

                 await DatabaseHelper.instance.updateRecord(
                   {
                     DatabaseHelper.columnId :2,
                     DatabaseHelper.columnName: "anil mutyelu"
                   }
                 );

           },


               child:Text('Update')),

           SizedBox(height: 20,),

           ElevatedButton(
               onPressed: () async {

                 await DatabaseHelper.instance.deleteRecord(2);

               }, child:Text('Delete')),

           SizedBox(height: 20,),



         ],
       ),



     ),

   );
  }

}