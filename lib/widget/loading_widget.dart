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
      height: CoreConstantLoading.heightWidget,
      width: widthScreen,
      decoration: BoxDecoration(
        color: CoreConstantLoading.colorSpace ?? Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            CoreConstantLoading.pathLoadingGif,
            height: CoreConstantLoading.sizeLoading,
            width: CoreConstantLoading.sizeLoading,
            package: 'loading_list',
          ),
          Text(
            "Đang tải",
            style: TextStyle(
              color: CoreConstantLoading.colorText ?? Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
