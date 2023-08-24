import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
 
import 'package:reception_app/data/network/entities/user.dart';
import 'package:reception_app/globals/constants.dart';
import 'package:reception_app/globals/globals.dart';

 
import '../../data/network/client/api_client.dart';
 
import '../../data/repository/auth_repository.dart';
 

part 'auth_event.dart';
part 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
 final AuthRepository repo = AuthRepository(
    apiClient: ApiClient(baseUrl: baseURL,token: currentAuth?.accessToken,refreshToken: currentAuth?.refreshToken)
  );



  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is Login) {
        if (event.userName.isEmpty || event.password.isEmpty) {
          emit(AuthError());
        } else {
          emit(AuthLoading());
          var user = await repo.login(event.userName, event.password);
          emit(AuthLoaded(user.userName ?? event.userName));
        }
      }
      else if (event is AuthUser){
          emit(AuthLoading());
          emit(AuthValidatedUser(User(userName: "Fake User")));
          //
          // var user = await repo.validateSession();
          // if(user != null){
          //   emit(AuthValidatedUser(user));
          // }
          // else{
          //   emit(AuthInValidatedUser());
          // }
      }



    });
  }
}