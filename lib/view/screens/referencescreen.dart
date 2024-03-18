import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/controller/controller.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

final MyController8 refe = MyController8();

class _ReferenceScreenState extends State<ReferenceScreen> {
  List<TextEditingController>? txtRefeController = [];

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
                height: height / 2.7,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: refe.txtName,
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
                                  borderSide: const BorderSide(
                                      width: 1.9, color: Colors.black54),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                labelText: "Name",
                                labelStyle: const TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextFormField(
                              controller: refe.txtDesi,
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
                                  borderSide: const BorderSide(
                                      width: 1.9, color: Colors.black54),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                labelText: "Designation",
                                labelStyle: const TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: refe.txtCompany,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                          labelText: "Company name",
                          labelStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: TextFormField(
                        controller: refe.txtEmailid,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                          labelText: "Email-id",
                          labelStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: refe.txtMobile,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                          labelText: "Mobile Number",
                          labelStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const SizedBox(width: 140,),
                          InkWell(
                            onTap: () {
                              setState(() {
                                TextEditingController ref = TextEditingController();
                                txtRefeController!.add(ref);
                              });
                            },
                            child: Container(
                              height: height * 0.04,
                              width: width / 3,
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
                                    ' Add Reference',
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 56,),
                          IconButton(onPressed: () {
                            setState(() {

                            });
                          }, icon: const Icon(Icons.delete,size: 30,)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...List.generate(txtRefeController!.length, (index) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                  child: Container(
                    height: height / 2.7,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: TextFormField(
                                  controller: txtRefeController![index],
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
                                      borderSide: const BorderSide(
                                          width: 1.9, color: Colors.black54),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    labelText: "Name",
                                    labelStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  controller: txtRefeController![index],
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
                                      borderSide: const BorderSide(
                                          width: 1.9, color: Colors.black54),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    labelText: "Designation",
                                    labelStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            controller: txtRefeController![index],
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                              labelText: "Company name",
                              labelStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            controller: txtRefeController![index],
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                              labelText: "Email-id",
                              labelStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            controller: txtRefeController![index],
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                              labelText: "Mobile Number",
                              labelStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              const SizedBox(width: 140,),
                              InkWell(
                                onTap: () {
                                  setState(() {


                                  });
                                },
                                child: Container(
                                  height: height * 0.04,
                                  width: width / 3,
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
                                        ' Add Reference',
                                        style: TextStyle(color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 56,),
                              IconButton(onPressed: () {
                                setState(() {
                                  txtRefeController!.removeAt(index);
                                });
                              }, icon: const Icon(Icons.delete,size: 30,)),
                            ],
                          ),
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