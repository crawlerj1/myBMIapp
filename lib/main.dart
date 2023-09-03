// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewProject',
      theme: ThemeData(backgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: const MyProject(),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProject();
}

class _MyProject extends State<MyProject> {
  var result = '';

  var hmController = TextEditingController();
  var wKgController = TextEditingController();
  get hm => hmController.text.toString();
  get wKg => wKgController.text.toString();

  void Calculation() {
    if (hm != '' && wKg != '') {
      var m = double.parse(hm as String);
      var kg = int.parse(wKg as String);

      var bmi = kg / (m * m);

      setState(() {
        result = "Your BMI is : ${bmi.toStringAsFixed(4)}";
      });
    } else {
      setState(() {
        result = "Please Enter all crentials";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BMI"),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Container(
            width: 350,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*TextField(
                    controller: hFt,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "EntertheHeight(ft)",
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.height,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)))),*/
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: hmController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "EntertheHeight(m)",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 17, 17)),
                        prefixIcon: const Icon(
                          Icons.height,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)))),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: wKgController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "EntertheWeight(kg)",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 32, 32, 32)),
                        prefixIcon: const Icon(
                          Icons.boy,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)))),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: Calculation, child: const Text("Calculate")),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 44, 23, 23)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
