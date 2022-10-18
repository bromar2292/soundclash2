// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateSongBlocEvent {
  String get objectId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateSongBlocEventCopyWith<RateSongBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateSongBlocEventCopyWith<$Res> {
  factory $RateSongBlocEventCopyWith(
          RateSongBlocEvent value, $Res Function(RateSongBlocEvent) then) =
      _$RateSongBlocEventCopyWithImpl<$Res>;
  $Res call({String objectId});
}

/// @nodoc
class _$RateSongBlocEventCopyWithImpl<$Res>
    implements $RateSongBlocEventCopyWith<$Res> {
  _$RateSongBlocEventCopyWithImpl(this._value, this._then);

  final RateSongBlocEvent _value;
  // ignore: unused_field
  final $Res Function(RateSongBlocEvent) _then;

  @override
  $Res call({
    Object? objectId = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_getPlayersEventCopyWith<$Res>
    implements $RateSongBlocEventCopyWith<$Res> {
  factory _$$_getPlayersEventCopyWith(
          _$_getPlayersEvent value, $Res Function(_$_getPlayersEvent) then) =
      __$$_getPlayersEventCopyWithImpl<$Res>;
  @override
  $Res call({String objectId});
}

/// @nodoc
class __$$_getPlayersEventCopyWithImpl<$Res>
    extends _$RateSongBlocEventCopyWithImpl<$Res>
    implements _$$_getPlayersEventCopyWith<$Res> {
  __$$_getPlayersEventCopyWithImpl(
      _$_getPlayersEvent _value, $Res Function(_$_getPlayersEvent) _then)
      : super(_value, (v) => _then(v as _$_getPlayersEvent));

  @override
  _$_getPlayersEvent get _value => super._value as _$_getPlayersEvent;

  @override
  $Res call({
    Object? objectId = freezed,
  }) {
    return _then(_$_getPlayersEvent(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getPlayersEvent implements _getPlayersEvent {
  const _$_getPlayersEvent({required this.objectId});

  @override
  final String objectId;

  @override
  String toString() {
    return 'RateSongBlocEvent.getPlayers(objectId: $objectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getPlayersEvent &&
            const DeepCollectionEquality().equals(other.objectId, objectId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objectId));

  @JsonKey(ignore: true)
  @override
  _$$_getPlayersEventCopyWith<_$_getPlayersEvent> get copyWith =>
      __$$_getPlayersEventCopyWithImpl<_$_getPlayersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
  }) {
    return getPlayers(objectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
  }) {
    return getPlayers?.call(objectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    required TResult orElse(),
  }) {
    if (getPlayers != null) {
      return getPlayers(objectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
  }) {
    return getPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
  }) {
    return getPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    required TResult orElse(),
  }) {
    if (getPlayers != null) {
      return getPlayers(this);
    }
    return orElse();
  }
}

abstract class _getPlayersEvent implements RateSongBlocEvent {
  const factory _getPlayersEvent({required final String objectId}) =
      _$_getPlayersEvent;

  @override
  String get objectId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_getPlayersEventCopyWith<_$_getPlayersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getRateSongEventCopyWith<$Res>
    implements $RateSongBlocEventCopyWith<$Res> {
  factory _$$_getRateSongEventCopyWith(
          _$_getRateSongEvent value, $Res Function(_$_getRateSongEvent) then) =
      __$$_getRateSongEventCopyWithImpl<$Res>;
  @override
  $Res call({String objectId, String songId, int rating, String userName});
}

/// @nodoc
class __$$_getRateSongEventCopyWithImpl<$Res>
    extends _$RateSongBlocEventCopyWithImpl<$Res>
    implements _$$_getRateSongEventCopyWith<$Res> {
  __$$_getRateSongEventCopyWithImpl(
      _$_getRateSongEvent _value, $Res Function(_$_getRateSongEvent) _then)
      : super(_value, (v) => _then(v as _$_getRateSongEvent));

  @override
  _$_getRateSongEvent get _value => super._value as _$_getRateSongEvent;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? songId = freezed,
    Object? rating = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_getRateSongEvent(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      songId: songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getRateSongEvent implements _getRateSongEvent {
  const _$_getRateSongEvent(
      {required this.objectId,
      required this.songId,
      required this.rating,
      required this.userName});

  @override
  final String objectId;
  @override
  final String songId;
  @override
  final int rating;
  @override
  final String userName;

  @override
  String toString() {
    return 'RateSongBlocEvent.rateSong(objectId: $objectId, songId: $songId, rating: $rating, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getRateSongEvent &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.songId, songId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(songId),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_getRateSongEventCopyWith<_$_getRateSongEvent> get copyWith =>
      __$$_getRateSongEventCopyWithImpl<_$_getRateSongEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objectId) getPlayers,
    required TResult Function(
            String objectId, String songId, int rating, String userName)
        rateSong,
  }) {
    return rateSong(objectId, songId, rating, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
  }) {
    return rateSong?.call(objectId, songId, rating, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objectId)? getPlayers,
    TResult Function(
            String objectId, String songId, int rating, String userName)?
        rateSong,
    required TResult orElse(),
  }) {
    if (rateSong != null) {
      return rateSong(objectId, songId, rating, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPlayersEvent value) getPlayers,
    required TResult Function(_getRateSongEvent value) rateSong,
  }) {
    return rateSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
  }) {
    return rateSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPlayersEvent value)? getPlayers,
    TResult Function(_getRateSongEvent value)? rateSong,
    required TResult orElse(),
  }) {
    if (rateSong != null) {
      return rateSong(this);
    }
    return orElse();
  }
}

abstract class _getRateSongEvent implements RateSongBlocEvent {
  const factory _getRateSongEvent(
      {required final String objectId,
      required final String songId,
      required final int rating,
      required final String userName}) = _$_getRateSongEvent;

  @override
  String get objectId => throw _privateConstructorUsedError;
  String get songId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_getRateSongEventCopyWith<_$_getRateSongEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateSongBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game) playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateSongBlocStateCopyWith<$Res> {
  factory $RateSongBlocStateCopyWith(
          RateSongBlocState value, $Res Function(RateSongBlocState) then) =
      _$RateSongBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RateSongBlocStateCopyWithImpl<$Res>
    implements $RateSongBlocStateCopyWith<$Res> {
  _$RateSongBlocStateCopyWithImpl(this._value, this._then);

  final RateSongBlocState _value;
  // ignore: unused_field
  final $Res Function(RateSongBlocState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RateSongBlocStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RateSongBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game) playersLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RateSongBlocState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_playersLoadedCopyWith<$Res> {
  factory _$$_playersLoadedCopyWith(
          _$_playersLoaded value, $Res Function(_$_playersLoaded) then) =
      __$$_playersLoadedCopyWithImpl<$Res>;
  $Res call({Game? game});
}

/// @nodoc
class __$$_playersLoadedCopyWithImpl<$Res>
    extends _$RateSongBlocStateCopyWithImpl<$Res>
    implements _$$_playersLoadedCopyWith<$Res> {
  __$$_playersLoadedCopyWithImpl(
      _$_playersLoaded _value, $Res Function(_$_playersLoaded) _then)
      : super(_value, (v) => _then(v as _$_playersLoaded));

  @override
  _$_playersLoaded get _value => super._value as _$_playersLoaded;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_$_playersLoaded(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc

class _$_playersLoaded implements _playersLoaded {
  const _$_playersLoaded({this.game});

  @override
  final Game? game;

  @override
  String toString() {
    return 'RateSongBlocState.playersLoaded(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_playersLoaded &&
            const DeepCollectionEquality().equals(other.game, game));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(game));

  @JsonKey(ignore: true)
  @override
  _$$_playersLoadedCopyWith<_$_playersLoaded> get copyWith =>
      __$$_playersLoadedCopyWithImpl<_$_playersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game? game) playersLoaded,
  }) {
    return playersLoaded(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
  }) {
    return playersLoaded?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game? game)? playersLoaded,
    required TResult orElse(),
  }) {
    if (playersLoaded != null) {
      return playersLoaded(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_playersLoaded value) playersLoaded,
  }) {
    return playersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
  }) {
    return playersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_playersLoaded value)? playersLoaded,
    required TResult orElse(),
  }) {
    if (playersLoaded != null) {
      return playersLoaded(this);
    }
    return orElse();
  }
}

abstract class _playersLoaded implements RateSongBlocState {
  const factory _playersLoaded({final Game? game}) = _$_playersLoaded;

  Game? get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_playersLoadedCopyWith<_$_playersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
