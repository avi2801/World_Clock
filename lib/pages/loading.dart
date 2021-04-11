import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String url='https://jsonplaceholder.typicode.com/todos/1';
  void getData() async
  {
     Response response= await get(Uri.https('jsonplaceholder.typicode.com', 'todos/1'));
     print(response.body);
     Map data = jsonDecode(response.body);
     print(data['title']);
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body:Text('hi'),
      ),
    );
  }
}

