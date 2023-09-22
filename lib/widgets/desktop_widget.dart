import 'package:flutter/material.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromARGB(255, 109, 162, 172),
          child: const Padding(
            padding: EdgeInsets.all(90.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120),
                  Text(
                    'Pour commencer...',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 22),
                  Text(
                    "Faire votre Shynleï, jouer avec, c'est l'occasion d'écouter vos rêves, de les partager et de prendre confiance dans votre richesse.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Nom et prénom :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Jeal',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Mon intention :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "L'intention, l'objectif de ce Shynie",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Mon rel',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .white, // Couleur de la bordure lorsqu'elle n'est pas en focus
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 55,
          child: Image.asset(
            'images/Image 2.png',
            width: 120,
            height: 120,
          ),
        ),
      ],
    );
  }
}
