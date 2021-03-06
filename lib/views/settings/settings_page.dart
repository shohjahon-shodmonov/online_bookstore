import 'package:flutter/material.dart';
import 'package:online_bookstore/core/base_view/base_view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: SettingsPage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Settings"),
          ),
        );
      },
    );
  }
}
