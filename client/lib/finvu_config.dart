enum FinvuEnvironment {
  development,
  production,
}

class FinvuSnaAuthConfig {
  FinvuSnaAuthConfig({
    required this.environment,
  });

  /// The environment for SNA authentication
  FinvuEnvironment environment;
}

class FinvuConfig {
  FinvuConfig({
    required this.finvuEndpoint,
    this.certificatePins,
    this.finvuSnaAuthConfig,
  });

  /// The endpoint of the Finvu API.
  String finvuEndpoint;

  /// The certificate pins to perform SSL pinning. These pins will need
  /// to be updated regularly.
  List<String>? certificatePins;

  /// The SNA authentication configuration
  FinvuSnaAuthConfig? finvuSnaAuthConfig;
}
