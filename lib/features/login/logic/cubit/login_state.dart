import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  // initial state when creating the cubit will be private
  const factory LoginState.initial() = _Initial;
  // can access them in UI
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error({required String error}) = Error;
}
