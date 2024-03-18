import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/controller/controller.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

final MyController4 about = MyController4();

class _AboutScreenState extends State<AboutScreen> {
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
              controller: about.txtdabout,
              textInputAction: TextInputAction.next,
              textAlignVertical: TextAlignVertical.top,
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
                labelText: "About me",
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
