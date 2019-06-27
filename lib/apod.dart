class Apod {
  String title;
  String explanation;
  String url;
  String date;
  String copyright;
  String hdurl;

  Apod(this.title, this.explanation, this.url, this.date, this.copyright,
      this.hdurl);

  Apod.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        explanation = json["explanation"],
        url = json["url"],
        date = json["date"],
        copyright = json["copyright"],
        hdurl = json["hdurl"];

  Map<String, String> toMap() {
    return {
      'title': title,
      'explanation': explanation,
      'url': url,
    };
  }
}
