import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/Secondpage.dart';
import 'package:providerdemo/provider1.dart';
import 'package:providerdemo/provider2.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => providerdemo(),),
        ChangeNotifierProvider(create:(context) => providerdemo2(),)
      ],
      child: MaterialApp(
      home: secondpage(),
      ),
    ));
}
