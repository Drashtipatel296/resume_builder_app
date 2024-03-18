import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as sd;
import 'package:printing/printing.dart';
import 'package:resume_builder_app/view/screens/aboutscreen.dart';
import 'package:resume_builder_app/view/screens/awardacreen.dart';
import 'package:resume_builder_app/view/screens/controller/controller.dart';
import 'package:resume_builder_app/view/screens/declarationscreen.dart';
import 'package:resume_builder_app/view/screens/educationscreen.dart';
import 'package:resume_builder_app/view/screens/experiencescreen.dart';
import 'package:resume_builder_app/view/screens/languagescreen.dart';
import 'package:resume_builder_app/view/screens/profilescreen.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:resume_builder_app/view/screens/referencescreen.dart';
import 'package:resume_builder_app/view/screens/skillscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

ResumeData resumeData = ResumeData();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff1B1A55),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: height * 0.06,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 0.5,
              color: Colors.grey,
            ),
          ],
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.black, width: 0.5)),
        ),
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            setState(() {
              resumeData.firstName = myController.txtFirst.text;
              resumeData.lastName = myController.txtLast.text;
              resumeData.phone = myController.txtPhoneNo.text;
              resumeData.email = myController.txtEmail.text;
              resumeData.web = myController.txtWeb.text;
              resumeData.address = myController.txtAddress.text;
              resumeData.universityName = education.txtSchool.text;
              resumeData.degree = education.txtDegree.text;
              resumeData.aboutMe = about.txtdabout.text;
              resumeData.job = work.txtJob.text;
              resumeData.sYear = work.txtFromYear.text;
              resumeData.eTear = work.txtToYear.text;
              resumeData.description = work.txtDes.text;
              resumeData.rName = refe.txtName.text;
              resumeData.rCompanyName = refe.txtCompany.text;
              resumeData.rEmail = refe.txtEmailid.text;
              resumeData.rPhone = refe.txtMobile.text;
              resumeData.skillList = txtSkillsController!.map((e) => e.text).toList();
            });
            generatePdf();
          },
          child: Container(
            height: height * 0.04,
            width: width / 2.5,
            decoration: BoxDecoration(
              color: const Color(0xff1B1A55),
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.picture_as_pdf_outlined,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  ' Save & Generate',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ContainedTabBarView(
        tabs: const [
          Row(
            children: [
              Icon(Icons.person),
              Text(
                ' Profile',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.local_police),
                Text(
                  ' Award',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.note_alt_rounded),
              Text(
                ' Declaration',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.info),
                Text(
                  ' About me',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.cast_for_education),
              Text(
                ' Education',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.language),
                Text(
                  ' Language',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.menu_book),
              Text(
                ' Reference',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.bar_chart),
                Text(
                  ' Skills',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.work),
              Text(
                ' Work Experience',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
        tabBarProperties: TabBarProperties(
          isScrollable: true,
          height: 70,
          width: 450,
          background: Container(
            decoration: const BoxDecoration(
              color: Color(0xff19256E),
              // borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          position: TabBarPosition.top,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
        ),
        views: const [
          ProfileScreen(),
          AwardScreen(),
          DeclarationScreen(),
          AboutScreen(),
          EducationScreen(),
          LangScreen(),
          ReferenceScreen(),
          SkillsScreen(),
          ExperienceScreen(),
        ],
      ),
    );
  }

  Future<void> generatePdf() async {
    final pdf = sd.Document();
    //  File? imagePath;

    final img = await rootBundle.load('assets/img/phone.jpg');
    final imageBytes = img.buffer.asUint8List();
    sd.Image image1 = sd.Image(sd.MemoryImage(imageBytes));

    final image = await rootBundle.load('assets/img/email.jpg');
    final Bytes = image.buffer.asUint8List();
    sd.Image image2 = sd.Image(sd.MemoryImage(Bytes));

    final imge = await rootBundle.load('assets/img/laptop.jpg');
    final Byte = imge.buffer.asUint8List();
    sd.Image image3 = sd.Image(sd.MemoryImage(Byte));

    final add = await rootBundle.load('assets/img/address.jpg');
    final byte = add.buffer.asUint8List();
    sd.Image image4 = sd.Image(sd.MemoryImage(byte));


    final imageByte = sd.MemoryImage(imagePath!.readAsBytesSync());

    pdf.addPage(
      sd.Page(
        pageFormat: PdfPageFormat.a4,
        build: (sd.Context context) {
          return sd.Column(
            mainAxisAlignment: sd.MainAxisAlignment.start,
            children: [
              sd.Row(
                crossAxisAlignment: sd.CrossAxisAlignment.start,
                children: [
                  sd.Stack(
                    children: [
                      sd.Container(
                        height: 720,
                        width: 200,
                        decoration: const sd.BoxDecoration(
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.Positioned(
                        top: 30,
                        left: 35,
                        child: sd.Container(
                          height: 130,
                          width: 130,
                          decoration: const sd.BoxDecoration(
                            color: PdfColor.fromInt(0xff19256E),
                            shape: sd.BoxShape.circle,
                          ),
                          child: sd.ClipRRect(
                            horizontalRadius: 60,
                            verticalRadius: 60,
                            child: sd.Image(imageByte, fit: sd.BoxFit.cover),
                          ),
                        ),
                      ),
                      sd.Positioned(
                        top: 180,
                        left: 30,
                        child: sd.Container(
                          height: 25,
                          width: 140,
                          color: PdfColors.white,
                          alignment: sd.Alignment.center,
                          child: sd.Text(
                            'CONTACT',
                            style: sd.TextStyle(
                                color: PdfColors.black,
                                fontWeight: sd.FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      sd.Positioned(
                        top: 220,
                        left: 30,
                        child: sd.Row(
                          children: [
                            sd.Container(
                              height: 20,
                              width: 20,
                              child: image1,
                            ),
                            sd.SizedBox(width: 15),
                            sd.Text(
                              resumeData.phone!,
                              style: const sd.TextStyle(color: PdfColors.white),
                            ),
                          ],
                        ),
                      ),
                      sd.Positioned(
                        top: 255,
                        left: 30,
                        child: sd.Row(
                          children: [
                            sd.Container(
                              height: 20,
                              width: 20,
                              child: image2,
                            ),
                            sd.SizedBox(width: 15),
                            sd.Text(
                              resumeData.email!,
                              style: const sd.TextStyle(color: PdfColors.white),
                            ),
                          ],
                        ),
                      ),
                      sd.Positioned(
                        top: 290,
                        left: 30,
                        child: sd.Row(
                          children: [
                            sd.Container(
                              height: 20,
                              width: 20,
                              child: image3,
                            ),
                            sd.SizedBox(width: 15),
                            sd.Text(
                              resumeData.web!,
                              style: const sd.TextStyle(color: PdfColors.white),
                            ),
                          ],
                        ),
                      ),
                      sd.Positioned(
                        top: 320,
                        left: 30,
                        child: sd.Row(
                          children: [
                            sd.Container(
                              height: 20,
                              width: 20,
                              child: image4,
                            ),
                            sd.SizedBox(width: 15),
                            sd.Text(
                              resumeData.address!,
                              style: const sd.TextStyle(color: PdfColors.white),
                            ),
                          ],
                        ),
                      ),
                      sd.Positioned(
                        top: 370,
                        left: 30,
                        child: sd.Container(
                          height: 25,
                          width: 140,
                          color: PdfColors.white,
                          alignment: sd.Alignment.center,
                          child: sd.Text(
                            'EDUCATION',
                            style: sd.TextStyle(
                                color: PdfColors.black,
                                fontWeight: sd.FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      sd.Positioned(
                        top: 405,
                        left: 30,
                        child: sd.Text(
                          resumeData.degree!,
                          style: const sd.TextStyle(
                              color: PdfColors.white, fontSize: 16),
                        ),
                      ),
                      sd.Positioned(
                        top: 445,
                        left: 30,
                        child: sd.Text(
                          resumeData.universityName!,
                          style: const sd.TextStyle(color: PdfColors.white),
                        ),
                      ),
                      sd.Positioned(
                        top: 490,
                        left: 30,
                        child: sd.Container(
                          height: 25,
                          width: 140,
                          color: PdfColors.white,
                          alignment: sd.Alignment.center,
                          child: sd.Text(
                            'SKILLS',
                            style: sd.TextStyle(
                                color: PdfColors.black,
                                fontWeight: sd.FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      sd.Column(
                        children: [
                          ...List.generate(resumeData.skillList!.length, (index) => sd.Text(resumeData.skillList![index],style: sd.TextStyle(fontSize: 20))),
                        ],
                      ),
                      // sd.Positioned(
                      //   top: 530,
                      //   left: 30,
                      //   child: sd.Row(
                      //     children: [
                      //       sd.Text(
                      //         '',
                      //         style: sd.TextStyle(
                      //             color: PdfColors.white,
                      //             fontWeight: sd.FontWeight.bold,
                      //             fontSize: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // sd.Positioned(
                      //   top: 560,
                      //   left: 30,
                      //   child: sd.Row(
                      //     children: [
                      //       sd.Text(
                      //         'Time Management',
                      //         style: sd.TextStyle(
                      //             color: PdfColors.white,
                      //             fontWeight: sd.FontWeight.bold,
                      //             fontSize: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // sd.Positioned(
                      //   top: 590,
                      //   left: 30,
                      //   child: sd.Row(
                      //     children: [
                      //       sd.Text(
                      //         'Graphic Design',
                      //         style: sd.TextStyle(
                      //             color: PdfColors.white,
                      //             fontWeight: sd.FontWeight.bold,
                      //             fontSize: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // sd.Positioned(
                      //   top: 620,
                      //   left: 30,
                      //   child: sd.Row(
                      //     children: [
                      //       sd.Text(
                      //         'Branding',
                      //         style: sd.TextStyle(
                      //             color: PdfColors.white,
                      //             fontWeight: sd.FontWeight.bold,
                      //             fontSize: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // sd.Positioned(
                      //   top: 650,
                      //   left: 30,
                      //   child: sd.Row(
                      //     children: [
                      //       sd.Text(
                      //         'SEO',
                      //         style: sd.TextStyle(
                      //             color: PdfColors.white,
                      //             fontWeight: sd.FontWeight.bold,
                      //             fontSize: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  sd.Column(
                    //crossAxisAlignment: sd.CrossAxisAlignment.start,
                    children: [
                      sd.SizedBox(width: 5),
                      sd.Text(
                        resumeData.firstName!,
                        style: sd.TextStyle(
                          fontSize: 60,
                          color: const PdfColor.fromInt(0xff19256E),
                          fontWeight: sd.FontWeight.bold,
                        ),
                      ),
                      sd.Text(
                        resumeData.lastName!,
                        style: const sd.TextStyle(
                          fontSize: 40,
                          color: PdfColor.fromInt(0xff19256E),
                          letterSpacing: 4.5,
                        ),
                      ),
                      sd.SizedBox(
                        height: 55,
                      ),
                      sd.Container(
                        margin: const sd.EdgeInsets.symmetric(horizontal: 18),
                        height: 30,
                        width: 300,
                        color: const PdfColor.fromInt(0xff19256E),
                        alignment: sd.Alignment.center,
                        child: sd.Text(
                          'ABOUT ME',
                          style: sd.TextStyle(
                              color: PdfColors.white,
                              fontWeight: sd.FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      sd.SizedBox(
                        height: 15,
                      ),
                      sd.Text(
                        resumeData.aboutMe!,
                        style: const sd.TextStyle(
                          fontSize: 15,
                          color: PdfColors.grey,
                        ),
                      ),
                      sd.SizedBox(
                        height: 30,
                      ),
                      sd.Container(
                        margin: const sd.EdgeInsets.symmetric(horizontal: 20),
                        height: 30,
                        width: 300,
                        color: const PdfColor.fromInt(0xff19256E),
                        alignment: sd.Alignment.center,
                        child: sd.Text(
                          'WORK EXPERIENCE',
                          style: sd.TextStyle(
                              color: PdfColors.white,
                              fontWeight: sd.FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      sd.SizedBox(
                        height: 20,
                      ),
                      sd.Row(
                        children: [
                          sd.Text(
                            resumeData.job!,
                            style: sd.TextStyle(
                              fontSize: 15,
                              color: const PdfColor.fromInt(0xff19256E),
                              fontWeight: sd.FontWeight.bold,
                            ),
                          ),
                          sd.Text(
                            resumeData.sYear!,
                            style: const sd.TextStyle(
                              fontSize: 14,
                              color: PdfColor.fromInt(0xff19256E),
                            ),
                          ),
                        ],
                      ),
                      sd.SizedBox(
                        height: 15,
                      ),
                      sd.Text(
                        '    Lorem Ipsum, sometimes referred to as lipsum\n,    is the placeholder text used in design\n    when creating content. It helps designers plan out\n    where the content will sit, without needing to wait for.',
                        style: const sd.TextStyle(
                          fontSize: 15,
                          color: PdfColors.grey,
                        ),
                      ),
                      sd.SizedBox(
                        height: 30,
                      ),
                      sd.Container(
                        margin: const sd.EdgeInsets.symmetric(horizontal: 20),
                        height: 30,
                        width: 300,
                        color: const PdfColor.fromInt(0xff19256E),
                        alignment: sd.Alignment.center,
                        child: sd.Text(
                          'REFERENCE',
                          style: sd.TextStyle(
                              color: PdfColors.white,
                              fontWeight: sd.FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      sd.SizedBox(
                        height: 15,
                      ),
                      sd.Text(
                        resumeData.rName!,
                        style: sd.TextStyle(
                          fontSize: 18,
                          color: const PdfColor.fromInt(0xff19256E),
                          fontWeight: sd.FontWeight.bold,
                        ),
                      ),
                      sd.Text(
                        resumeData.rCompanyName!,
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.Text(
                        resumeData.rPhone!,
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.Text(
                        resumeData.rEmail!,
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.SizedBox(
                        height: 15,
                      ),
                      sd.Text(
                        '',
                        style: sd.TextStyle(
                          fontSize: 18,
                          color: const PdfColor.fromInt(0xff19256E),
                          fontWeight: sd.FontWeight.bold,
                        ),
                      ),
                      sd.Text(
                        '     CEO',
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.Text(
                        '     Phone: +123-456-7890',
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                      sd.Text(
                        '     Email: hello@gmail.com',
                        style: const sd.TextStyle(
                          fontSize: 16,
                          color: PdfColor.fromInt(0xff19256E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());
  }
}
