import 'package:flutter/material.dart';

class CustomTableUI {
  factory CustomTableUI() => _instance;
  CustomTableUI._internal();
  static final CustomTableUI _instance = CustomTableUI._internal();

  static Widget buildUIPageController(
    int currentPage,
    int countTotal,
    int maxPageButtons,
    int countPerPage, {
    VoidCallback? onStart,
    Function(int page)? onPage,
    Function(int lastPage)? onEnd,
  }) {
    final int pageTotal = (countTotal / countPerPage).ceil();
    final int pageLast = pageTotal - 1 < 0 ? 0 : pageTotal - 1;

    final List<Widget> buttons = <Widget>[];

    final Widget startButtonWidget = TextButton(
      child: Text('시작'),
      onPressed: currentPage == 0
          ? null
          : () {
              onStart?.call();
            },
    );

    buttons.add(
      SizedBox(
        width: 60.0,
        child: startButtonWidget,
      ),
    );

    int page = currentPage - 2;
    if (page < 0) {
      page = 0;
    }

    for (int i = 0; i < maxPageButtons; i++, page++) {
      if (page > pageLast) {
        break;
      }

      final int temp = page;
      final bool isCurrentPage = temp == currentPage;

      final Widget pageButtonWidget = TextButton(
        child: Text((page + 1).toString()),
        onPressed: isCurrentPage
            ? null
            : () {
                onPage?.call(temp);
              },
      );

      buttons.add(
        SizedBox(
          width: 36.0,
          child: pageButtonWidget,
        ),
      );
    }

    final Widget endButtonWidget = TextButton(
      child: Text('마지막'),
      onPressed: currentPage == pageLast
          ? null
          : () {
              onEnd?.call(pageLast);
            },
    );

    buttons.add(
      SizedBox(
        width: 60.0,
        child: endButtonWidget,
      ),
    );

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: buttons);
  }
}
