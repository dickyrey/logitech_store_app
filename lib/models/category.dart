class Category {
  final String? title;
  final String? icon;
  Category({this.icon, this.title});
}

List<Category> categoryList = [
  Category(
    title: "Mice",
    icon: "assets/icons/mouse.svg",
  ),
  Category(
    title: "Keyboard",
    icon: "assets/icons/keyboard.svg",
  ),
  Category(
    title: "Audio",
    icon: "assets/icons/audio.svg",
  ),
  Category(
    title: "Gamepad",
    icon: "assets/icons/gamepad.svg",
  ),
];
