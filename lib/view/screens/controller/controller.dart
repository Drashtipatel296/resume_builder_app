import 'dart:io';

import 'package:flutter/material.dart';

// profile
class MyController {
  TextEditingController txtFirst = TextEditingController(text: 'Drashti');
  TextEditingController txtLast = TextEditingController(text: 'Patel');
  TextEditingController txtPhoneNo = TextEditingController(text: '6523145231');
  TextEditingController txtWeb = TextEditingController(text: 'www.hello.com');
  TextEditingController txtJob = TextEditingController(text: 'Job');
  TextEditingController txtGender = TextEditingController(text: 'Female');
  TextEditingController txtEmail = TextEditingController(text: 'drashti@gmail.com');
  TextEditingController txtBirth = TextEditingController(text: '29-06-2005');
  TextEditingController txtAddress = TextEditingController(text: 'Gokuldham Township');
  TextEditingController txtMarital = TextEditingController(text: 'Single');
  TextEditingController txtReligion = TextEditingController(text: 'Indian');
}

// award
class MyController2 {
  TextEditingController txtAward = TextEditingController(text: 'Leadership Award');
  TextEditingController txtIssuer = TextEditingController(text: 'Rakesh Pathak');
  TextEditingController txtYear = TextEditingController(text: '2019');
  TextEditingController txtMonth = TextEditingController();
  TextEditingController txtDes = TextEditingController(text: 'Award names for leadership. Leadership awards honor the role models creating positive change for their organizations and industries.');
}

// declaration
class MyController3 {
  TextEditingController txtdecl = TextEditingController();
}

// about
class MyController4 {
  TextEditingController txtdabout = TextEditingController(text: 'I am a flexible person seeking employment which will allow development, growth and make use of my existing skills');
}

// education
class MyController5 {
  TextEditingController txtSchool = TextEditingController(text: 'Swarnim Startup and Innovation University');
  TextEditingController txtStudy = TextEditingController(text: 'BCA');
  TextEditingController txtDegree = TextEditingController(text: 'BCA');
  TextEditingController txtFrom = TextEditingController(text: '2021');
  TextEditingController txtYear = TextEditingController(text: '2023');
  TextEditingController txtDes = TextEditingController(text: '');
  TextEditingController txtMark = TextEditingController(text: '90%');
}

// Language
class MyController7 {
  TextEditingController txtLang = TextEditingController();
}

// Ref
class MyController8 {
  TextEditingController txtName = TextEditingController(text: 'Drashti Patel');
  TextEditingController txtDesi = TextEditingController(text: 'Surat');
  TextEditingController txtCompany = TextEditingController(text: 'IT');
  TextEditingController txtEmailid = TextEditingController(text: 'drashtipatel@gmailcom');
  TextEditingController txtMobile = TextEditingController(text: '226542331');
}

// skills
class MyController9 {
  TextEditingController txtSkill = TextEditingController(text: 'Programming');
}

// exe
class MyController10 {
  TextEditingController txtName = TextEditingController(text: 'Drashti Patel');
  TextEditingController txtJob = TextEditingController(text: 'CEO');
  TextEditingController txtPlace = TextEditingController(text: 'Surat');
  TextEditingController txtFromYear = TextEditingController(text: '2018');
  TextEditingController txtToYear = TextEditingController(text: '2022');
  TextEditingController txtAddress = TextEditingController(text: 'A-1,Uma plaza,dindoli,surat');
  TextEditingController txtDes = TextEditingController(text: 'Ahmedabad');
}

class ResumeData
{
  File? profileImage;
  String? firstName,lastName,address,objective,gender,email,profession,aboutMe,phone,web,universityName,degree,startYear,endYear,job,sYear,eTear,description,rName,rCompanyName,rPhone,rEmail;
  List<String>? skillList;
}