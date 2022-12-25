import 'package:flutter/material.dart';

class BooksDetailsModel{
  BooksDetailsModel({ required this.title, required this.author, this.icon= Icons.book});
  final String title;
  final String author;
  final IconData icon;

  static List<BooksDetailsModel> books_details= [
    BooksDetailsModel(title: "Book Title 1", author: "author 1"),
    BooksDetailsModel(title: "Book Title 2", author: "author 2"),
  ];
}