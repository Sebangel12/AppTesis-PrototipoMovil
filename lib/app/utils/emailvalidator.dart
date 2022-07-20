bool isValiEmail(String text) {
  return RegExp(r"^[a-zA-Z0-9]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

bool isValiEmail1(String text) {
  return RegExp(
          r"^[adminatel]+.[redestel]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}
