import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/inscription/inscriptionStep1.dart';
import 'package:tikodc/inscription/login.dart';
import 'package:tikodc/util/profile_tab1.dart';
import 'package:tikodc/util/profile_tab2.dart';
import 'package:tikodc/util/profile_tab3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 51),
            child: Center(
              child: Text(
                '@AshBorn',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
            //username
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '@createByAshborn',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            //followers, likes,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '34',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Suivis',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '94',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'J\'aime',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //bookmark, instagram link, edit profile
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text('Modifier profile',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Colors.grey[800],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            //bio

            Text('bio here', style: TextStyle(color: Colors.grey[700])),
            //controller
            SizedBox(
              height: 5,
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
              indicatorColor: Colors.grey.shade300,
            ),
            // Expanded(
            //     child: TabBarView(
            //   children: [
            //     FirstTab(),
            //     SecondTab(),
            //     ThirdTab(),
            //   ],
            // )),
            SizedBox(
              height: 160,
            ),
            ElevatedButton(
                onPressed: () {
                  _ouvrirPopUp(context);
                },
                child: Text('Connecte toi ou inscris toi'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
          ],
        ),
      ),
    );
  }
}

void _ouvrirPopUp(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                  const Icon(
                    CupertinoIcons.question_circle,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Inscription à TikOdc',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Crée un profil, abonne-toi à d\'autre comptes, crée tes'
                        ' propres vidéos et bien plus encore.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Step1()));
                              },
                              child: Text('Utiliser un numéro de téléphone'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .44,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          'En continuant, tu acceptes les Conditions d’utilisation et reconnais avoir lu '
                          'notre Politique de Confidentialité pour savoir comment nous collectons, utilisons et '
                          'partageons tes données.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "T'as déjà un compte ?",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Connexion',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _ouvrirConnexion(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              color: Colors.grey.shade300,
            ))
          ]),
        );
      });
}

Widget _goToStep1(context) {
  return Step1();
}

Widget _goToStep2(context) {
  return Login();
}
//Connexion

void _ouvrirConnexion(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                  const Icon(
                    CupertinoIcons.question_circle,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Connexion à TikOdc',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Crée un profil, abonne-toi à d\'autre comptes, crée tes'
                        ' propres vidéos et bien plus encore.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login()));
                              },
                              child: Text('Utiliser un numéro de téléphone'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .44,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          'En continuant, tu acceptes les Conditions d’utilisation et reconnais avoir lu '
                          'notre Politique de Confidentialité pour savoir comment nous collectons, utilisons et '
                          'partageons tes données.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "T'as pas de compte ? ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Inscription ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _ouvrirPopUp(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              color: Colors.grey.shade300,
            ))
          ]),
        );
      });
}
