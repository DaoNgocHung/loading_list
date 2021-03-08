import 'package:flutter/material.dart';
import 'package:loading_list/cores/constant.dart';

class LoadingWidget extends StatefulWidget {
  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  double widthScreen;

  @override
  Widget build(BuildContext context) {
    widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: CoreConstant.heightWidget,
      width: widthScreen,
      decoration: BoxDecoration(
        color: CoreConstant.colorSpace ?? Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            CoreConstant.pathLoadingGif,
            height: CoreConstant.sizeLoading,
            width: CoreConstant.sizeLoading,
            package: 'loading_list',
          ),
          Text(
            "Đang tải",
            style: TextStyle(
              color: CoreConstant.colorText ?? Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
