import 'dart:collection';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:docpa/colors.dart';
import 'package:docpa/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/route_manager.dart';

class GoogleMapScreen extends StatefulWidget {
  GoogleMapScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  ScrollController scrollController = ScrollController();
  static final CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(19.0760, 72.8777),
    zoom: 11,
  );
  Set<Marker> _markers = HashSet<Marker>();
  late GoogleMapController _mapController;
  late BitmapDescriptor _markerIcon;

  static List<Map<String, dynamic>> list = [
    {"title": "Malad", "id": "1", "lat": 19.1874, "lon": 72.8484},
    {"title": "Borivali", "id": "2", "lat": 19.2307, "lon": 72.8567},
    {"title": "Mulund West", "id": "3", "lat": 19.1726, "lon": 72.9425},
    {"title": "Mumbai", "id": "4", "lat": 19.0760, "lon": 72.8777},
  ];

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/hospital_medium.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    this._mapController = controller;
    for (int i = 0; i < list.length; i++) {
      _markers.add(
        Marker(
          icon: _markerIcon,
          markerId: MarkerId(list[i]['id']),
          position: LatLng(list[i]['lat'], list[i]['lon']),
          infoWindow:
              InfoWindow(title: list[i]['title'], snippet: "A Dream city"),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coolors.appBar,
        leading: Center(
          child: GestureDetector(
              onTap: () {
                print("Back...");
                Get.back();
              },
              child: "Back".text.color(Color(0xff7C78EE)).make()),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: initialCameraPosition,
              onMapCreated: _onMapCreated,
              markers: _markers,
            ),
            Container(
              height: 55,
              alignment: Alignment.topCenter,
              child: TextField(
                style: TextStyle(color: Color(0xff1E2022)),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xffC6C6C6)),
                  border: InputBorder.none,
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintStyle: TextStyle(color: Color(0xffC6C6C6)),
                  filled: true,
                  focusColor: Color(0xffffffff),
                  hoverColor: Color(0xffffffff),
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Color(0xffffffff),
                ),
              ).pOnly(left: 16, right: 16, top: 16),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // height: 190,
                        width: 260,
                        margin: EdgeInsets.only(right: 16),
                        child: Card(
                          color: Colors.white,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide.none,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                minVerticalPadding: 10,
                                contentPadding: EdgeInsets.all(0),
                                leading: Icon(Icons.border_all, size: 80),
                                title: Text('Desmond Eagle',
                                    style: TextStyle(color: Color(0xff1E2022))),
                                subtitle: Text.rich(
                                  TextSpan(
                                    text: 'Sandusky, Ohio\n',
                                    style: TextStyle(
                                      color: Color(0xff77838F),
                                    ),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: '+12 345 678 901\n',
                                        style: TextStyle(
                                          color: Color(0xff77838F),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '24h',
                                        style: TextStyle(
                                          color: Color(0xff77838F),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              10.heightBox,
                              ElevatedButton(
                                onPressed: () {},
                                child: "Book Now".text.make(),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Coolors.primeBtn),
                                ),
                              ).w(200)
                            ],
                          ),
                        ),
                      );
                    }),
              ).pOnly(bottom: 16),
            ),
          ],
        ),
      ),
    );
  }
}
