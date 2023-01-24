import 'package:ebook/pages/book_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:ebook/modules/model.dart';
import 'package:google_fonts/google_fonts.dart';

class booksDetailsScreen extends StatelessWidget {
  final book books;

  booksDetailsScreen(this.books);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/assets/2.jpg'), fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 1,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_sharp),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => bookListScreen(),
                        ),
                      );
                    },
                  ),
                  title: Center(
                    child: Text(
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.artifika().fontFamily,
                        ),
                        books.title),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(3.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            books.imageUrl,
                            height: 500,
                            width: 700,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              books.year.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17.0, fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              books.author.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17.0, fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              books.description,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 22.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
