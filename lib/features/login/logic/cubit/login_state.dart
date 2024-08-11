import 'package:flutter_adv_app/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  // initial state when creating the cubit will be private
  const factory LoginState.initial() = _Initial;
  // can access them in UI
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(T data) = LoginSuccess<T>;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) = LoginError;
}
