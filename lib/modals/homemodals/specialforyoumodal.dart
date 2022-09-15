import 'package:ecommerce_app/constants/images.dart';

class HomeSpecialForYouModal {
  final String image, title, location;
  final int reviews;
  final double rating;
  bool favourite;

  HomeSpecialForYouModal(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating});
}

List<HomeSpecialForYouModal> homespecialforyou_modal = [
  HomeSpecialForYouModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeSpecialForYouModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeSpecialForYouModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeSpecialForYouModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeSpecialForYouModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5)
];
