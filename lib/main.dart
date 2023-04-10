import 'package:flutter/material.dart';

import 'first_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     routes: {
       "firstPage" : (context) => FirstPage(),
     },
    initialRoute: "firstPage",
   );
  }

}

