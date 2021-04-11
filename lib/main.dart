import 'package:flutter/material.dart';
import 'package:time_app/pages/home.dart';
import 'package:time_app/pages/loading.dart';
import 'package:time_app/pages/choose_location.dart';



void main() =>runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/location':(context)=>ChooseLocation(),
    '/home':(context)=>Home(),
  },
));