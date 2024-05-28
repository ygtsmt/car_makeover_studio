import "package:car_makeover_studio/core/regex.dart";
import "package:intl/intl.dart";
import "package:mask_text_input_formatter/mask_text_input_formatter.dart";

String getEnumValue(final Enum e) => e.toString().split(".").last;

class PhoneTextMaskFormatter extends MaskTextInputFormatter {
  static final maskFormatter = MaskTextInputFormatter(
    mask: "+41 0## ### ## ##",
    filter: {"#": RegExp(numberRegex)},
  );
}

class DateTextMaskFormatter extends MaskTextInputFormatter {
  static final maskFormatterDate = MaskTextInputFormatter(
    mask: "##/##/####",
    filter: {"#": RegExp(numberRegex)},
  );
}

String getFullCultureName() {
  final cultureName = Intl.getCurrentLocale();
  switch (cultureName) {
    case "en":
      return "en-US";
    case "de":
      return "de-DE";
    case "fr":
      return "fr-CH";
    case "tr":
      return "tr-TR";
    default:
      return "tr-TR";
  }
}
