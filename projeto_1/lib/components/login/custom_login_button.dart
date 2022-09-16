import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class CustomLoginButtom extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtom({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
              valueListenable: loginController.inLoader,
              builder: (_, inLoader, __) => inLoader 
              ? CircularProgressIndicator() 
              : ElevatedButton(
                  child: Text('Login'),
                  onPressed: (){
                    loginController.auth().then((result) {
                      if(result){
                        Navigator.of(context).pushReplacementNamed('/home');
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Falha ao realizar o login'),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    });
                  }
                ),
              
            );
  }
}