import 'package:flutter/material.dart';

import 'models/cars.dart';

class DetailsPage extends StatelessWidget {
  final Cars cars;
  const DetailsPage({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
        ],
        title: Text(
          "  ${cars.name}",
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(cars.imageUrl),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 12,
                        ),
                        Text(
                          cars.prise,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 12,
                        ),
                        Text("${cars.name} ${cars.year}"),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Shahar"),
                        Text(cars.city),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [const Text("Kuzov"), Text(cars.bort)],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Uzatish qutisi"),
                        Text(cars.privod)
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [const Text("Rangi "), Text(cars.rang)],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Optsiya va xarakteristikasi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(cars.discription)
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 5, bottom: 10),
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Yozish")),
                    ),
                    SizedBox(
                      width: 47,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Qo'ng'iroq qilish"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
