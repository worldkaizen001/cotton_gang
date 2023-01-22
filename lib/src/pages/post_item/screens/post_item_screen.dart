part of 'package:cotton_gang/src/pages/post_item/post_item_page.dart';

class PostItemScreen extends ConsumerStatefulWidget {
  const PostItemScreen({Key? key}) : super(key: key);

  @override
  PostItemScreenState createState() => PostItemScreenState();
}

class PostItemScreenState extends ConsumerState<PostItemScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  final productNameController = TextEditingController();
  final productDetailsController = TextEditingController();
  final productPriceController = TextEditingController();
  final productBrandController = TextEditingController();
  final productConditionController = TextEditingController();

  @override
  void dispose (){
    productConditionController.dispose();
    productBrandController.dispose();
    productPriceController.dispose();
    productNameController.dispose();
    productDetailsController.dispose();
    super.dispose();
  }



  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formGlobalKey,
            child: Padding(
              padding:  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                children: [

                  CustomSizedBox.verticalSpace(20),
                  GestureDetector(
                    onTap: () {
                      // getImage('gallery');
                      // print('tapped');
                    },
                    child: Image.asset(
                      CGangImages.emptyImage,
                      height: ScreenSize.height(context) * 0.38,
                      width: double.infinity,
                    ),
                  ),
                  CustomSizedBox.verticalSpace(25),
                  TextFieldAndTitle(
                    controller: productNameController,
                    title: 'Product name',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter product name';
                      }

                      return null;
                    },
                    obscure: false,
                    onChanged: (val) {
                      setState(() {});
                      return null;
                    },
                  ),
                  CustomSizedBox.verticalSpace(30),
                  TextFieldAndTitle(
                    controller: productDetailsController,
                    title: 'Product details',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter details';
                      }

                      return null;
                    },
                    obscure: false,
                    onChanged: (val) {
                      setState(() {

                      });
                      return null;
                    },
                  ),
                  CustomSizedBox.verticalSpace(30),
                  TextFieldAndTitle(
                    controller: productPriceController,
                    title: 'Product price',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter price';
                      }

                      return null;
                    },
                    obscure: false,
                    onChanged: (val) {
                      setState(() {

                      });
                      return null;
                    },
                  ),
                  CustomSizedBox.verticalSpace(30),
                  TextFieldAndTitle(
                    controller: productBrandController,
                    title: 'Brand',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter brand';
                      }

                      return null;
                    },
                    obscure: false,
                    onChanged: (val) {
                      setState(() {

                      });
                      return null;
                    },
                  ),
                  CustomSizedBox.verticalSpace(30),
                  TextFieldAndTitle(
                    controller: productConditionController,
                    title: 'Condition',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter condition';
                      }

                      return null;
                    },
                    obscure: false,
                    onChanged: (val) {
                      setState(() {

                      });
                      return null;
                    },
                  ),
                  CustomSizedBox.verticalSpace(30),
                  CGangButton(
                      title: 'Post product',
                      buttonHeight: 0.060,
                      buttonWidth: 1,
                      buttonColor: productNameController.text.isEmpty ||
                              productPriceController.text.isEmpty ||
                              productDetailsController.text.isEmpty ||
                              productBrandController.text.isEmpty ||
                              productConditionController.text.isEmpty
                          ? const Color(0xff181818).withOpacity(0.49)
                          : const Color(0xff181818),
                      callBack: () {
                        if (formGlobalKey.currentState!.validate()) {}
                      }),
                  CustomSizedBox.verticalSpace(30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
