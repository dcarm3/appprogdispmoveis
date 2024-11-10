import 'package:appprogdispmoveis/home_screen.dart';
import 'package:appprogdispmoveis/login_screen.dart';
import 'package:appprogdispmoveis/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630),
      appBar: AppBar(
        backgroundColor: Color(0xFF1d2630),
        foregroundColor: Colors.white,
        title: Text("Criar Conta"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Registre-se aqui",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white60)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.white60,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passController,
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white60)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.white60,
                    )),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              ElevatedButton(
                  onPressed: () async {
                    User? user = await _auth.registerWithEmailAndPassword(
                      _emailController.text,
                      _passController.text,
                    );

                    if (user != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  },
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Text(
                "Ou",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  "Fazer login",
                  style: TextStyle(color: Colors.indigo, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
