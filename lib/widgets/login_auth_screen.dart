import 'package:flutter/material.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({super.key});

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Authentication Email/Password",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey("username"),
                      decoration: InputDecoration(hintText: "Enter Username"),
                    )
                  : Container(),
              !isLogin
                  ? TextFormField(
                      key: ValueKey("mobilenumber"),
                      decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                      ),
                    )
                  : Container(),
              TextFormField(
                key: ValueKey("email"),
                decoration: InputDecoration(hintText: "Enter Email"),
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey("passowrd"),
                decoration: InputDecoration(hintText: "Enter Passowrd"),
              ),
              !isLogin
                  ? TextFormField(
                      obscureText: true,
                      key: ValueKey("re-passowrd"),
                      decoration: InputDecoration(
                        hintText: "Re-Enter Passowrd",
                      ),
                    )
                  : Container(),
              SizedBox(height: 10),
              // ignore: avoid_unnecessary_containers
              Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: isLogin ? Text("Login") : Text("Sign Up"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: isLogin
                        ? Text("Don't have an account signup")
                        : Text('Already Signed Up? Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
