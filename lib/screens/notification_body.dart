import 'package:docpa/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

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
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      // height: 150,
                      padding: EdgeInsets.only(top: 90, left: 10, right: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            minVerticalPadding: 10,
                            contentPadding: EdgeInsets.all(0),
                            leading: Container(
                              height: 50,
                              width: 50,
                              color: Color(0xffD8D8D8),
                            ),
                            title: Text('Natalya Undergrowth',
                                style: TextStyle(color: Color(0xff1E2022))),
                            subtitle: Row(
                              children: [
                                Icon(Icons.location_city),
                                5.widthBox,
                                "Espanola, NM"
                                    .text
                                    .color(Color(0xff77838F))
                                    .make()
                              ],
                            ),
                            trailing: Icon(Icons.more_vert_outlined),
                          ),
                          10.heightBox,
                          Row(children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: "Accept".text.make(),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffD35E77)),
                              ),
                            ).w(150),
                            10.widthBox,
                            ElevatedButton(
                              onPressed: () {},
                              child: "Decline"
                                  .text
                                  .color(Color(0xff457AFE))
                                  .make(),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffE9EFFE)),
                              ),
                            ).w(150),
                          ])
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xffD35E77),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Appointment Request".text.white.size(5).make(),
                          5.heightBox,
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                              ),
                              5.widthBox,
                              "16 June 2020, 10:30 AM".text.white.make(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: "Next Appointments".text.white.make(),
              ),
              5.heightBox,
              Container(
                height: 300,
                child: ListView.separated(
                  separatorBuilder: (context, index) => 10.heightBox,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Color(0xff003049),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: Row(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                            10.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                "Eleanor Fant".text.white.make(),
                                "17 June 2020, 09:00 AM".text.white.make(),
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
            ],
          ),
        ),
      ),
    );
  }
}
