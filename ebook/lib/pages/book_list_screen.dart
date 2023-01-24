import 'dart:math';
import 'dart:ui';

import 'package:ebook/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:ebook/modules/model.dart';
import 'package:ebook/pages/book_details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class bookListScreen extends StatefulWidget {
  const bookListScreen({super.key});

  @override
  State<bookListScreen> createState() => _bookListScreenState();
}

class _bookListScreenState extends State<bookListScreen> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: Color.fromARGB(255, 147, 83, 162),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/assets/2.jpg"),
                        fit: BoxFit.cover)),
                child: DrawerHeader(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          // backgroundImage: NetworkImage(

                          // ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //           image: AssetImage("assets/assets/2.jpg"),
                        //           fit: BoxFit.cover)),
                        // ),
                        SizedBox(height: 5),
                        Text(
                          'Sabin Bhandari',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'sabinbhandari86@gmail.com',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // navigate to home page
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // navigate to settings page
                },
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginpage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/assets/2.jpg'),
              fit: BoxFit.cover,
            )),
            child: Column(children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 1,
                title: Center(
                  child: Text('Book List',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.artifika().fontFamily,
                      )),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: bookList.length,
                  itemBuilder: (context, index) {
                    book books = bookList[index];
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/as.png"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // handle user tap on book
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Image.network(
                                books.imageUrl,
                                fit: BoxFit.fill,
                                height: 122,
                                width: 160,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  books.title,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  books.author.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 195, 190, 190),
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  books.year.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 189, 187, 187),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: books.isdelete
                                      ? Color.fromARGB(255, 255, 0, 0)
                                      : Color.fromARGB(255, 255, 255, 255),
                                  onPressed: () {
                                    setState(() {
                                      books.isdelete = !books.isdelete;
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: Icon(books.isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border),
                                  onPressed: () {
                                    setState(() {
                                      books.isFavorite = !books.isFavorite;
                                    });
                                  },
                                  color: books.isFavorite
                                      ? Colors.red
                                      : Color.fromARGB(255, 255, 255, 255),
                                ),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward_outlined),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            booksDetailsScreen(books),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ])));
  }
}

  // InkWell(
  //                                 onTap: () {
  //                                   Navigator.push(
  //                                     context,
  //                                     MaterialPageRoute(
  //                                       builder: (context) =>
  //                                           booksDetailsScreen(books),
  //                                     ),
  //                                   );
  //                                 },
  //                                 child: Icon(Icons.arrow_forward),
  //                                 hoverColor: Color.fromARGB(255, 24, 235, 0),
  //                               ),