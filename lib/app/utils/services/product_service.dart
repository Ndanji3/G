part of rest_api;

class ProductService {
  static final ProductService _productService = ProductService._internal();

  factory ProductService() {
    return _productService;
  }

  ProductService._internal();

  List<Product> getPopularGame() {
    return [
      _oriAndTheBlindForest,
      _raymanLegends,
    ];
  }

  List<Product> getNewestGame() {
    return [_oriAndTheBlindForest];
  }
}

class Product {
  final int id;
  final ImageProvider iconImage;
  final ImageProvider backgroundImage;
  final List<ImageProvider> screenshotImages;
  final String name;
  final String category;
  final String description;
  final double rating;
  final int totalDownload;
  final int totalReview;

  Product({
    required this.id,
    required this.iconImage,
    required this.backgroundImage,
    required this.screenshotImages,
    required this.name,
    required this.category,
    required this.description,
    required this.rating,
    required this.totalDownload,
    required this.totalReview,
  });
}

//sample data
final _oriAndTheBlindForest = Product(
    id: 0,
    iconImage: AssetImage(ImageRaster.oriBlindForestIcon),
    backgroundImage: AssetImage(ImageRaster.oriBlindForest1),
    screenshotImages: [
      AssetImage(ImageRaster.oriBlindForest2),
      AssetImage(ImageRaster.oriBlindForest3),
      AssetImage(ImageRaster.oriBlindForest4),
      AssetImage(ImageRaster.oriBlindForest5),
    ],
    name: "Ghostly Gardens",
    category: "adventure",
    description:
        " When darkness falls and the moon rise, the zombies awake from the grave to attack the human world. Knowing this, the flowers plan to prevent that conspiracy. Let’s join companion and commanded them to stop the attack of zombies in Angry Flowers. .",
    rating: 4.7,
    totalDownload: 300,
    totalReview: 15);

final _raymanLegends = Product(
    id: 1,
    iconImage: AssetImage(ImageRaster.raymandLegendIcon),
    backgroundImage: AssetImage(ImageRaster.raymandLegend1),
    screenshotImages: [
      AssetImage(ImageRaster.raymandLegend2),
      AssetImage(ImageRaster.raymandLegend3),
      AssetImage(ImageRaster.raymandLegend4),
      AssetImage(ImageRaster.raymandLegend5),
    ],
    name: "Plants vs Zombies",
    category: "Action",
    description:
        "Plants vs. Zombies is a 2009 tower defense video game developed and published by PopCap Games. First released for Windows and Mac OS X, the game has since been ported to consoles, handhelds, and mobile devices. \nThe player takes the role of a homeowner amid a zombie apocalypse. As a horde of zombies approaches along several parallel lanes, the player must defend their home by placing plants, which fire projectiles at the zombies or otherwise detrimentally affect them. The player collects a currency called sun to buy plants.\n If a zombie happens to make it to the house on any lane, the player loses the level.",
    rating: 3.7,
    totalDownload: 500,
    totalReview: 300);
