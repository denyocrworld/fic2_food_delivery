import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PsShareParkingFormController extends State<PsShareParkingFormView>
    implements MvcController {
  static late PsShareParkingFormController instance;
  late PsShareParkingFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  Future<Position> getLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  doShareParking() async {
    //alt+shift+e
    var photo = Input.get("photo");
    var location = Input.get("location");
    var price = Input.get("price");
    var description = Input.get("description");
    var position = await getLocation();

    await FirebaseFirestore.instance.collection("parking_list").add({
      "photo": photo,
      "location": location,
      "price": price,
      "description": description,
      "latitude": position.latitude,
      "longitude": position.longitude,
      "user": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "photo": FirebaseAuth.instance.currentUser!.photoURL,
        "name": FirebaseAuth.instance.currentUser!.displayName,
      },
      "status": "Pending",
    });

    Navigator.pop(context);
  }
}
