import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:video_widget/page/main/main_binding.dart';
import 'package:video_widget/page/main/main_view.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => const MainPage(), binding: MainBinding()),
    ],
  ));
}
