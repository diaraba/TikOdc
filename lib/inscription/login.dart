import 'package:flutter/material.dart';
import 'package:tikodc/inscription/mail.dart';
import 'package:tikodc/inscription/phone.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Connexion',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TabBar(
              tabs: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15),
                  child: Text(
                    'Téléphone',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15),
                  child: Text(
                    'E-mail',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Phone(),
                  Mail(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
