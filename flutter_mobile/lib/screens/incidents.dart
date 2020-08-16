import 'package:flutter/material.dart';
import 'package:flutter_mobile/stores/incidents_store.dart';
import 'package:flutter_mobile/widgets/incident_component.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Incidents extends StatefulWidget {
  @override
  _IncidentsState createState() => _IncidentsState();
}

class _IncidentsState extends State<Incidents> {
  final IncidentsStore storeIncident = IncidentsStore();

  @override
  void initState() {
    super.initState();
    storeIncident.getIncidents();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme themeText = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/logo.png'),
        actions: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                Text(
                  'Total de ',
                  style: themeText.subtitle1,
                ),
                Observer(builder: (context) {
                  return Text(
                    '${storeIncident.incidentsCount} casos',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 115, 128),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  );
                })
              ],
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bem vindo!',
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 16),
                Text(
                  'Escolha um dos casos abaixo e salve o dia.',
                  style: themeText.subtitle1,
                ),
              ],
            ),
          ),
          Expanded(
            child: Observer(builder: (context) {
              if (storeIncident.loadIncidents)
                return Center(child: CircularProgressIndicator());

              return ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                itemCount: storeIncident.incidentsListCount + 1,
                itemBuilder: (context, index) {
                  if (index < storeIncident.incidentsList.length) {
                    return Incident(storeIncident.incidentsList[index]);
                  } else {
                    storeIncident.getIncidents();
                    return Container();
                  }
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
