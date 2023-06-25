
import 'package:base_code/environment.dart';
import 'package:base_code/routes/route_constants.dart';
import 'package:base_code/routes/routes.dart';
import 'package:base_code/src/ui/ui_resources/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';


Future<void> app(String env) async{
    WidgetsFlutterBinding.ensureInitialized();
    Environment.initialize(env);
    runApp( MyApp()) ;

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  "Flutter App",
      routes: Routes.routes(),
      theme: ThemeData(
        fontFamily: "Roboto",
        appBarTheme:  const AppBarTheme(
          backgroundColor: ColorConstants.primaryColor,
        ),
      ),
      initialRoute: RouteConstants.infiniteScrollRoute,

    );
  }
}






