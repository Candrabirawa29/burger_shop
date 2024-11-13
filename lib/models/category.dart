class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "Makanan",
    image: "images/burger.jpg",
  ),
  Category(
    title: "Minuman",
    image: "images/minuman.jpg",
  ),
  Category(
    title: "Snack",
    image: "images/burger.jpg",
  ),
  Category(
    title: "Desert",
    image: "images/burger.jpg",
  ),
  Category(
    title: "Pencuci Mulut",
    image: "images/burger.jpg",
  ),
];