import 'package:dio/dio.dart';
import 'package:flutter_adv_app/core/networking/api_constants.dart';
import 'package:flutter_adv_app/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv_app/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(APIConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
