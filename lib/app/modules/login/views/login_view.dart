import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/login/components/components.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userController;
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.only(
          left: Dimension.width20,
          right: Dimension.width20,
          top: Dimension.height10,
        ),
        child: Column(
          children: [
            SizedBox(
              height: Dimension.height30,
            ),
            Container(
              height: Dimension.height45 * 6,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage("assets/image/lgedLogo.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.amber),
            ),
            SizedBox(
              height: Dimension.height20,
            ),
            LoginEditField(
              hintText: "Email/UserName",
              icon: Icons.email,
            ),
            SizedBox(
              height: Dimension.height10,
            ),
            LoginEditField(
              hintText: "Password",
              icon: Icons.key,
              postIcon: Icons.visibility_off,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Forget Password?"),
                InkWell(
                  onTap: (){
                    Get.toNamed(Routes.TASK);
                  },
                  child: Container(
                    height: Dimension.height30 + Dimension.height5,
                    width: Dimension.width30 * 4,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text("Login"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
