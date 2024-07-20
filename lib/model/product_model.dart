class Product {
  final String image, title, description;
  final int id;

  const Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Product> products = const [
  Product(
    id: 1,
    title: "Apple",
    image: "assets/images/apple.jpg",
    description: "A sweet, edible fruit produced by an apple tree.",
  ),
  Product(
    id: 2,
    title: "Banana",
    image: "assets/images/banana.jpg",
    description:
        "A long, curved fruit that grows in clusters and has soft pulpy flesh and yellow skin when ripe.",
  ),
  Product(
    id: 3,
    title: "Cherry",
    image: "assets/images/cherry.jpg",
    description:
        "A small, round stone fruit that is typically bright or dark red.",
  ),
  Product(
    id: 4,
    title: "Watermelon",
    image: "assets/images/watermelon.jpg",
    description:
        "The fruit of the date palm, a sweet, dark brown fruit with a single long seed.",
  ),
  Product(
    id: 5,
    title: "Elderberry",
    image: "assets/images/apple.jpg",
    description:
        "A small, dark purple fruit that grows in clusters and is used to make jams, jellies, and syrups.",
  ),
  Product(
    id: 6,
    title: "Strawberry",
    image: "assets/images/strawberry.jpg",
    description:
        "A soft fruit with a thin skin that can be eaten fresh or dried.",
  ),
];
