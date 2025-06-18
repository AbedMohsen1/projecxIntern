class SliderModel {
  int? id;
  String? name;
  String? subTitle;
  String? buttonText;
  String? link;
  String? color;
  String? hoverColor;
  String? logoPath;

  SliderModel(
      {this.id,
      this.name,
      this.subTitle,
      this.buttonText,
      this.link,
      this.color,
      this.hoverColor,
      this.logoPath});

  SliderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subTitle = json['subTitle'];
    buttonText = json['buttonText'];
    link = json['link'];
    color = json['color'];
    hoverColor = json['hoverColor'];
    logoPath = json['logoPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['subTitle'] = this.subTitle;
    data['buttonText'] = this.buttonText;
    data['link'] = this.link;
    data['color'] = this.color;
    data['hoverColor'] = this.hoverColor;
    data['logoPath'] = this.logoPath;
    return data;
  }
}
