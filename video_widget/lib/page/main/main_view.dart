import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_logic.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MainLogic>();
    final state = Get.find<MainLogic>().state;

    return Container();
  }
}
