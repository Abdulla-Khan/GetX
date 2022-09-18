class HomeModel {
  int? id;
  String? title;
  String? image;
  String? rent;

  HomeModel({this.id, this.title, this.image, this.rent});

  HomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    rent = json['rent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['rent'] = this.rent;
    return data;
  }
}
