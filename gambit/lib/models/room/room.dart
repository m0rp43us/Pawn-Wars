import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/player/player.dart';

part 'room.g.dart';
part 'room.freezed.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required String id,
    @Default([]) final List<Player> players,
    @Default(false) final bool isStarted,
    final String? winnerPublicKey,
    final int? totalStake,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}