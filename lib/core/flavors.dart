enum Flavor {
  production,
  staging,
  development,
}

// ignore: avoid_classes_with_only_static_members
class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? "";

  static String get title {
    switch (appFlavor) {
      case Flavor.production:
        return "Garage AI";
      case Flavor.staging:
        return "Garage AI";
      case Flavor.development:
        return "Garage AI";
      // ignore: no_default_cases
      default:
        return "title";
    }
  }

  static String get apiBaseUrl {
    switch (appFlavor) {
      case Flavor.production:
        return "https://api.revo-garage.com";
      case Flavor.staging:
        return "https://api-test.revo-garage.com";
      case Flavor.development:
        return "https://api-test.revo-garage.com";
      // ignore: no_default_cases
      default:
        return "https://api-test.revo-garage.com";
    }
  }
}
