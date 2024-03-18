import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/controller/controller.dart';

class LangScreen extends StatefulWidget {
  const LangScreen({super.key});

  @override
  State<LangScreen> createState() => _LangScreenState();
}

final MyController7 lang = MyController7();

class _LangScreenState extends State<LangScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Container(
                height: height * 0.09,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 0.5,
                      color: Colors.grey,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: height * 0.05,
                        width: width * 0.5,
                        child: TextFormField(
                          controller: lang.txtLang,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.black26),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1.9, color: Colors.black54),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: "Language",
                            labelStyle: const TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Column(
                        children: [
                          const Text(
                            'Read',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: height * 0.03,
                            width: width * 0.07,
                            child: Checkbox(
                              activeColor: const Color(0xff19256E),
                              value: read,
                              onChanged: (value) {
                                setState(() {
                                  read = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Column(
                        children: [
                          const Text(
                            'Write',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: height * 0.03,
                            width: width * 0.07,
                            child: Checkbox(
                              activeColor: const Color(0xff19256E),
                              value: write,
                              onChanged: (value) {
                                setState(() {
                                  write = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Column(
                        children: [
                          const Text(
                            'Speak',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: height * 0.03,
                            width: width * 0.07,
                            child: Checkbox(
                              activeColor: const Color(0xff19256E),
                              value: speak,
                              onChanged: (value) {
                                setState(() {
                                  speak = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool read = false;
bool write = false;
bool speak = false;
