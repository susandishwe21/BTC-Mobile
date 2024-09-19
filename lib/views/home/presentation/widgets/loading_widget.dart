import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loadingWidget(BuildContext context) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.width * 0.15,
      width: MediaQuery.of(context).size.width * 0.18,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: CupertinoActivityIndicator(
          color: Colors.orange,
        ),
      ),
    ),
  );
}
