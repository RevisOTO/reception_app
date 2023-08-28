import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/auth/auth_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/inspection_page.dart';
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
      case '/inspection':
        if (args is Registration) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider<InspectionBloc>.value(
              value: InspectionBloc(args),
              child: InspectionPage(args),
            ),
          );
        }
        return _errorRoute();

    
    

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