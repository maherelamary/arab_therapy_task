import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  static const routeName = '/something_went_wrong';

  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Something went wrong."),
      ),
    );
  }
}
