import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/auth/auth_bloc.dart';
import 'package:reception_app/pages/splash/splash.dart';

class RouteGenerator {
  // final ReceptionRepository repo = ReceptionRepository(
  //     mapper: MapperReception(),
  //     apiClient: ApiClient(
  //         baseUrl: baseURL,
  //         token: currentAuth?.accessToken,
  //         refreshToken: currentAuth?.refreshToken));


   final AuthBloc _authBloc = AuthBloc();
  // final MainBloc _mainBloc = MainBloc();
  // final InspectionBloc _inspectBloc = InspectionBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthBloc>.value(
            value: _authBloc,
            child: const SplashPage(),
          ),
        );
      // case '/login':
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<AuthBloc>.value(
      //       value: _authBloc,
      //       child: const LoginPage(title: "Login page with overlay"),
      //     ),
      //   );
      // case '/main':
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => BlocProvider<MainBloc>.value(
      //         value: _mainBloc,
      //         child: MainPage(user: args),
      //       ),
      //     );
      //   }
      //   return _errorRoute();

    
    

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR IN NAVIGATION'),
        ),
      );
    });
  }
}