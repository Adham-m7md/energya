import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigateToNextWidget on BuildContext {
  NavigatePushTo(String nextPageRout) {
    GoRouter.of(this).push(nextPageRout);
  }

  NavigatePopTo(String nextPageRout) {
    GoRouter.of(this).pop(nextPageRout);
  }

  NavigatereplaceTo(String nextPageRout) {
    GoRouter.of(this).replace(nextPageRout);
  }
}
