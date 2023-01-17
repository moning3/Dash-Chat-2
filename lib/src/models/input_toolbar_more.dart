part of dash_chat_2;

class InputToolbarMoreOptions {
  const InputToolbarMoreOptions({
    this.inputToolbarMore = false,
    this.inputToolbarMoreChild,
  });

  /// If you want to display more custom functions under the sending box
  final bool inputToolbarMore;

  /// If you want to customize more functions under the sending box
  final Widget? inputToolbarMoreChild;
}
