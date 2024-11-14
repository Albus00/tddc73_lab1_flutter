import 'package:flutter/material.dart';

import 'settings/settings_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Example 1 - Flutter',
                  style: TextStyle(color: Colors.white)),
              backgroundColor: const Color(0xFF2D8577),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SvgPicture.asset('assets/images/pie.svg',
                        height: 120.0),
                  ),
                ),
                GridView.count(
                  childAspectRatio:
                      1.5, // Adjust this value to reduce vertical space
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.0,
                  padding:
                      const EdgeInsets.only(top: 20, left: 50.0, right: 50.0),
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('BUTTON'),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('BUTTON'),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('BUTTON'),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('BUTTON'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text('Email'),
                      SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
