part of 'rate_song_bloc.dart';

@freezed
class RateSongBlocEvent with _$RateSongBlocEvent {
  const factory RateSongBlocEvent.getPlayers({required String objectId}) =
      _getPlayersEvent;
  const factory RateSongBlocEvent.rateSong(
      {required String objectId, required int rating}) = _getRateSongEvent;
}
