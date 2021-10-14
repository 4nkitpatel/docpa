import 'package:docpa/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/route_manager.dart';

class NearLocation extends StatefulWidget {
  const NearLocation({Key? key}) : super(key: key);

  @override
  _NearLocationState createState() => _NearLocationState();
}

class _NearLocationState extends State<NearLocation> {
  double sliderValue = 0;
  var preferences = [
    'Assistant',
    'RMO',
    'Chamber',
    'Specialist',
    'Slots',
    'Night Duty'
  ];
  var days = ["S", "M", "T", "W", "T", "F", "S"];
  var isChecked = List<bool>.filled(6, false).toList();
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
      backgroundColor: Coolors.bgColorP,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Get.toNamed("/dashboard");
              },
              child: ImageIcon(
                AssetImage('assets/home.png'),
                size: 40,
                color: Colors.white,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                // Get.toNamed("/schedule");
              },
              child: ImageIcon(
                AssetImage('assets/person.png'),
                size: 40,
                color: Colors.white,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                // Get.toNamed("/patients");
              },
              child: ImageIcon(
                AssetImage('assets/compass.png'),
                size: 40,
                color: Colors.white,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                // Get.toNamed("/patients");
              },
              child: ImageIcon(
                AssetImage('assets/search.png'),
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: preferences
                          .asMap()
                          .map((key, value) => MapEntry(
                                key,
                                Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Coolors.primeBtn,
                                    border: Border.all(color: Coolors.primeBtn),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  width: MediaQuery.of(context).size.width / 3 -
                                      15,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Checkbox(
                                          visualDensity: VisualDensity.compact,
                                          checkColor: Colors.black,
                                          fillColor: MaterialStateProperty.all(
                                              Colors.white),
                                          value: isChecked[key],
                                          shape: CircleBorder(),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked[key] = value!;
                                            });
                                          },
                                        ),
                                      ),
                                      Text(
                                        preferences[key],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      // "Assistant".text.size(6).white.make(),
                                    ],
                                  ),
                                ),
                              ))
                          .values
                          .toList(),
                    ),
                    10.heightBox,
                    Row(
                      children: days
                          .map((d) => Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                height: 25,
                                width: 25,
                                child: d.text.size(5).white.make().centered(),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              50.heightBox,
              SliderTheme(
                data: SliderThemeData(
                  thumbColor: Colors.white,
                  activeTrackColor: Color(0xff007AFF),
                ),
                child: Slider(
                  // activeColor: Color(0xff007AFF),
                  value: sliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                    });
                  },
                  min: 0,
                  max: 100,
                ),
              ),
              50.heightBox,

              Container(
                height: 330,
                child: ListView.separated(
                  separatorBuilder: (context, index) => 10.heightBox,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Color(0xff003049),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Dr. Roseberry".text.white.make(),
                                "Mumbai".text.size(10).white.make(),
                              ],
                            ),
                            Spacer(),
                            Column(
                              // crossAxisAlignment:
                              //     CrossAxisAlignment.start,
                              children: [
                                "32 Miles".text.white.make(),
                                "3410 points".text.size(10).white.make(),
                              ],
                            ),
                            // Radio(
                            //   activeColor: Colors.red,
                            //   fillColor:
                            //       MaterialStateProperty.all(Colors.white),
                            //   value: index,
                            //   groupValue: -1,
                            //   onChanged: (value) {
                            //     print(value);
                            //   },
                            // ),
                          ],
                        ).p8(),
                      ),
                    );
                  },
                ),
              ),

              // SizedBox(
              //     height: 25.0,
              //     child: ListView.separated(
              //         scrollDirection: Axis.horizontal,
              //         // shrinkWrap: true,
              //         separatorBuilder: (context, index) => 10.widthBox,
              //         itemCount: preferences.length,
              //         itemBuilder: (context, index) {
              //           return Container(
              //             height: 25,
              //             decoration: BoxDecoration(
              //               color: Coolors.primeBtn,
              //               border: Border.all(color: Coolors.primeBtn),
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(10)),
              //             ),
              //             width: MediaQuery.of(context).size.width / 3,
              //             child: Row(
              //               children: [
              //                 Transform.scale(
              //                   scale: 0.9,
              //                   child: Checkbox(
              //                     visualDensity: VisualDensity.compact,
              //                     checkColor: Colors.black,
              //                     fillColor: MaterialStateProperty.all(
              //                         Colors.white),
              //                     value: isChecked[index],
              //                     shape: CircleBorder(),
              //                     onChanged: (bool? value) {
              //                       setState(() {
              //                         isChecked[index] = value!;
              //                       });
              //                     },
              //                   ),
              //                 ),
              //                 Text(
              //                   preferences[index],
              //                   style: TextStyle(
              //                       color: Colors.white, fontSize: 10),
              //                 ),
              //                 // "Assistant".text.size(6).white.make(),
              //               ],
              //             ),
              //           );
              //         })),

              // Wrap(
              //   children: preferences
              //       .map(
              //         (p) =>
              //       )
              //       .toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
