// ignore_for_file: public_member_api_docs, sort_constructors_first
class TipModel {
  String title;
  String description;
  TipModel({
    required this.title,
    required this.description,
  });
}

//fake data
List<TipModel> lisOfTips = [
  TipModel(
      title: "Tomatoe",
      description:
          "Levy recommends storing ripe tomatoes upside down (stem-side down) on paper towels in an open container such as Tupperware, a shoe box, or a cardboard flat."),
  TipModel(
      title: "Potato",
      description:
          "As a rule of thumb, the best place to store potatoes is in a cool, dry area of your kitchen, with good ventilation and out of direct sunlight. A kitchen cupboard or closet, even the basement or garage, can all the good choices.")
];
