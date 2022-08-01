import 'package:flame/game.dart';
import 'dino_player.dart';
import 'dino_world.dart';
import 'dart:ui';

class DinoGame extends FlameGame{

  DinoPlayer _dinoPlayer = DinoPlayer();
  DinoWorld _dinoWorld = DinoWorld();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(_dinoPlayer); // 플레이어를 더한다.
    await add(_dinoWorld);
    _dinoPlayer.position = _dinoWorld.size/1.5; // 세계 사이즈
    camera.followComponent(_dinoPlayer,
        worldBounds: Rect.fromLTRB(0, 0, _dinoWorld.size.x, _dinoWorld.size.y)); // 카메라 따라다니기
  }
}