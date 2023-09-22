import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/item.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item('images/Page-1.svg', '1. Le rêve libère l\'expression'),
      Item('images/Page-2.svg', '2. Le sens éclaire le parcours '),
      Item('images/Page-3.svg', '3. La différence rend unique'),
      Item('images/Page-4.svg', '4. La valeur humaine met en mouvement'),
      Item('images/Page-5.svg', '5. La clé exprime le style'),
      Item('images/Page-6.svg', '6. Le parcours associe rêve et réalité'),
      Item('images/Page-7.svg', '7. Le ciel bleu révèle l\'alignement'),
    ];

    final isDesktop = MediaQuery.of(context).size.width >= 768;

    final textPadding = EdgeInsets.symmetric(horizontal: 16.0);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isDesktop
                ? Container(
                    margin: const EdgeInsets.only(top: 20, left: 490),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.menu_outlined),
                      onPressed: () {},
                    ),
                  )
                : Container(),
            isDesktop
                ? const SizedBox(
                    height: 40,
                  )
                : const SizedBox(
                    height: 0,
                  ),
            isDesktop ? const SizedBox(height: 20) : const SizedBox(height: 5),
            Container(
              padding: textPadding,
              child: isDesktop
                  ? const Text(
                      "Votre Shynlei C'est..",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const Text(
                      "Votre Shynlei",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
            isDesktop ? const SizedBox(height: 20) : const SizedBox(height: 10),
            Container(
              padding: textPadding,
              child: const Text(
                "7 étapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer le sens, 3 interprétations pour vous aider..",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: isDesktop ? 2 : 1,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: SvgPicture.asset(
                        items[index].image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: Text(items[index].description),
                  );
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 109, 162, 172),
                  ),
                ),
                onPressed: () {},
                child: const Text("EXPRIMER MES REVES"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
