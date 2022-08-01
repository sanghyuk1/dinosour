import 'package:flame/components.dart';

class DinoPlayer extends SpriteComponent with HasGameRef {

DinoPlayer()
     : super(
         size: Vector2.all(100.0),
       );

  @override
  Future<void> onLoad() async {
  super.onLoad();
  sprite = await gameRef.loadSprite("idle.png"); // 공룡 불러오기
  position = gameRef.size / 2; // 플레이어를 중앙에 위치
size = sprite!.originalSize; // 배경을 입력할 때 사용
  }
}