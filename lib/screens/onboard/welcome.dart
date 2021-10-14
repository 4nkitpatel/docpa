import 'package:docpa/colors.dart';
import 'package:docpa/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Coolors.bgColorP,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 14, right: 14),
            child: Column(
              children: [
                AutoSizeText(
                  "Your Guide \nto Adventure",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ).centered().pOnly(top: 75),
                SizedBox(
                  height: 20,
                ),
                "The best way to navigate your world and discover your capabilities!!!"
                    .text
                    .center
                    .color(Colors.white)
                    .make(),
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/doctors_1x.png'),
                SizedBox(
                  height: 40,
                ),
                "Welcome to the Tooth".text.color(Colors.white).make(),
                SizedBox(
                  height: 10,
                ),
                Wgt.getPrimaryBtn(
                    text: "SIGN IN",
                    context: context,
                    cb: () {
                      Get.toNamed('/login');
                    }),
                Wgt.getSecondaryBtn(
                    text: "SIGN UP",
                    context: context,
                    cb: () {
                      // Navigator.pushNamed(context, "/signup");
                      Get.toNamed('/signup');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
