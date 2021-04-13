import 'package:http/http.dart';
import 'dart:convert';

class WorldTime
{
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location,this.flag,this.url});


  Future<void> getTime() async {
    try{
      Response response = await get(new Uri.https("worldtimeapi.org", '/api/timezone/$url')); ;
      // print(response.body);
      Map data = jsonDecode(response.body);
      // print(data);
      // print(data['dst']);
      //get property from data

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      String min=data['utc_offset'].substring(4,6);
      //print(datetime);
      print(offset);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset),minutes: int.parse(min)));
      //
      // print(now);

      time=now.toString();
    }
    catch(e){
      print('Error message $e');
    }

  }

}

