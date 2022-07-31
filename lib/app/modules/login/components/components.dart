import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

class LoginEditField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData? postIcon;

  LoginEditField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.postIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(Dimension.width20,
              Dimension.height15, Dimension.width20, Dimension.height15),
          hintText: hintText,
          suffixIcon: Icon(postIcon),
          prefixIcon: Container(
              margin: EdgeInsets.only(left: 10, right: 5),
              decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.black12))),
              child: Icon(icon)),
          border: OutlineInputBorder(

              /*borderRadius: BorderRadius.circular(8.0)*/
              )),
    );
  }
}
