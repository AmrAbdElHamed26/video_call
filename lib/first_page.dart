import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'call.dart';

class FirstPage extends StatelessWidget {

  FirstPage({Key? key}) : super(key: key);

  static String userId ="" ;
  static String userName ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'video call app',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                onChanged: (data){
                  userName = data ;
                },
                decoration: InputDecoration(
                  hintText: 'enter your name',
                  border: OutlineInputBorder() ,
                ),
              ),
              TextFormField(
                onChanged: (data){
                  userId  = data;
                  userId = data.toString() ;
                },
                decoration: InputDecoration(
                  hintText: 'enter your id',
                  border: OutlineInputBorder() ,
                ),
              ),


              GestureDetector(
                onTap: (){
                  print(userId);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyCall(videoCallID: userName )));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child:Center(child: Text('join call')),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
