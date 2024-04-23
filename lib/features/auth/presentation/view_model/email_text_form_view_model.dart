import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_text_form_view_model.freezed.dart';


@freezed
class EmailTextFormViewModel with _$EmailTextFormViewModel{
  const factory EmailTextFormViewModel({
    required String value,
    required String errorMessage,
})=_EmailTextFormViewModel;
}


//
//
// class EmailTextFormViewModel{
//   //string value
//   //string errorMessage пример: неправильная почта
// }// за поле ввода почты

// class PasswordTextFormViewModel{
//   //string value
//   //String errorMessage пример:
//   // 1) должен быть минимум 8 символов
//   // 2) должен иметь спец знак !":?*(
//   // 3) должна быть цифра и а А
// }// за поле ввода пароль
//
// class State{
//   final EmailTextFormViewModel emailTextFormViewModel;
//   final PasswordTextFormViewModel passwordTextFormViewModel;
//
// }
