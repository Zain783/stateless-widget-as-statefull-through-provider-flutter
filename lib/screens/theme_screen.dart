import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/themeprovider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerwidgetCatcher =
        Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Theme Checker"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return Align(
                    alignment: Alignment.center,
                    child: Switch(
                        value: providerwidgetCatcher.isSwitched,
                        onChanged: (onpressValue) {
                          if (providerwidgetCatcher.themeMode ==
                              ThemeMode.dark) {
                            value.setTheme(themeMode: ThemeMode.light);
                            value.setSwitchstate(onpressValue);
                          } else {
                            value.setTheme(themeMode: ThemeMode.dark);
                            value.setSwitchstate(onpressValue);
                          }
                        }));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return Text(
                  value.counter.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                );
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              providerwidgetCatcher.setcounter();
            },
            child: const Icon(Icons.add)));
  }
}
