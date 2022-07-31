import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/home/components/formView.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: const Text('Inspection'),
          centerTitle: true,
          backgroundColor: Colors.black26,
        ),
         body: FormInspection(),
      ),
    );
  }
}
