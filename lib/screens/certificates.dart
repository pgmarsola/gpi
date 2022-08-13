import 'package:flutter/material.dart';
import 'package:gpi/widget/topbar.dart';
import 'package:gpi/model/cursos.model.dart';

class Certificates extends StatefulWidget {
  final List<Cursos>? list;
  const Certificates(this.list, {Key? key}) : super(key: key);

  @override
  State<Certificates> createState() => _CertificatesState();
}

class _CertificatesState extends State<Certificates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Container(),
      backgroundColor: Colors.amber,
    );
  }
}
