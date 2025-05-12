class AppApi {
  // Base URL for the API
  static const String _baseUrl = 'https://srv812456.hstgr.cloud/api/';

  static const String register = '${_baseUrl}auth/register';
  static const String login = '${_baseUrl}auth/login';
  static const String verify = '${_baseUrl}verify-email';
  static const String forgotPassword = '${_baseUrl}forgot-password';
  static const String resetPassword = '${_baseUrl}auth/reset-password';
  static const String resendCode = '${_baseUrl}resend-code';

  static const String ads = '${_baseUrl}drivers/ads';

}
