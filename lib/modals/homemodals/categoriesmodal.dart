class HomeCategoriesModal {
  final String image, title;
  final int items;

  HomeCategoriesModal(
      {required this.image, required this.title, required this.items});
}

List<HomeCategoriesModal> homecategories_modal = [
  HomeCategoriesModal(
      image: "assets/icons/shirt.svg", title: "Clothing", items: 1001),
  HomeCategoriesModal(
      image: "assets/icons/sport.svg", title: "Sports", items: 601),
  HomeCategoriesModal(
      image: "assets/icons/watch.svg", title: "Watches", items: 509),
  HomeCategoriesModal(
      image: "assets/icons/speaker.svg", title: "Electronics", items: 755),
  HomeCategoriesModal(
      image: "assets/icons/shirt.svg", title: "jackets", items: 800),
  HomeCategoriesModal(
      image: "assets/icons/shirt.svg", title: "Clothing", items: 1001),
];
