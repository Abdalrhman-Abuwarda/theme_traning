import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'themes/themes.dart';
import 'screens/books_listing.dart';

void main() => runApp(BooksApp());

enum AppThemes { light, dark }

//var currentTheme = AppThemes.light;

//StatefulWidget
class BooksApp extends StatefulWidget {
  @override
  _BooksAppState createState() => _BooksAppState();
}

class _BooksAppState extends State<BooksApp> {
  var currentTheme = AppThemes.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //NEW CODE: applying selected theme
      theme: currentTheme == AppThemes.light ? defaultTheme : darkTheme,
      home: Scaffold(

        appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("Books Listing"),
            actions: [
              IconButton(
                icon: Icon(Icons.all_inclusive),
                onPressed: () {
                  setState(() {
                    currentTheme = currentTheme == AppThemes.light
                        ? AppThemes.dark
                        : AppThemes.light;
                  });
                },
              )
            ]),
        body: ListingBook(),
      ),
    );
  }
}
