import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CustomAppBar({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(40.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        Icon(Icons.add),
        Icon(Icons.favorite),
        Icon(Icons.message),
      ],
      automaticallyImplyLeading: true,
    );
  }
}
