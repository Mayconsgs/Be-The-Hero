import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile/datas/data_caso.dart';
import 'package:flutter_mobile/widgets/incident_property.dart';
import 'package:flutter_mobile/widgets/my_raised_button.dart';

class Detail extends StatelessWidget {
  final DataCaso _caso;

  Detail(this._caso);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    String message =
        'Olá ${_caso.name}, estou entrando em contato pois gostaria de ajudar no caso "${_caso.title}" com o valor de R\$ ${_caso.value}.';

    void openWhatsapp() {
      final Uri uri = Uri(
          scheme: 'whatsapp',
          path: '//send',
          queryParameters: {'phone': _caso.whatsapp, 'text': message});
      String urlFormatada = uri.toString().replaceAll('+', '%20');
      print(urlFormatada);
      //launch(urlFormatada);
    }

    void openMail() {
      final Uri uri = Uri(
        scheme: 'mailto',
        path: '${_caso.email}',
        queryParameters: {'subject': 'Ajuda no caso', 'body': message},
      );
      String urlFormatada = uri.toString().replaceAll('+', '%20');
      print(urlFormatada);
      // launch(urlFormatada);
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/logo.png'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: IncidentProperty(
                name: _caso.name,
                title: _caso.title,
                value: _caso.value,
                city: _caso.city,
                uf: _caso.uf,
                padding: EdgeInsets.all(24),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Salve o dia!', style: textTheme.headline2),
                  Text('Seja o herói desse caso.', style: textTheme.headline2),
                  SizedBox(height: 16),
                  Text('Entre em contato', style: textTheme.subtitle1,),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      MyRaisedButton(text: 'Whatsapp', onPressed: openWhatsapp),
                      SizedBox(width: 16),
                      MyRaisedButton(text: 'E-mail', onPressed: openMail),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
