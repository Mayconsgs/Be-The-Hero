import 'dart:convert';
import 'package:flutter_mobile/datas/data_caso.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'incidents_store.g.dart';

class IncidentsStore = _IncidentsStore with _$IncidentsStore;

abstract class _IncidentsStore with Store {
  ObservableList<DataCaso> incidentsList = ObservableList<DataCaso>();

  @observable
  String incidentsCount = '0';

  int page = 1;

  @action
  getIncidents() async {
    final Uri listIncidents = Uri.http(
      /**
       * Aqui você deve colocar o endereço do seu servidor local,
       * usando o IP local da sua máquina.
       * localhost:3333 NÃO IRÁ FUNCIONAR.
       * */
      '192.168.12.38:3333',
      'incidents',
      {'page': page.toString()},
    );

    http.Response response = await http.get(listIncidents);

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      json.forEach((element) {
        incidentsList.add(DataCaso.fromJson(element));
      });
      page++;
      incidentsCount = response.headers['x-total-count'];
    } else {
      print('Algo deu errado');
    }
  }

  @computed
  bool get loadIncidents => incidentsList.length == 0;

  @computed
  int get incidentsListCount => incidentsList.length;
}
