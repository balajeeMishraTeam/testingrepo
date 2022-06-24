import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Map<String, String> authData = {
    "email": "",
    "password": "",
  };

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('AuthScreen'),
        ),
        body: Container(
          // height: deviceSize.height * 0.75,
          child: Card(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "E-mail"),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return "Invalid Email";
                      }
                    },
                    onSaved: (value) {
                      authData["email"] = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 5) {
                        return 'Password is too short!';
                      }
                    },
                    onSaved: (value) {
                      authData['password'] = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: (value) {
                      if (value != passwordController.text) {
                        return 'Password do not match!';
                      }
                    },
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("submit"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
