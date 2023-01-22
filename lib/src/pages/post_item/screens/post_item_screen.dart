part of 'package:cotton_gang/src/pages/post_item/post_item_page.dart';

class PostItemScreen extends StatelessWidget {
  const PostItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final productNameController = TextEditingController();
    final productDetailsController = TextEditingController();
    final productPriceController = TextEditingController();
    final productBrandController = TextEditingController();
    final productConditionController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formGlobalKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                const TopRowSection(
                  title: 'Product details',
                ),
                CustomSizedBox.verticalSpace(34),
                Image.asset(
                  CGangImages.emptyImage,
                  height: ScreenSize.height(context) * 0.38,
                  width: double.infinity,
                ),
                TextFieldAndTitle(
                  controller: productNameController,
                  title: 'product name',
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter product name';
                    }


                    return null;
                  },
                  obscure: false,
                  onChanged: (val) {},
                ),
                CustomSizedBox.verticalSpace(30),
                TextFieldAndTitle(
                  controller: productDetailsController,
                  title: 'product details',
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter details';
                    }


                    return null;
                  },
                  obscure: false,
                  onChanged: (val) {},
                ),
                CustomSizedBox.verticalSpace(30),
                TextFieldAndTitle(
                  controller: productPriceController,
                  title: 'product price',
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter price';
                    }


                    return null;
                  },
                  obscure: false,
                  onChanged: (val) {},
                ),
                CustomSizedBox.verticalSpace(30),
                TextFieldAndTitle(
                  controller: productBrandController,
                  title: 'brand',
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter brand';
                    }


                    return null;
                  },
                  obscure: false,
                  onChanged: (val) {},
                ),
                CustomSizedBox.verticalSpace(30),
                TextFieldAndTitle(
                  controller: productConditionController,
                  title: 'condition',
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter condition';
                    }


                    return null;
                  },
                  obscure: false,
                  onChanged: (val) {},
                ),
                CustomSizedBox.verticalSpace(30),
                CGangButton(
                    title: 'post product',
                    buttonHeight: 0.060,
                    buttonWidth: 1,
                    buttonColor: productNameController.text.isEmpty || productPriceController.text.isEmpty || productDetailsController.text.isEmpty || productBrandController.text.isEmpty || productConditionController.text.isEmpty ? const Color(0xff181818).withOpacity(0.49):const Color(0xff181818),
                    callBack: () {
                      if (formGlobalKey.currentState!.validate()) {
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
