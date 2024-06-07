class ApiEndpoints {
  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // base url
  static const String getRepository =
      'https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order=asc}';
}
