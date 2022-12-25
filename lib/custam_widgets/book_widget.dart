import 'package:flutter/material.dart';

import '../model/books_details.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BooksDetailsModel data;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        cardColor: Colors.pinkAccent,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: "Pangolin",
            fontSize: 20,
          ),
          bodyText2: TextStyle(
            fontStyle: FontStyle.italic,
          )
        )
      ),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(data.title,
                    style: Theme.of(context).textTheme.headline6,),
                    Text(data.author,
                   // style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Icon(data.icon, size: 80,),
            ],
          ),
        ),
      ),
    );
  }
}
