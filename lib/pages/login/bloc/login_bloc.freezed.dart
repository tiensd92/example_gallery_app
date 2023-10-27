// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChangeUsername,
    required TResult Function(String value) onChangePassword,
    required TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)
        onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChangeUsername,
    TResult? Function(String value)? onChangePassword,
    TResult? Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChangeUsername,
    TResult Function(String value)? onChangePassword,
    TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeUsername value) onChangeUsername,
    required TResult Function(_OnChangePasssword value) onChangePassword,
    required TResult Function(_OnSubmit value) onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeUsername value)? onChangeUsername,
    TResult? Function(_OnChangePasssword value)? onChangePassword,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeUsername value)? onChangeUsername,
    TResult Function(_OnChangePasssword value)? onChangePassword,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnChangeUsernameImplCopyWith<$Res> {
  factory _$$OnChangeUsernameImplCopyWith(_$OnChangeUsernameImpl value,
          $Res Function(_$OnChangeUsernameImpl) then) =
      __$$OnChangeUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnChangeUsernameImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnChangeUsernameImpl>
    implements _$$OnChangeUsernameImplCopyWith<$Res> {
  __$$OnChangeUsernameImplCopyWithImpl(_$OnChangeUsernameImpl _value,
      $Res Function(_$OnChangeUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnChangeUsernameImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangeUsernameImpl implements _OnChangeUsername {
  const _$OnChangeUsernameImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.onChangeUsername(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeUsernameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeUsernameImplCopyWith<_$OnChangeUsernameImpl> get copyWith =>
      __$$OnChangeUsernameImplCopyWithImpl<_$OnChangeUsernameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChangeUsername,
    required TResult Function(String value) onChangePassword,
    required TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)
        onSubmit,
  }) {
    return onChangeUsername(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChangeUsername,
    TResult? Function(String value)? onChangePassword,
    TResult? Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
  }) {
    return onChangeUsername?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChangeUsername,
    TResult Function(String value)? onChangePassword,
    TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
    required TResult orElse(),
  }) {
    if (onChangeUsername != null) {
      return onChangeUsername(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeUsername value) onChangeUsername,
    required TResult Function(_OnChangePasssword value) onChangePassword,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onChangeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeUsername value)? onChangeUsername,
    TResult? Function(_OnChangePasssword value)? onChangePassword,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onChangeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeUsername value)? onChangeUsername,
    TResult Function(_OnChangePasssword value)? onChangePassword,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onChangeUsername != null) {
      return onChangeUsername(this);
    }
    return orElse();
  }
}

abstract class _OnChangeUsername implements LoginEvent {
  const factory _OnChangeUsername(final String value) = _$OnChangeUsernameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$OnChangeUsernameImplCopyWith<_$OnChangeUsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangePassswordImplCopyWith<$Res> {
  factory _$$OnChangePassswordImplCopyWith(_$OnChangePassswordImpl value,
          $Res Function(_$OnChangePassswordImpl) then) =
      __$$OnChangePassswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnChangePassswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnChangePassswordImpl>
    implements _$$OnChangePassswordImplCopyWith<$Res> {
  __$$OnChangePassswordImplCopyWithImpl(_$OnChangePassswordImpl _value,
      $Res Function(_$OnChangePassswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnChangePassswordImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangePassswordImpl implements _OnChangePasssword {
  const _$OnChangePassswordImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.onChangePassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangePassswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangePassswordImplCopyWith<_$OnChangePassswordImpl> get copyWith =>
      __$$OnChangePassswordImplCopyWithImpl<_$OnChangePassswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChangeUsername,
    required TResult Function(String value) onChangePassword,
    required TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)
        onSubmit,
  }) {
    return onChangePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChangeUsername,
    TResult? Function(String value)? onChangePassword,
    TResult? Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
  }) {
    return onChangePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChangeUsername,
    TResult Function(String value)? onChangePassword,
    TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
    required TResult orElse(),
  }) {
    if (onChangePassword != null) {
      return onChangePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeUsername value) onChangeUsername,
    required TResult Function(_OnChangePasssword value) onChangePassword,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeUsername value)? onChangeUsername,
    TResult? Function(_OnChangePasssword value)? onChangePassword,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onChangePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeUsername value)? onChangeUsername,
    TResult Function(_OnChangePasssword value)? onChangePassword,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onChangePassword != null) {
      return onChangePassword(this);
    }
    return orElse();
  }
}

abstract class _OnChangePasssword implements LoginEvent {
  const factory _OnChangePasssword(final String value) =
      _$OnChangePassswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$OnChangePassswordImplCopyWith<_$OnChangePassswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubmitImplCopyWith<$Res> {
  factory _$$OnSubmitImplCopyWith(
          _$OnSubmitImpl value, $Res Function(_$OnSubmitImpl) then) =
      __$$OnSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function() onSuccess, dynamic Function(String) onError});
}

/// @nodoc
class __$$OnSubmitImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnSubmitImpl>
    implements _$$OnSubmitImplCopyWith<$Res> {
  __$$OnSubmitImplCopyWithImpl(
      _$OnSubmitImpl _value, $Res Function(_$OnSubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$OnSubmitImpl(
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$OnSubmitImpl implements _OnSubmit {
  const _$OnSubmitImpl({required this.onSuccess, required this.onError});

  @override
  final dynamic Function() onSuccess;
  @override
  final dynamic Function(String) onError;

  @override
  String toString() {
    return 'LoginEvent.onSubmit(onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubmitImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSubmitImplCopyWith<_$OnSubmitImpl> get copyWith =>
      __$$OnSubmitImplCopyWithImpl<_$OnSubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChangeUsername,
    required TResult Function(String value) onChangePassword,
    required TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)
        onSubmit,
  }) {
    return onSubmit(onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChangeUsername,
    TResult? Function(String value)? onChangePassword,
    TResult? Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
  }) {
    return onSubmit?.call(onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChangeUsername,
    TResult Function(String value)? onChangePassword,
    TResult Function(
            dynamic Function() onSuccess, dynamic Function(String) onError)?
        onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeUsername value) onChangeUsername,
    required TResult Function(_OnChangePasssword value) onChangePassword,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeUsername value)? onChangeUsername,
    TResult? Function(_OnChangePasssword value)? onChangePassword,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeUsername value)? onChangeUsername,
    TResult Function(_OnChangePasssword value)? onChangePassword,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _OnSubmit implements LoginEvent {
  const factory _OnSubmit(
      {required final dynamic Function() onSuccess,
      required final dynamic Function(String) onError}) = _$OnSubmitImpl;

  dynamic Function() get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$OnSubmitImplCopyWith<_$OnSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  String? get errorString => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({String? errorString, bool isLoading});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorString = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      errorString: freezed == errorString
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorString, bool isLoading});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorString = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$LoginStateImpl(
      errorString: freezed == errorString
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl({this.errorString, this.isLoading = false});

  @override
  final String? errorString;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoginState(errorString: $errorString, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.errorString, errorString) ||
                other.errorString == errorString) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorString, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState({final String? errorString, final bool isLoading}) =
      _$LoginStateImpl;

  @override
  String? get errorString;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
