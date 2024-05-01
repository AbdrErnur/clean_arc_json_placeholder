
abstract class AppRoutePaths{
  static const RouteDetails signIn = RouteDetails(name: 'signIn Screen', path: '/signIn', fullPath: '/signIn');
  static const RouteDetails register = RouteDetails(name: 'Register Screen', path: 'register', fullPath: '/signIn/register');
  static const RouteDetails resetPasswordScreen = RouteDetails(name: 'Reset Password Screen', path: 'resetPassword', fullPath: '/signIn/resetPassword');
  static const RouteDetails homePage = RouteDetails(name: 'Home Page', path: '/home', fullPath: '/home');
  static const RouteDetails userDetails = RouteDetails(name: 'User Details Page', path: 'userDetails', fullPath: '/home/userDetails');
}

class RouteDetails{
  final String name;
  final String path;
  final String fullPath;

  const RouteDetails({required this.name, required this.path, required this.fullPath});
}