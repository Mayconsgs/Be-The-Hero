// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidents_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IncidentsStore on _IncidentsStore, Store {
  Computed<bool> _$loadIncidentsComputed;

  @override
  bool get loadIncidents =>
      (_$loadIncidentsComputed ??= Computed<bool>(() => super.loadIncidents,
              name: '_IncidentsStore.loadIncidents'))
          .value;
  Computed<int> _$incidentsListCountComputed;

  @override
  int get incidentsListCount => (_$incidentsListCountComputed ??= Computed<int>(
          () => super.incidentsListCount,
          name: '_IncidentsStore.incidentsListCount'))
      .value;

  final _$incidentsListAtom = Atom(name: '_IncidentsStore.incidentsList');

  @override
  List<DataCaso> get incidentsList {
    _$incidentsListAtom.reportRead();
    return super.incidentsList;
  }

  @override
  set incidentsList(List<DataCaso> value) {
    _$incidentsListAtom.reportWrite(value, super.incidentsList, () {
      super.incidentsList = value;
    });
  }

  final _$incidentsCountAtom = Atom(name: '_IncidentsStore.incidentsCount');

  @override
  String get incidentsCount {
    _$incidentsCountAtom.reportRead();
    return super.incidentsCount;
  }

  @override
  set incidentsCount(String value) {
    _$incidentsCountAtom.reportWrite(value, super.incidentsCount, () {
      super.incidentsCount = value;
    });
  }

  final _$getIncidentsAsyncAction = AsyncAction('_IncidentsStore.getIncidents');

  @override
  Future getIncidents() {
    return _$getIncidentsAsyncAction.run(() => super.getIncidents());
  }

  @override
  String toString() {
    return '''
incidentsList: ${incidentsList},
incidentsCount: ${incidentsCount},
loadIncidents: ${loadIncidents},
incidentsListCount: ${incidentsListCount}
    ''';
  }
}
