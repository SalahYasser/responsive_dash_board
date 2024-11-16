import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.cardBackgroundAndColor),
          ),
          // color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, top: 16, right: 42),
              title: Text(
                'Name card',
                style: Styles.styleRegular16.copyWith(
                  color: Color(0xffFFFFFF).withOpacity(0.8),
                ),
              ),
              subtitle: Text(
                'Salah Yasser',
                style: Styles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24, bottom: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Styles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: Styles.styleRegular16
                        .copyWith(color: Colors.white.withOpacity(0.8)),
                  ),
                  // SizedBox(height: 54 - 28),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

    // return AspectRatio(
    //   aspectRatio: 420 / 215,
    //   child: Container(
    //     decoration: ShapeDecoration(
    //       image: const DecorationImage(
    //           image: AssetImage(Assets.cardBackgroundAndColor)),
    //       // color: const Color(0xFF4EB7F2),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(12),
    //       ),
    //     ),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.end,
    //       children: [
    //         ListTile(
    //           contentPadding:
    //           const EdgeInsets.only(left: 31, right: 42, top: 16),
    //           title: Text('Name card',
    //               style: Styles.styleRegular16.copyWith(
    //                 color: Colors.white,
    //               )),
    //           subtitle: const Text(
    //             'Syah Bandi',
    //             style: Styles.styleMedium20,
    //           ),
    //           trailing: SvgPicture.asset(Assets.imagesGallery),
    //         ),
    //         const Expanded(child: SizedBox()),
    //         Padding(
    //           padding: const EdgeInsets.only(right: 48 - 24),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               Text(
    //                 '0918 8124 0042 8129',
    //                 style: Styles.styleSemiBold24.copyWith(
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               Text(
    //                 '12/20 - 124',
    //                 style:
    //                 Styles.styleRegular16.copyWith(color: Colors.white),
    //               ),
    //             ],
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 54 - 28,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
