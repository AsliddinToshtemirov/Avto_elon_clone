import 'package:untitled/models/cars.dart';
import 'package:flutter/material.dart';
import 'package:untitled/details.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  static List<Cars> list = [
    Cars(
        "Bugatti Chiron ",
        "assets/images/bugatti.jpeg",
        "40344 km",
        "1 billion y.e. ",
        "Jizzax",
        "petrol ",
        "2018 yil",
        "12-fevral",
        "3456",
        "Toshkent",
        "Sedan",
        "Oldi",
        "Qora",
        "The Bugatti Chiron is a mid-engine two-seater sports car designed and developed in Germany by Bugatti Engineering GmbH[7] and manufactured in Molsheim, France, by French automobile manufacturer Bugatti Automobiles S.A.S. The successor to the Bugatti Veyron,[8] the Chiron was first shown at the Geneva Motor Show on 1 March 2016.[9][10] The car is based on the Bugatti Vision Gran Turismo concept car.The car is named after the Monégasque driver Louis Chiron.[11] The car shares the name with the 1999 Bugatti 18/3 Chiron concept car.In January 2022 it was announced that every Chiron had been sold. As of January 2022, some of these sold vehicles still need to be physically manufactured and delivered to their owners."),
    Cars(
        "Ferrare Roma 2021",
        "assets/images/roma_2021.jpeg",
        "12000 km",
        "500000 y.e.",
        "Farg'ona",
        "electro car",
        "2018 yil",
        "23-may",
        '3456',
        "Shahrisabz",
        "Hechbek",
        "Oldi",
        "Qizil",
        "Ferrari Roma is a 2 seater Coupe available in a price range of Rs. 3.76 Cr*. It is available in 1 variants, a 3855 cc, BS6 and a single Automatic transmission. Other key specifications of the Roma include a kerb weight of 1570kg and boot space of 272 Liters. The Roma is available in 25 colours."),
    Cars(
        "BMW X6 ",
        "assets/images/bmw_x.jpg",
        "42000 km",
        "20000 y.e.",
        "Qashqadaryo",
        "hybrid",
        "2018 yil",
        "11-dekabr",
        '235',
        "Guliston",
        "Coupe",
        "Universal",
        "Oq",
        "The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW. The BMW X6 is the originator of the sports activity coupé (SAC), referencing its sloping rear roof design. It combines the attributes of an SUV (high ground clearance, all-wheel drive and all-weather ability, large wheels and tires) with the stance of a coupé (styling featuring a sloping roof). It is built in BMW's North American plant in Greer, South Carolina alongside the BMW X5, whose platform it shares. Prior to the release of the X7, the X6 was considered a flagship SUV for BMW.The first generation (E71) was released for sale in April 2008 for the 2008 model year, while the second-generation X6 (F16) was launched at the Paris Motor Show in 2014. The third-generation X6 was revealed in July 2019."),
    Cars(
        "AUDI A4",
        "assets/images/audi.jpeg",
        "Mocriy asphalt",
        "100000 y.e. ",
        "Samarqand",
        "petrol",
        "2018 yil",
        "12-mart",
        "342",
        "Namangan",
        "Super car",
        "Orqa",
        "Qora",
        "Audi A4 is a 5 seater Luxury available in a price range of Rs. 39.99 - 47.90 Lakh*. It is available in 3 variants, 2 engine options that are BS6 compliant and a single Automatic transmission. Other key specifications of the A4 include a kerb weight of 1555kg and boot space of 460 Liters."),
    Cars(
        "CHEVROLET Camaro",
        "assets/images/comaro.jpeg",
        '100000km',
        "50000 y.e.",
        "Toshkent",
        "petrol",
        "2018 yil",
        "12-mart",
        "1234",
        "Qarshi",
        "Crassover",
        "Oldi",
        "Qora",
        "The Chevrolet Camaro is a mid-size[1][2] American automobile manufactured by Chevrolet, classified as a pony car[3][4].[5][6] It first went on sale on September 29, 1966, for the 1967 model year and was designed as a competing model to the Ford Mustang. The Camaro shared its platform and major components with the Firebird, produced by Chevy's sister division Pontiac, also introduced for 1967.Four distinct generations of the Camaro were developed before production ended in 2002. The nameplate was revived on a concept car that evolved into the fifth-generation Camaro; production started on March 16, 2009.[7] Over 5 million Camaros have been sold."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box_outlined,
                      size: 15.0,
                    ),
                    label: const Text(
                      'Sotish',
                      style: TextStyle(color: Colors.white),
                    ), // <-- Text
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          )
        ],
        title: const Text(
          "Avtoelon.uz",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(children: [
        myItem(list[0], context),
        myItem(list[1], context),
        myItem(list[2], context),
        myItem(list[3], context),
        myItem(list[4], context),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 14, 159, 216),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (value) {
          // Respond to item press.
        },
        items: const [
          BottomNavigationBarItem(
            label: "Avtoelon.uz",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Tanlanganlar",
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(label: "Sotish", icon: Icon(Icons.add_box)),
          BottomNavigationBarItem(
              label: "Suxbatlar", icon: Icon(Icons.mail_outline)),
          BottomNavigationBarItem(
              label: "Kabinet", icon: Icon(Icons.person_pin)),
        ],
      ),
    );
  }

  Widget myItem(Cars cars, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage(cars: cars)),
        );
      },
      child: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   ${cars.name} ",
                      style: const TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "  ${cars.prise}",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset(cars.imageUrl),
                          const Icon(
                            Icons.photo_camera,
                          ),
                        ],
                      ),
                      color: Colors.white70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_today),
                            Text(" : ${cars.year}"),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.local_gas_station),
                            Text(" : ${cars.type}")
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.speed),
                            Text(
                              " : ${cars.color}",
                              style: const TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on),
                            Text(
                              " : ${cars.speed}",
                              style: const TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("    ${cars.day}"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.remove_red_eye_outlined),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(cars.counter),
                    const SizedBox(
                      width: 200,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
