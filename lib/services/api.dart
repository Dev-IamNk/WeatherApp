import 'package:http/http.dart';

class Api{

 late double lat;
 late double lon;

  Api({required this.lat,required this.lon});

  Future getWeather()async{
    var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${this.lat}&lon=${this.lon}&units=metric&appid=f6c0ee5d2ae2eb5859e20d2d565e50b1');
    Response response = await get(url) ;
    var data=response.body;
    return data;
  }

}