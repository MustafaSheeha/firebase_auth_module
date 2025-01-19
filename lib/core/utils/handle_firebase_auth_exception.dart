import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/constants/firebase_auth_exception_strings.dart';
import 'package:get/get.dart';

void handleFirebaseAuthException(FirebaseAuthException e) {
    String errorMessage;
    switch (e.code) {
      case FirebaseAuthExceptionStrings.userNotFound:
        errorMessage = FirebaseAuthExceptionStrings.noUserFoundForThatEmail;
        break;
      case FirebaseAuthExceptionStrings.wrongPassword:
        errorMessage = FirebaseAuthExceptionStrings.wrongPasswordProvidedForThatUser;
        break;
      case FirebaseAuthExceptionStrings.invalidEmail:
        errorMessage = FirebaseAuthExceptionStrings.theEmailAddressIsBadlyFormatted;
        break;
      case FirebaseAuthExceptionStrings.userDisabled:
        errorMessage =
            FirebaseAuthExceptionStrings.theUserAccountHasBeenDisabledByAnAdministrator;
        break;
      case FirebaseAuthExceptionStrings.tooManyRequests:
        errorMessage = FirebaseAuthExceptionStrings.tooManyRequestsTryAgainLater;
        break;
      case FirebaseAuthExceptionStrings.operationNotAllowed:
        errorMessage = FirebaseAuthExceptionStrings.emailPasswordAccountsAreNotEnabled;
        break;
      case FirebaseAuthExceptionStrings.weakPassword:
        errorMessage = FirebaseAuthExceptionStrings.thePasswordIsTooWeak;
        break;
      case FirebaseAuthExceptionStrings.emailAlreadyInUse:
        errorMessage = FirebaseAuthExceptionStrings.theAccountAlreadyExistsForThatEmail;
        break;
      case FirebaseAuthExceptionStrings.networkRequestFailed:
        errorMessage =
            FirebaseAuthExceptionStrings.networkRequestFailedPleaseCheckYourInternetConnection;
        break;
      case FirebaseAuthExceptionStrings.invalidCredential:
        errorMessage =
            FirebaseAuthExceptionStrings.theSuppliedAuthCredentialIsIncorrect;
        break;
      default:
        errorMessage = FirebaseAuthExceptionStrings.anUndefinedError;
    }
    Get.snackbar(FirebaseAuthExceptionStrings.authenticationError, errorMessage);
    }
