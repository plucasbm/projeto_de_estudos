import 'package:flutter/material.dart';
import 'package:projeto_1/components/login/custom_login_button.dart';
import 'package:projeto_1/controllers/login_controller.dart';
import 'package:projeto_1/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
LoginController _controller = LoginController();

LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.person, size: MediaQuery.of(context).size.height*0.2),
            CustomTextField(label: 'Login', onChanged: _controller.setLogin),
            CustomTextField(label: 'Senha', onChanged: _controller.setPassword, obscureText: true),
            SizedBox(height: 30),
            CustomLoginButtom(loginController: _controller),
          ],
        ),
      ),
    );
  }
}