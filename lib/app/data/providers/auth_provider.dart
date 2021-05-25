import 'package:obra_limpa/app/data/model/usuario_model.dart';
import 'package:obra_limpa/app/data/model_form/usuario_model_form.dart';
import 'package:obra_limpa/app/services/dio_service.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class AuthProvider {
  Future<Usuario> signIn(UsuarioModelForm usuarioForm) async {
    var response = await dioService.post('api/auth/doadores/sign_in/', data: {
      "usuario": usuarioForm.toJson(),
    });
    if (response.statusCode == 200) {
      var token = response.headers.value('authorization');
      updateToken(token);
      return Usuario.fromJson(response.data);
    }
    return null;
  }

  Future<Usuario> validateToken(token) async {
    var response = await dioService.get(
      'api/doadores/token',
      options: Options(
        headers: {
          "Authorization": token,
        },
      ),
    );
    if (response.statusCode == 200) {
      updateToken(token);
      return Usuario.fromJson(response.data);
    }
    return null;
  }

  updateToken(String token) {
    dioService.options.headers.addAll(
      {'Authorization': token},
    );
  }

  void signOut() {}
}
