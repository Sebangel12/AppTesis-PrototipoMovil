enum ResetPassResponse {
  ok,
  networkResquestFailed,
  userDisabled,
  userNotFound,
  unknown,
  tooManyRequests
}

ResetPassResponse stringToResetPassResponse(String code) {
  switch (code) {
    case "internal-error":
      return ResetPassResponse.tooManyRequests;
    case "user-not-found":
      return ResetPassResponse.userNotFound;
    case "user-disabled":
      return ResetPassResponse.userDisabled;
    case "network-request-failed":
      return ResetPassResponse.networkResquestFailed;
    default:
      return ResetPassResponse.unknown;
  }
}
