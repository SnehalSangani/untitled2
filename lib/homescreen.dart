import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  homecontroller controller=Get.put(homecontroller());
  @override
  void initState() {
    super.initState();
    controller.callapi();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FutureBuilder(
        future: controller.callapi(),
        builder: (context, snapshot) {
          if(snapshot.hasError)
            {
              return Text("${snapshot.error}");
            }
          else if(snapshot.hasData)
            {
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${controller.list[index].verse}"),
                );

              },itemCount: controller.list.length,);

            }
          return CircularProgressIndicator();
        },
      ),

    ));
  }
}
