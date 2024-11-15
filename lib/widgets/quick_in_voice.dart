import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_section.dart';
import 'package:responsive_dash_board/widgets/quick_in_voice_header.dart';

class QuickInVoice extends StatelessWidget {
  const QuickInVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInVoiceHeader(),
          LatestTransactionSection(),
        ],
      ),
    );
  }
}

