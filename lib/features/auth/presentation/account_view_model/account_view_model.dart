import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_view_model.freezed.dart';

@freezed
class AccountEntityViewModel with _$AccountEntityViewModel{
  const factory AccountEntityViewModel({
    required String id,
    required String? email,
})=_AccountEntityViewModel;
}

