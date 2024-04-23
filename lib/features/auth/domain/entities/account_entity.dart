class AccountEntity {
  final String id;
  final String? email;

  // final String accessToken;

  AccountEntity({
    // required this.accessToken,
    required this.id,
    this.email,
  });
}
