import 'package:flutter/material.dart';

class book {
  String title;
  String description;
  String imageUrl;
  int year;
  String author;
  bool isFavorite;
  bool isdelete;

  book({
    required this.title,
    required this.description,
    required this.year,
    required this.imageUrl,
    required this.author,
    this.isFavorite = false,
    this.isdelete = false,
  });
  Image getImage() {
    return Image.asset(imageUrl);
  }
}

List<book> bookList = [
  book(
      title: 'How to Win Friends & Influence People',
      author: "Dale Carnegie",
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      year: 1998,
      isFavorite: true,
      imageUrl: 'assets/assets/how.jpg'),
  book(
      title: 'The Shawshank Redemption',
      author: "sabin",
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      year: 1994,
      isFavorite: true,
      imageUrl: 'assets/assets/book/think.jpg'),
  book(
      title: 'The Shawshank Redemption',
      author: "sabin",
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      year: 1994,
      isFavorite: true,
      imageUrl: 'assets/assets/book/power.jpg'),
  book(
      title: 'The Shawshank Redemption',
      author: "sabin",
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      year: 1994,
      isFavorite: true,
      imageUrl: 'assets/assets/book/rich.jpg'),
];
