import 'package:freezed_annotation/freezed_annotation.dart';
part 'password_repeat_text_form_view_model.freezed.dart';

@freezed
class PasswordRepeatTextFormViewModel with _$PasswordRepeatTextFormViewModel{
  const factory PasswordRepeatTextFormViewModel({
    @Default('') String value,
    String? errorMessage,
    @Default(false) bool isValidate,
    @Default(false) bool isObscured,
  })=_PasswordRepeatTextFormViewModel;
}