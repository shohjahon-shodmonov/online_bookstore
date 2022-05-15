import 'package:flutter/material.dart';
import 'package:online_bookstore/core/base_view/base_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: HomePage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
        );
      },
    );
  }
}
