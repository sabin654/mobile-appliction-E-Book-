import 'package:ebook/pages/book_list_screen.dart';

import 'package:ebook/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:ebook/pages/loginpage.dart';

// import 'package:ebook/pages/register.dart';

// import 'package:testapp/pages/book_list_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});
  // myapp({Key? key} : super(key:key));

  // final Future<FirebaseApp>initialization=Firebase.initializeApp();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      home: bookListScreen(),
      // primaryTextTheme: GoogleFonts.latoTextTheme()),
    );
  }
}
