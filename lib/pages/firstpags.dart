import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text("PungPing App"),
        backgroundColor: Color.fromARGB(255, 40, 148, 107),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your username";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 66, 25, 39)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 66, 25, 39)),
                  )),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _passwordCtrl,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 66, 25, 39)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 66, 25, 39)),
                  )),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
