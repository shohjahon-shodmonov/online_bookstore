import 'package:flutter/material.dart';
import 'package:online_bookstore/core/base_view/base_view.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: BooksPage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Books"),
          ),
        );
      },
    );
  }
}
