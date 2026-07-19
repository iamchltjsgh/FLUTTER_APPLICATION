import 'package:flutter/material.dart';

import 'animal_page.dart';
import 'model.dart';

class AnimalListPage extends StatefulWidget {
  const AnimalListPage({super.key});

  @override
  State<AnimalListPage> createState() => _AnimalListPageState();
}

class _AnimalListPageState extends State<AnimalListPage> {
  static List<String> animalName = [
    'Alpaaca',
    'Bear',
    'Panda',
    'Cat',
    'Fox',
    'Rhino',
  ];
  static List<String> animalImgPath = [
    'assets/list_view2/image/1.png',
    'assets/list_view2/image/2.png',
    'assets/list_view2/image/3.png',
    'assets/list_view2/image/4.png',
    'assets/list_view2/image/5.png',
    'assets/list_view2/image/6.png',
  ];
  static List<String> animalLocation = [
    'Alpaca Land',
    'Forest',
    'EverLand',
    'street',
    'Forest',
    'Savana',
  ];

  final List<Animal> animalData = List.generate(
    animalLocation.length,
    (index) =>
        Animal(animalName[index], animalLocation[index], animalImgPath[index]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbar')),
      body: ListView.builder(
        itemCount: animalName.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => AnimalPage(
                  animal: animalData[index],
                  )));
                debugPrint(animalData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
