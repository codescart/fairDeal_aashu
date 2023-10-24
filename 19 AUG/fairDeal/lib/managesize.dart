import 'package:fairdeal/Desktop%20view/loginwigit/login_page.dart';
import 'package:fairdeal/loginwigit/login_page.dart';
import 'package:flutter/material.dart';

class responsve_sc extends StatefulWidget {
  const responsve_sc({Key? key}) : super(key: key);

  @override
  State<responsve_sc> createState() => _responsve_scState();
}

class _responsve_scState extends State<responsve_sc> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width>=800?login_page_desktop():login_page();
  }
}
