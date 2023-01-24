import 'package:ebook/pages/book_list_screen.dart';
import 'package:ebook/pages/favroute.dart';
import 'package:ebook/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/assets/d.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(
            //    padding: EdgeInsets.only(left: 80, top: 90),
            //   //   child: Image.asset('assets/assets/log.png'),
            //   height: 10.0,
            //   width: 40,
            // ),
            Container(
              padding: EdgeInsets.only(left: 130, top: 120),
              child: Text(
                'WELCOME\n',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.artifika().fontFamily,
                ),
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 0, top: 270),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 179, 173, 173),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 174, 170, 170)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                            width: 40,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 179, 173, 173),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 187, 187, 187)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: GoogleFonts.artifika().fontFamily,
                                ),
                              ),
                              MouseRegion(
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: _hovering
                                      ? Color.fromARGB(255, 69, 183, 73)
                                      : Color.fromARGB(255, 48, 48, 48),
                                  child: IconButton(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const bookListScreen(),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.arrow_forward),
                                  ),
                                ),
                                onHover: (event) {
                                  setState(() {
                                    _hovering = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _hovering = false;
                                  });
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const MyRegister(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17,
                                    // fontFamily: GoogleFonts.lato().fontFamily,
                                    fontFamily:
                                        GoogleFonts.artifika().fontFamily,
                                  ),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/backgrounds.jpg'),
//             fit: BoxFit.cover,
//           ),
//           color: Colors.transparent,
//         ),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   // <-- add the text here
//                   'Welcome  to  S-Pustak'.toUpperCase(),

//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                       height: 1.5,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                       fontFamily: GoogleFonts.lato().fontFamily),
//                 ),
//                 SizedBox(height: 50),
//                 TextFormField(
//                   cursorColor: Colors.white,
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     labelStyle: TextStyle(color: Colors.white),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   cursorColor: Colors.white,
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(color: Colors.white),
//                     labelText: 'Password',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

