import 'package:auto_size_text/auto_size_text.dart';
import 'package:docpa/colors.dart';
import 'package:docpa/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isChecked = false;
  var isChecked = List<bool>.filled(3, false).toList();
  var listAvatar = [
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=70&q=70',
  ];
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
                  30.heightBox,
                  Align(
                    alignment: Alignment.center,
                    child: "Let's Sync Calendar".text.white.underline.make(),
                  ),
                  10.heightBox,
                  Image.asset(
                    'assets/addtocalendar.png',
                    height: 150,
                    width: 150,
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/scheduler");
                        },
                        child: Text(
                          "Add preferences",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor:
                              MaterialStateProperty.all(Coolors.primeBtn),
                        ),
                      ).w(120).h(25),
                      20.widthBox,
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/notification");
                        },
                        child: Text(
                          "Add working hours",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor:
                              MaterialStateProperty.all(Coolors.primeBtn),
                        ),
                      ).w(120).h(25)
                    ],
                  ),
                  20.heightBox,
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          children: listAvatar
                              .map(
                                (url) => Padding(
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.network(
                                      url,
                                      fit: BoxFit.cover,
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        20.heightBox,
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed("/location");
                          },
                          child: Text(
                            "Build Team",
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red))),
                            backgroundColor:
                                MaterialStateProperty.all(Coolors.primeBtn),
                          ),
                        ).w(150).h(25)
                      ],
                    ),
                  ),
                  // 10.heightBox,
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: "Recent Paper Published".text.white.make(),
                  // ),
                  // 5.heightBox,
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

  List<Widget> buildImage(String url) {
    List<Widget> images = listAvatar
        .map((url) => Image.network(
              url,
              fit: BoxFit.cover,
            ))
        .toList();
    return images;
  }
}
