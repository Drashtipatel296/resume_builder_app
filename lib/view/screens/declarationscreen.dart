import 'package:flutter/material.dart';
import 'controller/controller.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _DeclarationScreenState();
}

final MyController3 declaration = MyController3();

class _DeclarationScreenState extends State<DeclarationScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextFormField(
              controller: declaration.txtdecl,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 1, color: Colors.black26),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.9, color: Colors.black54),
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: "Declaration",
                labelStyle: const TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
