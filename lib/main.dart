import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homescreen.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => Homescreen())
      ],
    )
  );
}