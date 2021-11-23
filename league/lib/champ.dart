class Champs {
  String id;
  String name;
  String title;
  String image_url;
  String icon;
  String lore;
  Champs(
      {this.id, this.name, this.title, this.image_url, this.icon, this.lore});
  Champs.fromJson(json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    image_url = json['image_url'];
    icon = json['icon'];
    lore = json['lore'];
  }
}
