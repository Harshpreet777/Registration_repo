import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = {'India', 'Japan', 'Germany'};
  String dropdownValue = 'India';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          titleSpacing: 70,
          title: const Text(
            'OpenMRS',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.refresh_outlined,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.more_vert_sharp,
                      color: Colors.black,
                    ))
              ],
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              ListTile(
                title: Text('Title 1'),
              ),
              ListTile(
                title: Text('Title 2'),
              )
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      maxRadius: 60,
                      minRadius: 50,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXGWH_3bvDyWPqHg6U5Br-el_w_LtKlO3T5g&usqp=CAU',
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.camera_alt),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Demographics',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'First Name',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Middle Name',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          'Family Name',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 130,
                          ),
                          Text(
                            'Gender',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),

                          Column(
                            children: [
                              Row(
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white),
                                          shape: MaterialStatePropertyAll(
                                              CircleBorder())),
                                      onPressed: null,
                                      child: CircleAvatar(
                                        maxRadius: 38,
                                        minRadius: 30,
                                        backgroundImage: NetworkImage(
                                            'https://cdn.iconscout.com/icon/free/png-512/free-avatar-372-456324.png?f=webp&w=512'),
                                      )),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white),
                                          shape: MaterialStatePropertyAll(
                                              CircleBorder())),
                                      onPressed: null,
                                      child: CircleAvatar(
                                        maxRadius: 38,
                                        minRadius: 30,
                                        backgroundImage: NetworkImage(
                                            'https://cdn.iconscout.com/icon/free/png-512/free-avatar-369-456321.png?f=webp&w=512'),
                                      )),
                                ],
                              ),
                            ],
                          ),

                          // const SizedBox(
                          //   width: 32,
                          // ),
                          // Container(
                          //   color: Colors.white,
                          //   child: const Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          //     children: [
                          //       ElevatedButton(
                          //           style: ButtonStyle(
                          //               backgroundColor:
                          //                   MaterialStatePropertyAll(
                          //                       Colors.white),
                          //               shape: MaterialStatePropertyAll(
                          //                   CircleBorder())),
                          //           onPressed: null,
                          //           child: CircleAvatar(
                          //             maxRadius: 38,
                          //             minRadius: 30,
                          //             backgroundImage: NetworkImage(
                          //                 'https://cdn.iconscout.com/icon/free/png-512/free-avatar-372-456324.png?f=webp&w=512'),
                          //           )),
                          //       ElevatedButton(
                          //           style: ButtonStyle(
                          //               backgroundColor:
                          //                   MaterialStatePropertyAll(
                          //                       Colors.white),
                          //               shape: MaterialStatePropertyAll(
                          //                   CircleBorder())),

                          //           onPressed: null,

                          //           child: CircleAvatar(
                          //             maxRadius: 38,
                          //             minRadius: 30,
                          //             backgroundImage: NetworkImage(
                          //                 'https://cdn.iconscout.com/icon/free/png-512/free-avatar-369-456321.png?f=webp&w=512'),
                          //           )),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 125,
                              ),
                              Text('Male'),
                              SizedBox(
                                width: 85,
                              ),
                              Text('Female')
                            ],
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.calendar_month_outlined),
                                label: Text(
                                  'DOB dd/mm/yyyy',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'OR',
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Estimated Years',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Estimated Months',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Contact Information',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Address Line 1',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Address Line 2',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CountryFlag.fromCountryCode(
                            'IN',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              padding: const EdgeInsets.all(10),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              underline: Container(
                                height: 2,
                                color: Colors.grey,
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'Postal Code',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                      const TextField(
                          decoration: InputDecoration(
                              hintText: 'State',
                              hintStyle: TextStyle(color: Colors.grey))),
                      const SizedBox(
                        height: 12,
                      ),
                      const TextField(
                          decoration: InputDecoration(
                              hintText: 'City',
                              hintStyle: TextStyle(color: Colors.grey))),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
