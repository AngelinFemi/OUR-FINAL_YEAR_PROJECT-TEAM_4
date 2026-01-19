import 'package:location/location.dart';

class LocationService {
  final Location location = Location();

  Future<Map<String, double>?> getCurrentLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return null;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return null;
    }

    LocationData data = await location.getLocation();
    return {"latitude": data.latitude!, "longitude": data.longitude!};
  }
}
