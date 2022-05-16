import 'package:flutter/material.dart';
import 'package:online_bookstore/core/base_view/base_view.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: SavedPage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Saved"),
          ),
        );
      },
    );
  }
}