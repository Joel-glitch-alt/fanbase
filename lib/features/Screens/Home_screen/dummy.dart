// import 'package:fanbase/theme/app_decoration.dart';
// import 'package:fanbase/theme/theme_helper.dart';
// import 'package:fanbase/widgetss/custom_bottom_bar.dart';
// import 'package:fanbase/widgetss/custom_image_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class GiftScreen extends StatelessWidget {
//   const GiftScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height,
//             child: Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         appTheme.lightBlueA700.withOpacity(0.65),
//                         theme.colorScheme.primary.withOpacity(0.65),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 0,
//                   child: Container(
//                     padding: EdgeInsets.fromLTRB(25, 26, 25, 0),
//                     width: MediaQuery.of(context).size.width,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         _buildFrameFifty(),
//                         SizedBox(height: 16.0),
//                         _buildForm3(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //Later use this
//         bottomNavigationBar: _buildBottomBar(),
//       ),
//     );
//   }

//   Widget _buildFrameFifty() {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: _buildForm(
//               giftZone: "Money Zone",
//               pointsCounter: "Points 500",
//             ),
//           ),
//           SizedBox(width: 8.0),
//           Expanded(
//             child: _buildForm(
//               giftZone: "Gift Zone",
//               pointsCounter: "Points 500",
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildForm3() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 70, vertical: 75),
//       decoration: AppDecoration.fillGray.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomImageView(
//             // imagePath: ImageConstant.imgThumbsUpPink3001,
//             height: 93,
//             width: 82,
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             "There is no reward for you at the moment".tr,
//             textAlign: TextAlign.center,
//             style: theme.textTheme.titleMedium,
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             "msg_earn_more_points".tr,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBottomBar() {
//     return CustomBottomBar(
//       onChanged: (BottomBarEnum type) {
//         //Get.toNamed(AppRoutes.loadingPageScreen);
//       },
//     );
//   }

//   Widget _buildForm({
//     required String giftZone,
//     required String pointsCounter,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 41, vertical: 14),
//       decoration: AppDecoration.fillGray.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             giftZone,
//             style: theme.textTheme.titleMedium!.copyWith(
//               color: appTheme.black9004c,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             pointsCounter,
//             style: theme.textTheme.bodySmall!.copyWith(
//               color: appTheme.whiteA700.withOpacity(0.2),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
