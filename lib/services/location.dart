import 'package:geolocator/geolocator.dart';

class Location{
   late double lat;
   late double lon;
 Future getLocation()async{
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lon= position.longitude;
      print(lat);
      print(lon);
    }
    catch(e){
      print('Permission Denied');
    }
  }

}