class Venue {
  String type;
  String name;
  String shortName;
  String locationName;
  String emirate;
  List<String> images;

  Venue(
      {required this.type,
      required this.name,
      required this.shortName,
      required this.locationName,
      required this.emirate,
      required this.images});
}
