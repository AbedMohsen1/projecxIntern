class ExclusiveCouponsModel {
  int? id;
  String? coupon;
  String? name;
  String? storeName;
  String? logoPath;
  String? link;

  ExclusiveCouponsModel(
      {this.id,
      this.coupon,
      this.name,
      this.storeName,
      this.logoPath,
      this.link});

  ExclusiveCouponsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    coupon = json['coupon'];
    name = json['name'];
    storeName = json['storeName'];
    logoPath = json['logoPath'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['coupon'] = this.coupon;
    data['name'] = this.name;
    data['storeName'] = this.storeName;
    data['logoPath'] = this.logoPath;
    data['link'] = this.link;
    return data;
  }
}
