class Game {
  late String image = "Assets/fifa.jpg";
  late String title = "fifa";
  late int price = 200;

  Game();
  Game.image(image);
  Game.full(image, title, price);
}
