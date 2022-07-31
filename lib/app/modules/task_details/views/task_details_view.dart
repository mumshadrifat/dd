import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/button.dart';
import 'package:lged_inspection/app/common_widget/task_forward.dart';
import 'package:lged_inspection/app/common_widget/text.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../../../common_widget/dialouge_box.dart';
import '../../../common_widget/dialouge_helper.dart';
import '../../../routes/app_pages.dart';
import '../controllers/task_details_controller.dart';

class TaskDetailsView extends GetView<TaskDetailsController> {
  bool _lightIsOn = false;

  TaskDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.only(
            top: Dimension.height10,
            left: Dimension.width20,
            right: Dimension.width20),
        child: Column(
          children: [
            Row(
              children: [
                BigText(
                  text: "My Task",
                  size: Dimension.mediumFont,
                ),
                SizedBox(
                  width: 10,
                ),
                BigText(
                  text: ">",
                  size: Dimension.mediumFont,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                BigText(
                  text: "Details",
                  size: Dimension.mediumFont,
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height30,
            ),
            Container(
              height: Dimension.height100 * 4 + Dimension.height20 * 2,
              width: double.maxFinite,
              padding: EdgeInsets.only(
                  left: Dimension.width10 + Dimension.width5,
                  right: Dimension.width15,
                  top: Dimension.height15,
                  bottom: Dimension.height30),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer,
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Loream Ipsum is simply dummy",
                        style: TextStyle(
                            fontSize: Dimension.mediumFont,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  BigText(
                    text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.,",
                    size: Dimension.smallFont,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  BigText(
                    text: "Task List",
                    size: Dimension.mediumFont - 2,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: Dimension.width30,
                            ),
                            Text((index + 1).toString()),
                            Text("."),
                            Text("Lorem Ipsum is simply dummy"),
                          ],
                        );
                      },
                    ),
                  ),
                  BigText(
                    text: "Additional Info",
                    size: Dimension.mediumFont - 2,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 5.0),
                      )
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Ask your question here"),
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            width: 30,
                          )),
                      CustomButton(
                        width: 90,
                        height: 35,
                        radius: 5,
                        text: "Send",
                        backgroundColour: Colors.blue,
                        textColour: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimension.height30 + Dimension.height5,
                  ),
                  InkWell(
                    onTap: () async {
                      _lightIsOn = true;
                      return await DialogHelper.exit(context);

                    },
                    child: Container(
                        padding: EdgeInsets.only(
                            left: Dimension.width20, right: Dimension.width20),
                        child: CustomButton(
                          height: 45,
                          width: double.maxFinite,
                          text: "Task Submit",
                          fontWeight: FontWeight.bold,
                          textSize: Dimension.mediumFont,
                          textColour: Colors.black,
                          radius: Dimension.radius20 - Dimension.radius15,
                          backgroundColour: Colors.green,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
