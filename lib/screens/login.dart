import 'package:flutter/material.dart';
import 'package:flutter_app/screens/menu.dart';
import 'package:flutter_app/widget/InputField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.store_mall_directory,
                  size: 160,
                  color: Colors.pinkAccent,
                ),
                InputField(
                  icon: Icons.person_outline,
                  hint: "Usuario",
                  obscure: false,
                ),
                InputField(
                  icon: Icons.lock_open,
                  hint: "PassWord",
                  obscure: true,
                ),
                SizedBox(
                  height: 32,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  child: Text("Entrar"),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
