class HomeServiceProviderModal {
  final String image, title;
  final int reviews;
  final double rating;
  bool favourite;

  HomeServiceProviderModal(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.reviews,
      required this.rating});
}

List<HomeServiceProviderModal> homeserviceprovider_modal = [
  HomeServiceProviderModal(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModal(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModal(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModal(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModal(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
];
