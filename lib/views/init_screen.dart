import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sdc/routes/app_routes.dart';
import 'package:sdc/view_model_binding/view_model_binding.dart';

import '../routes/app_pages.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialBinding: ViewModelBinding(),
      initialRoute: AppRoutes.POST_LIST_SCREEN,
      getPages: AppPages.list,
    );
  }
}
