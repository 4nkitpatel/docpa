import 'package:docpa/widgets/custome_date_picker.dart';
import 'package:docpa/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/route_manager.dart';
import 'package:docpa/colors.dart';

class SchedulerPage extends StatefulWidget {
  const SchedulerPage({Key? key}) : super(key: key);

  @override
  _SchedulerPageState createState() => _SchedulerPageState();
}

class _SchedulerPageState extends State<SchedulerPage> {
  String selectedDate = '';
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
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              selectedDate == ''
                  ? "Select a date".text.white.make()
                  : selectedDate.text.white.color(Color(0xff457AFE)).make(),
              // "16 June 2021".text.color(Color(0xff457AFE)).make(),
              "Schedule".text.white.make(),
              15.heightBox,
              Calendar(
                cb: (text) {
                  setState(() {
                    selectedDate = text;
                  });
                },
              ),
              30.heightBox,
              "List of Schedule".text.white.make(),
              10.heightBox,
              ListOfSchedule(),
              20.heightBox,
              Wgt.getPrimaryBtn(cb: () {}, context: context, text: "Add Events")
            ],
          ),
        ),
      ),
    );
  }

  // Container listOfSchedule() {

  // }
}

class ListOfSchedule extends StatelessWidget {
  ListOfSchedule({Key? key}) : super(key: key);

  List<Color> colors = [
    Color(0xffFCF1D6),
    Color(0xffD2E6FF),
    Color(0xffF9D8D9),
    Color(0xffD9FFE5),
    Color(0xffECE7FE),
    Color(0xffFFFFFF)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.only(left: 0, right: 0, bottom: 10),
              leading: "09:00 AM".text.size(13).white.make().pOnly(top: 5),
              title: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: (colors..shuffle()).first,
                ),
                width: 50,
                height: 50,
                child: "Consultation"
                    .text
                    .size(13)
                    .color(Color(0xff1E2022))
                    .make(),
              ),
            );
          }),
    );
  }
}
