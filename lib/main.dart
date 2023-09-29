import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:internship_first_task/screens/anwa3_elsadad_screen.dart';
import 'package:internship_first_task/screens/el_bnok_screen.dart';
import 'package:internship_first_task/screens/el_sanadek_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: ScreenUtilInit(
          designSize: const Size(450, 926),
          builder: (BuildContext , Widget) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.green
                )
            ),
            home: SanadekScreen(),
          )
      ),
    );
  }
}




