class Peta {
  String Mapid;
  String Mapname;
  String Desc;
  String Image;
  Peta({this.Mapid, this.Mapname, this.Desc, this.Image});
  Peta.fromJson(json) {
    Mapid = json['MapId'];
    Mapname = json['MapName'];
    Desc = json['Desc'];
    Image = json['image'];
  }
}
