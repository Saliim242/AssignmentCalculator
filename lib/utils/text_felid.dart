import 'package:calculator/provider/cal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ReusableTextFeild extends StatelessWidget {
  const ReusableTextFeild({
    super.key,
    required this.hint,
    this.controller,
  });
  final String hint;
  final controller;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!,
              offset: Offset(0.0, 4),
              blurRadius: 6,
              spreadRadius: 1,
            )
          ],
        ),
        child: TextFormField(
          validator: (value) {},
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
          textAlign: TextAlign.center,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
