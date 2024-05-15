import 'package:cours_flutter_dark_mode/screens/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  /// InheritedWidget style accessor to our State object.
  // ignore: library_private_types_in_public_api
  // static _MyAppState of(BuildContext context) =>
  //     context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  // ThemeMode _themeMode = ThemeMode.system;

  // void changeTheme(ThemeMode themeMode) {
  //   setState(() {
  //     _themeMode = themeMode;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // ThemeMode
      // themeMode: _themeMode,

      // Build custom theme
      // theme: _buildCustomTheme(),

      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.orange.shade100,

        // Pas nécessaire avec les dernières versions de flutter
        // useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 200, 100, 150),
          // seedColor: Color.fromARGB(255, 147, 184, 1), // Charte primary
          // seedColor: Color.fromARGB(255, 10, 128, 155), // Charte secondary
          // seedColor: Colors.yellowAccent,
          // inversePrimary: Colors.blue,
          // secondary: Colors.indigo,
        ),

        textTheme: const TextTheme(
            // bodyMedium: TextStyle(
            //   color: Colors.amber,
            //   fontSize: 20,
            // ),
            ),
      ),

      // Pour gérer la transition entre les deux modes clair/sombre, ajouter darktheme

      // darkTheme: ThemeData(
      //   // brightness: Brightness.dark, // Legacy
      //   colorScheme: ColorScheme.dark(),
      //   // colorScheme: ColorScheme.fromSeed(
      //   //   // seedColor: const Color(0xffbb86fc),
      //   //   seedColor: Colors.orange,
      //   //   brightness: Brightness.dark,
      //   // ).copyWith(
      //   //     // primaryContainer: const Color(0xffbb86fc),
      //   //     // onPrimaryContainer: Colors.black,
      //   //     // secondaryContainer: const Color(0xff03dac6),
      //   //     // onSecondaryContainer: Colors.black,
      //   //     // error: const Color(0xffcf6679),
      //   //     // onError: Colors.black,
      //   //     ),
      // ),

      // Une autre façon de faire avec un constructeur .dark()
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),

      home: const MyHomePage(title: 'Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _buildCustomTheme() {
    final base = ThemeData.light();
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 147, 184, 1),
    );

    return base.copyWith(
      colorScheme: colorScheme,
      // iconButtonTheme: IconButtonThemeData(),
      // floatingActionButtonTheme: base.floatingActionButtonTheme
      //     .copyWith(backgroundColor: Colors.amber.shade100),
      // elevatedButtonTheme: ElevatedButtonThemeData(),
    );
  }
}
