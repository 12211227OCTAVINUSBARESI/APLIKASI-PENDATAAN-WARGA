import 'package:flutter/material.dart';
import 'Dashboard/dashboard_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 50),
          child: Text(
            'aplikasi\nPendataan Warga',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FormLogin()
      ],
    ));
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 380,
          child: Card(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            color: Colors.brown[200],
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey[50],
                            filled: true))),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey[50],
                            filled: true))),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (bc) {
                        return Dashboardview();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text('Login'),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Colors.red)),
              ],
            ),
          ),
        ),
        Center(
            child: Image.asset(
          'assets/Logo.png',
          width: 140,
        )),
      ],
    );
  }
}
