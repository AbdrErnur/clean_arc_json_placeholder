import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_text_form_view_model.freezed.dart';


@freezed
class PasswordTextFormViewModel with _$PasswordTextFormViewModel{
  const factory PasswordTextFormViewModel({
    required String value,
    required String errorMessage,
  })=_PasswordTextFormViewModel;
}