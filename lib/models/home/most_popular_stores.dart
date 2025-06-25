// ignore_for_file: unnecessary_this

class MostPopularStoresModel {
  int? id;
  String? name;
  String? urlDisplay;
  String? logoPath;

  MostPopularStoresModel({this.id, this.name, this.urlDisplay, this.logoPath});

  MostPopularStoresModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    urlDisplay = json['urlDisplay'];
    logoPath = json['logoPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['urlDisplay'] = this.urlDisplay;
    data['logoPath'] = this.logoPath;
    return data;
  }
}
