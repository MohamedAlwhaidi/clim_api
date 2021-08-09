import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;

  Future  getCurrentLocation() async{
    await Geolocator.getCurrentPosition().then((Position position) {
      latitude = position.latitude;
      longitude = position.longitude;
    }).catchError((e) {
      print(e);
    });
  }
}