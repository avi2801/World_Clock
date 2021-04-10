import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('The init function is working');
  }

  @override
  Widget build(BuildContext context) {
    print('The build function is running');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[800],
            title:Text('Choose a Location'),
            centerTitle:true,
            elevation: 0,
        ),
        body:RaisedButton(onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child:Text('The counter is $counter'),)
      ),
    );
  }
}
