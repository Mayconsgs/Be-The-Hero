class DataCaso {
  int id;
  String title;
  String description;
  double value;
  String ongId;
  String name;
  String email;
  String whatsapp;
  String city;
  String uf;

  DataCaso();

  DataCaso.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.city = json['city'];
    this.description = json['description'];
    this.email = json['email'];
    this.name = json['name'];
    this.ongId = json['ong_id'];
    this.uf = json['uf'];
    this.value = json['value'].toDouble();
    this.whatsapp = json['whatsapp'];
  }
}