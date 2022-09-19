
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return  ContactUs(
      email: 'fuadmostafij6@gmail.com',

      phoneNumber: '+88001798172012',
      dividerThickness: 0,
      //website: 'https://abhishekdoshi.godaddysites.com',
      githubUserName: 'fuadmostafij6',
      linkedinURL: 'https://www.linkedin.com/in/md-mostafijur-rahman-3a2737229/',
      tagLine: 'Flutter Developer',
      //instagram: 'fuadmostafij6',
      textColor: Colors.redAccent, taglineColor: Colors.redAccent, cardColor: Colors.white60, companyColor: Colors.redAccent, companyName: '',
    );
  }
}
