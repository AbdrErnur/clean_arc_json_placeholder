import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_failure_view_model.freezed.dart';

@freezed
class RegisterFailureViewModel with _$RegisterFailureViewModel{
  const factory RegisterFailureViewModel({
    @Default('') String error,
})=_RegisterFailureViewModel;
}