import 'package:flutter/material.dart';

import 'package:my_app_socket/pages/home.dart';
import 'package:my_app_socket/pages/status.dart';
import 'package:my_app_socket/services/socket_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SocketService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'status': (_) => const StatusPage(),
        },
      ),
    );
  }
}
