import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/themeprovider.dart';
import 'package:flutter_application_1/screens/theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: Builder(
        builder: (BuildContext context) {
          final providerBinding = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: providerBinding.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.blue,
               brightness: Brightness.dark,
            ),
            home: ThemeScreen(),
          );
        },
      ),
    );
  }
}
