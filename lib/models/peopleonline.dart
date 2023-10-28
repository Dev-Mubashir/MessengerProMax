class peopleOnline {
  final String name, image;
  final bool isActive;

  peopleOnline({
    this.name = '',
    this.image = '',
    this.isActive = false,
  });
}

List peopleData = [
  peopleOnline(
    name: "Jenny Wilson",
    image: "assets/images/user.png",
    isActive: false,
  ),
  peopleOnline(
    name: "Esther Howard",
    image: "assets/images/user_2.png",
    isActive: true,
  ),
  peopleOnline(
    name: "Ralph Edwards",
    image: "assets/images/user_3.png",
    isActive: false,
  ),
  peopleOnline(
    name: "Jacob Jones",
    image: "assets/images/user_4.png",
    isActive: true,
  ),
  peopleOnline(
    name: "Albert Flores",
    image: "assets/images/user_5.png",
    isActive: false,
  ),
  peopleOnline(
    name: "Jenny Wilson",
    image: "assets/images/user.png",
    isActive: false,
  ),
  peopleOnline(
    name: "Esther Howard",
    image: "assets/images/user_2.png",
    isActive: true,
  ),
];
