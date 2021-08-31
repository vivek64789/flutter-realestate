import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestateui/screens/homepage.dart';
import 'package:realestateui/services/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider()),
      ],
      child: MaterialApp(
        title: 'Real Estate',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Color(0xff04212D),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            button: TextStyle(fontFamily: "Poppins"),
            caption: TextStyle(fontFamily: "Poppins"),
            headline1: TextStyle(fontFamily: "Poppins"),
            headline2: TextStyle(fontFamily: "Poppins"),
            headline3: TextStyle(fontFamily: "Poppins"),
            headline4: TextStyle(fontFamily: "Poppins"),
            headline5: TextStyle(fontFamily: "Poppins"),
            headline6: TextStyle(fontFamily: "Poppins", fontSize: 15),
          ),
        ),
        home: Homepage(),
      ),
    );
  }
}
