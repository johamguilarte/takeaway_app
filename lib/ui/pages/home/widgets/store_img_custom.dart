import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/domain/models/dummy/product.dart';
import 'package:takeaway_app/service/dummy_service.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class StoriesCustom extends StatefulWidget {
  const StoriesCustom({
    super.key,
  });

  @override
  State<StoriesCustom> createState() => _StoriesCustomState();
}

class _StoriesCustomState extends State<StoriesCustom> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Product>> postsFuture = DummyService.getProducts();

    return SizedBox(
        height: 80,
        child: FutureBuilder<List<Product>>(
            future: postsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SwimmerLoadingWidget();
              } else if (snapshot.hasData) {
                final posts = snapshot.data!;
                return _ListViewBuilder(products: posts);
              } else {
                return const SwimmerLoadingWidget();
              }
            }));
  }
}

class _ListViewBuilder extends StatelessWidget {
  const _ListViewBuilder({
    super.key,
    required this.products,
  });
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              
              Scaffold.of(context).showBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  enableDrag: true, (BuildContext context) {
                return _ButtonSheetContainerWidget(product: products[index]);
              });
            },
            customBorder: const CircleBorder(),
            splashColor: Colors.green.shade900,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(products[index].thumbnail!),
                    backgroundColor: Colors.transparent,
                  ),
                )),
          );
        });
  }
}

class _ButtonSheetContainerWidget extends StatelessWidget {
  const _ButtonSheetContainerWidget({
    super.key,
    required this.product,
  });
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: MediaQuery.of(context).size.height/1.4,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 35),
          SizedBox(
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: NetworkImage(product!.thumbnail!),
              backgroundColor: Colors.transparent,
            ),
          ),
          Text(product!.title!, style: MyTextSample.title(context)),
          const SizedBox(height: 30),
          Text(product!.description!, style: MyTextSample.body1(context)),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RoundedButtonIcons(
                onPressed: () async {
                  final url = Uri(scheme: 'tel', path: '04241234567');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    final snackBar = SnackBar(
                      /// need to set following properties for best effect of awesome_snackbar_content
                      elevation: 0,
                      behavior: SnackBarBehavior.fixed,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                        title: 'On Snap!',
                        message:
                            'This is an example error message that will be shown in the body of snackbar!',
      
                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                        contentType: ContentType.failure,
                      ),
                    );
      
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  }
                },
                icon: FontAwesomeIcons.phone,
                color: Colors.black,
              ),
              RoundedButtonIcons(
                onPressed: () async {
                 
                    final snackBar = SnackBar(
                      /// need to set following properties for best effect of awesome_snackbar_content
                      elevation: 0,
                      behavior: SnackBarBehavior.fixed,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                        title: 'Lo siento!',
                        message:
                            'Por ahora no contamos con esta funcionalidad!',
      
                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                        contentType: ContentType.failure,
                      ),
                    );
      
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  
                },
                icon: FontAwesomeIcons.instagram,
                color: Colors.black,
              ),
              RoundedButtonIcons(
                onPressed: () async {
                  final url = Uri(scheme: 'tel', path: '04241234567');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    
                    final snackBar = SnackBar(
                      /// need to set following properties for best effect of awesome_snackbar_content
                      elevation: 0,
                      behavior: SnackBarBehavior.fixed,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                        title: 'On Snap!',
                        message:
                            'This is an example error message that will be shown in the body of snackbar!',
      
                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                        contentType: ContentType.failure,
                      ),
                    );
      
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  }
                },
                icon: FontAwesomeIcons.tiktok,
                color: Colors.black,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
