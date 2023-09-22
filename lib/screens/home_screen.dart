import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/widgets/desktop_widget.dart';
import 'package:flutter_responsive_app/widgets/mobile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >=768; 
    //<768 pour les appareils mobiles ont une largeur inférieure à 768 px.
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              if (isDesktop)
                SizedBox(
                    width: constraints.maxWidth * 0.5,
                    child: const DesktopWidget()),

              const MobileWidget() // Screen qui apparaît sur le téléphone
            ],
          );
        },
      ),
    );
  }
}
