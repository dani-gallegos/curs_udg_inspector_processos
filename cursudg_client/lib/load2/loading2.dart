import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loading extends StatelessWidget {
  final Widget child;

  const Loading({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = context.watch<AppModel>();
    return Column(
      children: [
        if (appModel.loading) LinearProgressIndicator(),
        Expanded(child: child),
      ],
    );
  }
}

class AppModel extends ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;
  set loading(value) {
    try {
      _loading = value;
      //notifyListeners();
      scheduleMicrotask(() => notifyListeners());
    } catch (e) {
      throw e;
    }
  }
}
