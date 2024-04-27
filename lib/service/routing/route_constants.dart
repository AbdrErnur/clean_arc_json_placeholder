
abstract class AppRoutePaths{
  static const RouteDetails auth = RouteDetails(name: 'Auth Screen', path: '/auth');
  static const RouteDetails register = RouteDetails(name: 'Register Screen', path: '/register');
  static const RouteDetails resetPasswordScreen = RouteDetails(name: 'Reset Password Screen', path: '/resetPassword');
  static const RouteDetails homePage = RouteDetails(name: 'Home Page', path: '/home');
  static const RouteDetails loading = RouteDetails(name: 'Loading Page', path: '/loadingHomePage');
  static const RouteDetails userDetails = RouteDetails(name: 'User Details Page', path: 'userDetails');
}

class RouteDetails{
  final String name;
  final String path;

  const RouteDetails({required this.name, required this.path});
}