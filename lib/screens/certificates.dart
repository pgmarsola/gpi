import 'package:flutter/material.dart';
import 'package:gpi/widget/card/cursocard.dart';
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
    Widget _buildCertificates(
      List<Cursos>? cursos,
      BuildContext context,
    ) {
      List<Widget> list = [];
      for (int i = 0; i < cursos!.length; i++) {
        list.add(CursoCard(cursos[i]));
      }
      return Column(children: list);
    }

    return Scaffold(
        appBar: TopBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [_buildCertificates(widget.list!, context)],
          ),
        ));
  }
}
