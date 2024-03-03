class MainButtonParams {
  String text;
  String color;
  String textColor;
  bool isVisible;
  bool isActive;

  MainButtonParams({
    required this.text,
    required this.color,
    required this.textColor,
    this.isVisible = true,
    this.isActive = false,
  });
}
