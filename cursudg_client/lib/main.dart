import 'package:cursudg_client/login_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'details_page.dart';
import 'my_home_page3.dart';
import 'load2/loading2.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      //home: MyHomePage3(title: 'Inspector de processos'),
      initialRoute: '/',
      routes: {
        '/': (c) => LoginForm(),
        '/list': (c) => MyHomePage3(title: 'Inspector de processos'),
        '/details': (c) => DetailsPage(title: 'Detalls del procés'),
      },
    );
  }
}
