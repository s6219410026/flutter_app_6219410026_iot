import 'package:flutter/material.dart';
import 'package:flutter_app_6219410026_iot/views/weight_ui.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeightUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}