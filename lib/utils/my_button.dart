import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: MaterialButton(
          color: Colors.blueGrey,
          onPressed: onPressed,
          child: Text(
            "Add",
            style: TextStyle(
              fontSize: 25,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
