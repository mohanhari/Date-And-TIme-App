import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location for the UI
  String time; // time in that location
  String flag; // url to asset flag icon
  String url; //location url for api end point

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    // Make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
//    print(data);

    // get properties of data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    //set time property
    time = DateFormat.jm().format(now);
  }

}