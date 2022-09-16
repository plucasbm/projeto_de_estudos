import 'package:flutter/material.dart';
import 'package:projeto_1/services/prefs_service.dart';
import 'package:projeto_1/views/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.wait([
      PrefService.isAuth(),
      Future.delayed(Duration(seconds: 3)),
    ]).then((value) => value[0] ? Navigator.of(context).pushReplacementNamed('/home') : Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade700,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}