import 'package:flame/components.dart';

class DinoWorld extends SpriteComponent with HasGameRef {

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite("background.png"); // 공룡 불러오기
     size = sprite!.originalSize; // 플레이어를 중앙에 위치
  }
}