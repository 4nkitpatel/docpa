import 'package:auto_size_text/auto_size_text.dart';
import 'package:docpa/colors.dart';
import 'package:docpa/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/route_manager.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // bool isChecked = false;
  var isChecked = List<bool>.filled(3, false).toList();
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
                Get.toNamed("/googlemap");
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
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Dr. Roseberry\n",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'OBGY | Russia\n',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Working Lorem Hospital (3 Year)\n',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Regd, 18723686\n',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              " 3300 points",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            // "".text.size(10).white.make(),
                            5.widthBox,
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              " 30m Away",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            // "30m Away".text.size(10).white.make(),
                          ])
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
                              fit: BoxFit.cover,
                            ),
                          ),
                          10.heightBox,
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Let's Team Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Coolors.primeBtn),
                            ),
                          ).w(100).h(20)
                        ],
                      )
                    ],
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.topLeft,
                    child: "Let's Sync Calendar".text.white.underline.make(),
                  ),
                  Row(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/addtocalendar.png',
                              height: 150, width: 150),
                        ],
                      ),
                      10.widthBox,
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 190,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Spacer(),
                                    "S".text.size(5).white.make(),
                                    3.widthBox,
                                    "M".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "W".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "F".text.size(5).white.make(),
                                    3.widthBox,
                                    "S".text.size(5).white.make(),
                                  ],
                                ),
                                "9.30 am to 11.00 am".text.size(10).white.make()
                              ],
                            ),
                          ),
                          5.heightBox,
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 190,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Spacer(),
                                    "S".text.size(5).white.make(),
                                    3.widthBox,
                                    "M".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "W".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "F".text.size(5).white.make(),
                                    3.widthBox,
                                    "S".text.size(5).white.make(),
                                  ],
                                ),
                                "9.30 am to 11.00 am".text.size(10).white.make()
                              ],
                            ),
                          ),
                          5.heightBox,
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 190,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Spacer(),
                                    "S".text.size(5).white.make(),
                                    3.widthBox,
                                    "M".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "W".text.size(5).white.make(),
                                    3.widthBox,
                                    "T".text.size(5).white.make(),
                                    3.widthBox,
                                    "F".text.size(5).white.make(),
                                    3.widthBox,
                                    "S".text.size(5).white.make(),
                                  ],
                                ),
                                "9.30 am to 11.00 am".text.size(10).white.make()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Coolors.primeBtn,
                          border: Border.all(color: Coolors.primeBtn),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: MediaQuery.of(context).size.width / 3 - 15,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.9,
                              child: Checkbox(
                                visualDensity: VisualDensity.compact,
                                checkColor: Colors.black,
                                fillColor:
                                    MaterialStateProperty.all(Colors.white),
                                value: isChecked[0],
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked[0] = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Assistant",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            // "Assistant".text.size(6).white.make(),
                          ],
                        ),
                      ),
                      10.widthBox,
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Coolors.primeBtn,
                          border: Border.all(color: Coolors.primeBtn),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.9,
                              child: Checkbox(
                                visualDensity: VisualDensity.compact,
                                checkColor: Colors.black,
                                fillColor:
                                    MaterialStateProperty.all(Colors.white),
                                value: isChecked[1],
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked[1] = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "PMO",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      10.widthBox,
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Coolors.primeBtn,
                          border: Border.all(color: Coolors.primeBtn),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: MediaQuery.of(context).size.width / 3 - 15,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.9,
                              child: Checkbox(
                                visualDensity: VisualDensity.compact,
                                checkColor: Colors.black,
                                fillColor:
                                    MaterialStateProperty.all(Colors.white),
                                value: isChecked[2],
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked[2] = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Chamber",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/addpatients.png',
                            height: 120, width: 170),
                        // 10.heightBox,
                        AutoSizeText(
                          "If you need any thoughts on any of your patients please send me the deatils using below button",
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          minFontSize: 8,
                          maxFontSize: 10,
                        ).centered(),
                        10.heightBox,
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed("/dashboard_2");
                          },
                          child: Text(
                            "Send Patient Details",
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Coolors.primeBtn))),
                            backgroundColor:
                                MaterialStateProperty.all(Coolors.primeBtn),
                          ),
                        ).w(150).h(30)
                      ],
                    ),
                  ),
                  // 10.heightBox,
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: "Recent Paper Published".text.white.make(),
                  // ),
                  // AutoSizeText(
                  //   "Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  //   style: TextStyle(color: Colors.white),
                  //   maxLines: 4,
                  //   textAlign: TextAlign.left,
                  //   minFontSize: 10,
                  //   maxFontSize: 12,
                  // ),
                ],
              )),
        ),
      ),
    );
  }
}
