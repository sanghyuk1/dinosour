import 'package:flame/components.dart';

class DinoWorld extends SpriteComponent with HasGameRef {

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite("background.png"); // 공룡 불러오기
     size = sprite!.originalSize;
  }
}