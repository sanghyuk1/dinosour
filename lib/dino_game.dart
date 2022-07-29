import 'package:flame/game.dart';
import 'dino_player.dart';
import 'dino_world.dart';

class DinoGame extends FlameGame{

  DinoPlayer _dinoPlayer = DinoPlayer();
  DinoWorld _dionWorld = DinoWorld();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(_dinoPlayer);
    await add(_dinoWorld);
    _dinoPlayer.position = _dinoWorld.size/1.5;
    camera.followComponent(_dinoPlayer,
        worldBounds: Rect.fromLTRB(0, 0, _dinoWorld.size.x, _dinoWorld.size.y));
  }
}