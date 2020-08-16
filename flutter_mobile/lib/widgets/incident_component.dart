import 'package:flutter/material.dart';
import 'package:flutter_mobile/datas/data_caso.dart';
import 'package:flutter_mobile/screens/detail.dart';

class Incident extends StatelessWidget {
  DataCaso _caso;

  Incident(Map<String, dynamic> json) {
    this._caso = DataCaso.fromJson(json);
  }

  @override
  Widget build(BuildContext context) {
    const bold = TextStyle(fontWeight: FontWeight.bold);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('ONG', style: bold),
            Text(_caso.name),
            SizedBox(height: 16),
            Text('CASO', style: bold),
            Text(_caso.title),
            SizedBox(height: 16),
            Text('VALOR', style: bold),
            Text('R\$ ${_caso.value}'),
            FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              textColor: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Detail(_caso))
                );
              },
              child: Row(
                children: <Widget>[
                  Text('Ver mais detalhes'),
                  Spacer(),
                  Icon(
                    Icons.arrow_right,
                    size: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
