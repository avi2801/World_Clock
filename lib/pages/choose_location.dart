import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter=0;
  void getData() async
  {
    String username=await Future.delayed(Duration(seconds: 2),(){
      return 'Avinash';
    }
    );
    String bio= await Future.delayed(Duration(seconds: 2),()
    {
      return "Enginerring Student,Artist,Movie lover";
    });
    print('$username-$bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('I came first');

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
