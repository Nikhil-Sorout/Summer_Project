import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:summer_project/common/styles/spacing_styles.dart';
import 'package:summer_project/common/widgets/login_signup/form_divider.dart';
import 'package:summer_project/common/widgets/login_signup/social_buttons.dart';
import 'package:summer_project/screens/login/widgets/login_form.dart';
import 'package:summer_project/screens/login/widgets/login_header.dart';
import 'package:summer_project/utils/constants/sizes.dart';
import 'package:summer_project/utils/constants/text_strings.dart';


class LoginScreeen extends StatelessWidget {
  const LoginScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and SubTitle
              const TLoginHeader(),

              // Form
              const TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
