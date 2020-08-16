class DataCaso {
  int _id;
  String title;
  String description;
  double value;
  String ong_id;
  String name;
  String email;
  String whatsapp;
  String city;
  String uf;

  DataCaso();

  DataCaso.fromJson(Map<String, dynamic> json) {
    this._id = json['id'];
    this.title = json['title'];
    this.city = json['city'];
    this.description = json['description'];
    this.email = json['email'];
    this.name = json['name'];
    this.ong_id = json['ong_id'];
    this.uf = json['uf'];
    this.value = json['value'];
    this.whatsapp = json['whatsapp'];
  }
}