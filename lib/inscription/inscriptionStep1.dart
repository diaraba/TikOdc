import 'package:flutter/material.dart';
import 'package:tikodc/homepage.dart';
import 'package:tikodc/pages/home.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 51),
          child: Row(
            children: [
              Center(
                child: Text(
                  'Inscription à Tiktok',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.tiktok_sharp,
                color: Colors.black,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: inscription(),
    );
  }
}

class inscription extends StatefulWidget {
  const inscription({Key? key}) : super(key: key);

  @override
  _inscriptionState createState() => _inscriptionState();
}

class _inscriptionState extends State<inscription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Veillez renseigner votre date de naissance, pour continuer !',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 40,
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text('Continuer'),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
