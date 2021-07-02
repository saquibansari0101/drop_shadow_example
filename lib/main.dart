import 'dart:ui';

import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:
          Center(
            child: DropShadowImage(
              //this is the package class we called

              //@image give Image.asset() or Image.network()
              // image: Image.asset('images/example.jpg',width: 200,),
              image: Image.network('https://images-na.ssl-images-amazon.com/images/I/81S1qo7-NJL._SL1425_.jpg',width: 300,),
              //@borderRadius if not defined default value is 0
              borderRadius: 20,
              //@blurRadius if not defined default value is
              blurRadius: 15,
              //@offset default value is Offset(8,8)
              offset: Offset(5,5),
              //@scale if not defined default value is 1
              scale: 1,
            ),
          )
      ),
    );
  }
}