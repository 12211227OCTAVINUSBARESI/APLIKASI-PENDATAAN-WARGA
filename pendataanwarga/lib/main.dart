import 'package:flutter/material.dart';
import 'package:pendataanwarga/providers/Dashboard_provider.dart';
import 'package:pendataanwarga/login_view.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (bc)=>Dashboardprovider()),
      ChangeNotifierProvider(create: (bc)=>Beritapanelprovider()),

    ],
    builder: (context, Widget) {
      return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange
          )
        ),
        home: LoginView()
      );
    }
  ));
}
