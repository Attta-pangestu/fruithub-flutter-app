
class Product {
  final String image, title;
  final int id;

  const Product({
    required this.id, 
    required this.image, 
    required this.title, 
  });

}

List<Product> products = const [
  Product(
    id: 1,
    title: "Garden Pizza",
    image:
        "https://slicelife.imgix.net/609/photos/original/GardenPizza-Philadelphia-PA-PepperoniPizza-01.jpg?auto=compress&auto=format",
  ),
  Product(
    id: 2,
    title: "Frying pan pizza",
    image:
        "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/frying_pan_pizza_33656_16x9.jpg",
  ),
  Product(
    id: 3,
    title: "Neapolitan pizza",
    image:
        "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/ecaeb2cc-a950-4645-a648-9137305b3287/Derivates/df977b90-193d-49d4-a59d-8dd922bcbf65.jpg",
  ),
  Product(
    id: 4,
    title: "Margherita Pizza",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Margherita_-_Five50_Aria.jpg/1024px-Margherita_-_Five50_Aria.jpg",
  ),
  Product(
    id: 5,
    title: "Cheese Pizza",
    image:
        "https://lh3.googleusercontent.com/G11TE1BHd0RhBLmOHyZNnzuVOHJv8Dqkz_EzEX97C3QNOECB9oPvRXiCSnsYW6hHp9d2bon2jMkbx-7Mbm-hlQTar66mT2KxoEUdePEV=w512-rw",
  ),
  Product(
    id: 6,
    title: "Veg Pizza",
    image:
        "https://lh3.googleusercontent.com/G11TE1BHd0RhBLmOHyZNnzuVOHJv8Dqkz_EzEX97C3QNOECB9oPvRXiCSnsYW6hHp9d2bon2jMkbx-7Mbm-hlQTar66mT2KxoEUdePEV=w512-rw",
  ),
];