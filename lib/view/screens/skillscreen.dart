import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/controller/controller.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

final MyController9 skill = MyController9();
List<TextEditingController>? txtSkillsController = [];

class _SkillsScreenState extends State<SkillsScreen> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 9),
              child: Container(
                height: height / 6.8,
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: TextFormField(
                        controller: skill.txtSkill,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 12),
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
                          labelText: "Skill name",
                          labelStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.01,),
                    Row(
                      children: [
                        const SizedBox(width: 170,),
                        InkWell(
                          onTap: () {
                            setState(() {
                              TextEditingController txtSkill = TextEditingController();
                              txtSkillsController!.add(txtSkill);
                            });
                          },
                          child: Container(
                            height: height * 0.04,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: const Color(0xff19256E),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                Text(
                                  ' Add Skill',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 70,),
                        IconButton(onPressed: () {
                          setState(() {
        
                          });
                        }, icon: const Icon(Icons.delete,size: 30,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ...List.generate(
              txtSkillsController!.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                child: Container(
                  height: height / 6.8,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: TextFormField(
                          controller: txtSkillsController![index],
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 12),
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
                            labelText: "Skill name",
                            labelStyle: const TextStyle(
                              color: Colors.black45,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 170,),
                          InkWell(
                            onTap: () {
                              setState(() {
                                TextEditingController txtSkill = TextEditingController();
                                txtSkillsController!.add(txtSkill);
                              });
                            },
                            child: Container(
                              height: height * 0.04,
                              width: width / 4,
                              decoration: BoxDecoration(
                                color: const Color(0xff19256E),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                  Text(
                                    ' Add Skill',
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 70,),
                          IconButton(onPressed: () {
                            setState(() {
                              txtSkillsController!.removeAt(index);
                            });
                          }, icon: const Icon(Icons.delete,size: 30,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double num = 0;
