import "package:car_makeover_studio/core/keys.dart";
import "package:car_makeover_studio/generated/l10n.dart";
import "package:flutter/material.dart";
import "package:injectable/injectable.dart";


@injectable
class SnackBarService {
  void showSnackBar(final String? message) {
    final snackBar = SnackBar(
      elevation: 2,
      behavior: SnackBarBehavior.fixed,
      content: Text(message ?? AppLocalizations.current.common_error),
    );

    snackbarKey.currentState?.hideCurrentSnackBar();
    snackbarKey.currentState?.showSnackBar(snackBar);
  }
}
