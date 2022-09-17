class Routes {
  static const String authService =
      "https://identitytoolkit.googleapis.com/v1/";

  static const String apiKey = "AIzaSyBuUh95he7kXVUC6wnh0mTlOrLdshpStAk";

  String signIn() {
    return authService + "accounts:signInWithPassword?key=" + apiKey;
  }

  String signUp() {
    return authService + "accounts:signUp?key=" + apiKey;
  }
}
