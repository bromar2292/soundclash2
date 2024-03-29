// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Game> gameList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Game> gameList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGameStateCopyWith<$Res> {
  factory $JoinGameStateCopyWith(
          JoinGameState value, $Res Function(JoinGameState) then) =
      _$JoinGameStateCopyWithImpl<$Res, JoinGameState>;
}

/// @nodoc
class _$JoinGameStateCopyWithImpl<$Res, $Val extends JoinGameState>
    implements $JoinGameStateCopyWith<$Res> {
  _$JoinGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$JoinGameStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'JoinGameState.initial()';
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
    required TResult Function(List<Game> gameList) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Game> gameList)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
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
    required TResult Function(_loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JoinGameState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadedCopyWith<$Res> {
  factory _$$_loadedCopyWith(_$_loaded value, $Res Function(_$_loaded) then) =
      __$$_loadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Game> gameList});
}

/// @nodoc
class __$$_loadedCopyWithImpl<$Res>
    extends _$JoinGameStateCopyWithImpl<$Res, _$_loaded>
    implements _$$_loadedCopyWith<$Res> {
  __$$_loadedCopyWithImpl(_$_loaded _value, $Res Function(_$_loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameList = null,
  }) {
    return _then(_$_loaded(
      gameList: null == gameList
          ? _value._gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$_loaded implements _loaded {
  const _$_loaded({required final List<Game> gameList}) : _gameList = gameList;

  final List<Game> _gameList;
  @override
  List<Game> get gameList {
    if (_gameList is EqualUnmodifiableListView) return _gameList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameList);
  }

  @override
  String toString() {
    return 'JoinGameState.loaded(gameList: $gameList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loaded &&
            const DeepCollectionEquality().equals(other._gameList, _gameList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_gameList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadedCopyWith<_$_loaded> get copyWith =>
      __$$_loadedCopyWithImpl<_$_loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Game> gameList) loaded,
  }) {
    return loaded(gameList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Game> gameList)? loaded,
  }) {
    return loaded?.call(gameList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gameList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements JoinGameState {
  const factory _loaded({required final List<Game> gameList}) = _$_loaded;

  List<Game> get gameList;
  @JsonKey(ignore: true)
  _$$_loadedCopyWith<_$_loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JoinGameEvent {
  String get userName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_joinGameEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_joinGameEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_joinGameEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGameEventCopyWith<JoinGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGameEventCopyWith<$Res> {
  factory $JoinGameEventCopyWith(
          JoinGameEvent value, $Res Function(JoinGameEvent) then) =
      _$JoinGameEventCopyWithImpl<$Res, JoinGameEvent>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class _$JoinGameEventCopyWithImpl<$Res, $Val extends JoinGameEvent>
    implements $JoinGameEventCopyWith<$Res> {
  _$JoinGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_joinGameEventCopyWith<$Res>
    implements $JoinGameEventCopyWith<$Res> {
  factory _$$_joinGameEventCopyWith(
          _$_joinGameEvent value, $Res Function(_$_joinGameEvent) then) =
      __$$_joinGameEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$_joinGameEventCopyWithImpl<$Res>
    extends _$JoinGameEventCopyWithImpl<$Res, _$_joinGameEvent>
    implements _$$_joinGameEventCopyWith<$Res> {
  __$$_joinGameEventCopyWithImpl(
      _$_joinGameEvent _value, $Res Function(_$_joinGameEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$_joinGameEvent(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_joinGameEvent implements _joinGameEvent {
  const _$_joinGameEvent({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'JoinGameEvent.load(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_joinGameEvent &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_joinGameEventCopyWith<_$_joinGameEvent> get copyWith =>
      __$$_joinGameEventCopyWithImpl<_$_joinGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) load,
  }) {
    return load(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? load,
  }) {
    return load?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_joinGameEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_joinGameEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_joinGameEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _joinGameEvent implements JoinGameEvent {
  const factory _joinGameEvent({required final String userName}) =
      _$_joinGameEvent;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_joinGameEventCopyWith<_$_joinGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
