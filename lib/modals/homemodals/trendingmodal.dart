import 'package:ecommerce_app/constants/images.dart';

class HomeTrendingModal {
  final String image, title, location;
  final int reviews;
  final double rating;
   bool favourite;

  HomeTrendingModal(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating});
}

List<HomeTrendingModal> hometrending_modal = [
  HomeTrendingModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModal(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5)
];
