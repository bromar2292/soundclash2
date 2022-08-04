// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_games_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentGamesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Game> gameList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
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
abstract class $CurrentGamesStateCopyWith<$Res> {
  factory $CurrentGamesStateCopyWith(
          CurrentGamesState value, $Res Function(CurrentGamesState) then) =
      _$CurrentGamesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentGamesStateCopyWithImpl<$Res>
    implements $CurrentGamesStateCopyWith<$Res> {
  _$CurrentGamesStateCopyWithImpl(this._value, this._then);

  final CurrentGamesState _value;
  // ignore: unused_field
  final $Res Function(CurrentGamesState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CurrentGamesStateCopyWithImpl<$Res>
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
    return 'CurrentGamesState.initial()';
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
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
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

abstract class _Initial implements CurrentGamesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadedCopyWith<$Res> {
  factory _$$_loadedCopyWith(_$_loaded value, $Res Function(_$_loaded) then) =
      __$$_loadedCopyWithImpl<$Res>;
  $Res call({List<Game> gameList});
}

/// @nodoc
class __$$_loadedCopyWithImpl<$Res>
    extends _$CurrentGamesStateCopyWithImpl<$Res>
    implements _$$_loadedCopyWith<$Res> {
  __$$_loadedCopyWithImpl(_$_loaded _value, $Res Function(_$_loaded) _then)
      : super(_value, (v) => _then(v as _$_loaded));

  @override
  _$_loaded get _value => super._value as _$_loaded;

  @override
  $Res call({
    Object? gameList = freezed,
  }) {
    return _then(_$_loaded(
      gameList: gameList == freezed
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameList);
  }

  @override
  String toString() {
    return 'CurrentGamesState.loaded(gameList: $gameList)';
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
    TResult Function()? initial,
    TResult Function(List<Game> gameList)? loaded,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_loaded value)? loaded,
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

abstract class _loaded implements CurrentGamesState {
  const factory _loaded({required final List<Game> gameList}) = _$_loaded;

  List<Game> get gameList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_loadedCopyWith<_$_loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentGamesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_currentGamesEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_currentGamesEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_currentGamesEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentGamesEventCopyWith<$Res> {
  factory $CurrentGamesEventCopyWith(
          CurrentGamesEvent value, $Res Function(CurrentGamesEvent) then) =
      _$CurrentGamesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentGamesEventCopyWithImpl<$Res>
    implements $CurrentGamesEventCopyWith<$Res> {
  _$CurrentGamesEventCopyWithImpl(this._value, this._then);

  final CurrentGamesEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentGamesEvent) _then;
}

/// @nodoc
abstract class _$$_currentGamesEventCopyWith<$Res> {
  factory _$$_currentGamesEventCopyWith(_$_currentGamesEvent value,
          $Res Function(_$_currentGamesEvent) then) =
      __$$_currentGamesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_currentGamesEventCopyWithImpl<$Res>
    extends _$CurrentGamesEventCopyWithImpl<$Res>
    implements _$$_currentGamesEventCopyWith<$Res> {
  __$$_currentGamesEventCopyWithImpl(
      _$_currentGamesEvent _value, $Res Function(_$_currentGamesEvent) _then)
      : super(_value, (v) => _then(v as _$_currentGamesEvent));

  @override
  _$_currentGamesEvent get _value => super._value as _$_currentGamesEvent;
}

/// @nodoc

class _$_currentGamesEvent implements _currentGamesEvent {
  const _$_currentGamesEvent();

  @override
  String toString() {
    return 'CurrentGamesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_currentGamesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_currentGamesEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_currentGamesEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_currentGamesEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _currentGamesEvent implements CurrentGamesEvent {
  const factory _currentGamesEvent() = _$_currentGamesEvent;
}
