import 'package:calculator/page/result.dart';
import 'package:flutter/material.dart';

import '../utils/my_button.dart';
import '../utils/text_felid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final numOneController = TextEditingController();
  final numTwoController = TextEditingController();

  late int result;

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Calculator",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableTextFeild(
              hint: "Enter Number One",
              controller: numOneController,
            ),
            SizedBox(height: 15),
            ReusableTextFeild(
              hint: "Enter Number Two",
              controller: numTwoController,
            ),
            SizedBox(height: 15),
            MyButton(
              onPressed: () {
                if (numOneController.text == "" ||
                    numTwoController.text == "") {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text("Empty Feilds"),
                          content: Text("So Gali Number"),
                        );
                      });
                } else {
                  result = int.parse(numOneController.text.trim()) +
                      int.parse(numTwoController.text.trim());

                  var route = MaterialPageRoute(
                    builder: (_) => ResultPage(
                      kiKowad: int.parse(numOneController.text),
                      kiLawad: int.parse(numTwoController.text),
                      result: result,
                    ),
                  );
                  Navigator.push(context, route);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
