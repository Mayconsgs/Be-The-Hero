import 'package:flutter/material.dart';

class IncidentProperty extends StatelessWidget {

  final String name;
  final String city;
  final String uf;
  final String title;
  final double value;
  final EdgeInsets padding;

  IncidentProperty({@required this.name,@required this.city, @required this.uf, @required this.title, @required this.value, this.padding});

  @override
  Widget build(BuildContext context) {
    TextStyle property = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 65, 65, 77));
    TextStyle value = Theme.of(context).textTheme.subtitle1;

    return Container(
      padding: padding ?? null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('ONG', style: property),
          SizedBox(height: 8),
          Text('$name de $city/$uf', style: value,),
          SizedBox(height: 24),

          Text('CASO', style: property),
          SizedBox(height: 8),
          Text(title, style: value),
          SizedBox(height: 24),

          Text('VALOR', style: property),
          SizedBox(height: 8),
          Text('R\$ ${this.value}', style: value),
          Row()
        ],
      ),
    );
  }
}
