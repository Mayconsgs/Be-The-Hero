import 'package:flutter/material.dart';
import 'package:flutter_mobile/datas/data_caso.dart';
import 'package:flutter_mobile/screens/detail.dart';
import 'package:flutter_mobile/widgets/incident_property.dart';

class Incident extends StatelessWidget {
  final DataCaso _caso;
  Incident(this._caso);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IncidentProperty(
            name: _caso.name,
            title: _caso.title,
            value: _caso.value,
            city: _caso.city,
            uf: _caso.uf,
          ),
          SizedBox(height: 16),
          FlatButton(
            padding: EdgeInsets.symmetric(
              vertical: 4,
            ),
            textColor: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Detail(_caso)));
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
    );
  }
}
