import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../../../routes/app_pages.dart';

class FormInspection extends StatelessWidget {
  String? dropdownValue = 'cs1';

  FormInspection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ['cs1', 'cs2', 'cs3', 'cs3', 'cs4'];

    return Container(
      margin: EdgeInsets.only(left: Dimension.width20, top: Dimension.height20),
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Safety Brudge Structural",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimension.mediumFont,
                  color: Colors.black),
            ),
            Divider(thickness: Dimension.height5),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: Dimension.height10,
                              left: Dimension.height5,
                              right: Dimension.height5),
                          height: Dimension.height100 + Dimension.height30,
                          width: Dimension.width10 * Dimension.width10,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(Dimension.height5),
                            color: Colors.grey,
                          ),
                          child: Text(
                              "Embankment Slopes  of approache Roads[G/F/P/S/B]"),
                        ),
                        SizedBox(
                          width: Dimension.width10,
                        ),
                        Column(
                          children: [
                            /*ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black12,
                                ),
                                child: Text(
                                  "Front",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),*/
                            Container(
                              height: Dimension.height30,
                              width: Dimension.width30 + Dimension.width20,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                              color: Colors.black12,

                              ),

                              child: Center(child: Text("Right")),
                            ),
                            DropdownButton(
                              onChanged: (String? newValue) {
                                dropdownValue = newValue;
                              },
                              value: dropdownValue,
                              items: list
                                  .map((e) =>
                                  DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                                  .toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Dimension.width5,
                        ),
                        Column(
                          children: [
                            Container(
                              height: Dimension.height30,
                              width: Dimension.width30 + Dimension.width20,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                color: Colors.black12,

                              ),

                              child: Center(child: Text("Left")),
                            ),
                            DropdownButton(
                              onChanged: (String? newValue) {
                                dropdownValue = newValue;
                              },
                              value: dropdownValue,
                              items: list
                                  .map((e) =>
                                  DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                                  .toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Dimension.width5,
                        ),
                        Column(
                          children: [
                            Container(
                              height: Dimension.height30,
                              width: Dimension.width30 + Dimension.width20,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                color: Colors.black12,

                              ),

                              child: Center(child: Text("Top")),
                            ),
                            DropdownButton(
                              onChanged: (String? newValue) {
                                dropdownValue = newValue;
                              },
                              value: dropdownValue,
                              items: list
                                  .map((e) =>
                                  DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                                  .toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Container(
                              height: Dimension.height30,
                              width: Dimension.width30 + Dimension.width20,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                color: Colors.black12,

                              ),

                              child: Center(child: Text("Down")),
                            ),
                            DropdownButton(
                              onChanged: (String? newValue) {
                                dropdownValue = newValue;
                              },
                              value: dropdownValue,
                              items: list
                                  .map((e) =>
                                  DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                                  .toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimension.height5,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                );
              },
            ),
            Container(
              height: Dimension.height30,
              width: Dimension.width30 + Dimension.width20,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.black12,

              ),

              child: Center(child: Text("Next")),
            ),
          ],
        ),
      ),
    );
  }
}
