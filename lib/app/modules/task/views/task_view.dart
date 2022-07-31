import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:lged_inspection/app/common_widget/text.dart';

import '../../../common_widget/custom_appbar.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/dimens.dart';
import '../components/line_chart.dart';
import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          /*leading: Container(
              width: 100, child: Image.asset("assets/image/lgedLogo.png")
          ),*/
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                child: Image.asset("assets/image/lgedLogo.png"),
              ),
              Icon(Icons.alarm_add_outlined),
            /*  Row(
                children: [
                  RichText(
                      text: TextSpan(
                        children: [
                        ],
                          text: "Mumshad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Dimension.smallFont + 3))
                  ),
                  Icon(Icons.person_pin),
                ],
              )*/
              Row(
                children: [
                  Column(
                    children: [
                      BigText(text: "Mumshad",size: Dimension.smallFont+3,),
                      BigText(text: "Rifat",size: Dimension.smallFont+3,),
                    ],
                  ),
                  Icon(Icons.person_pin),
                ],
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
              top: Dimension.height10,
              left: Dimension.width20,
              right: Dimension.width20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BigText(
                    text: 'My Task',
                    size: 20,
                  ),
                  SizedBox(
                    width: Dimension.width20,
                  ),
                  Container(
                    height: Dimension.height30,
                    width: Dimension.width30,
                    //padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Center(
                        child: Text(
                      "+",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.TASK_DETAILS);
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      height: Dimension.height20 * 4,
                      width: Dimension.width20 * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            Dimension.radius20 - Dimension.radius15),
                        color: Colors.purple,
                      ),
                      child: Center(
                          child: BigText(
                        text: "Documents Collect",
                        color: Colors.white,
                        size: Dimension.mediumFont - 2,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: Dimension.height10,
                          bottom: Dimension.height10,
                          left: Dimension.width5,
                          right: Dimension.width5),
                      height: Dimension.height20 * 4,
                      width: Get.width - Dimension.width30 * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                                Dimension.radius20 - Dimension.radius15),
                            bottomRight: Radius.circular(
                                Dimension.radius20 - Dimension.radius15)),
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          BigText(
                            text: "Lipsum is  dummy",
                            color: Colors.black,
                            size: Dimension.mediumFont - 2,
                          ),
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          BigText(
                            text: "we are doing the best to make the perfect ",
                            color: Colors.black,
                            size: Dimension.smallFont,
                          ),
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          BigText(
                            text: "yes ,apppreciate our dedication please",
                            color: Colors.black,
                            size: Dimension.smallFont,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    height: Dimension.height20 * 4,
                    width: Dimension.width20 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          Dimension.radius20 - Dimension.radius15),
                      color: Colors.purple,
                    ),
                    child: Center(
                        child: BigText(
                      text: "Documents Collect",
                      color: Colors.white,
                      size: Dimension.mediumFont - 2,
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimension.height10,
                        bottom: Dimension.height10,
                        left: Dimension.width5,
                        right: Dimension.width5),
                    height: Dimension.height20 * 4,
                    width: Get.width - Dimension.width30 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              Dimension.radius20 - Dimension.radius15),
                          bottomRight: Radius.circular(
                              Dimension.radius20 - Dimension.radius15)),
                      color: Colors.black12,
                    ),
                    child: Column(
                      children: [
                        BigText(
                          text: "Lipsum is  dummy",
                          color: Colors.black,
                          size: Dimension.mediumFont - 2,
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        BigText(
                          text: "we are doing the best to make the perfect ",
                          color: Colors.black,
                          size: Dimension.smallFont,
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        BigText(
                          text: "yes ,apppreciate our dedication please",
                          color: Colors.black,
                          size: Dimension.smallFont,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    height: Dimension.height20 * 4,
                    width: Dimension.width20 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          Dimension.radius20 - Dimension.radius15),
                      color: Colors.purple,
                    ),
                    child: Center(
                        child: BigText(
                      text: "Documents Collect",
                      color: Colors.white,
                      size: Dimension.mediumFont - 2,
                    )),
                  ),
                  Container(
                    height: Dimension.height20 * 4,
                    width: Get.width - Dimension.width30 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              Dimension.radius20 - Dimension.radius15),
                          bottomRight: Radius.circular(
                              Dimension.radius20 - Dimension.radius15)),
                      color: Colors.black12,
                    ),
                    child: Column(
                      children: [
                        BigText(
                          text: "Lipsum is  dummy",
                          color: Colors.black,
                          size: Dimension.mediumFont - 2,
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        BigText(
                          text: "we are doing the best to make the perfect ",
                          color: Colors.black,
                          size: Dimension.smallFont,
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        BigText(
                          text: "yes ,apppreciate our dedication please",
                          color: Colors.black,
                          size: Dimension.smallFont,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              BigText(text: "My Perfomance", size: Dimension.mediumFont),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 40),
                    height: 400,
                    width: 400,
                    child: LineChartWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
