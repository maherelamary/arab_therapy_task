import 'package:arab_therapy_task/src/core/di/service_locator.dart';
import 'package:arab_therapy_task/src/features/common/helper/snack_helper.dart';
import 'package:arab_therapy_task/src/features/common/utils/constants.dart';
import 'package:arab_therapy_task/src/features/presentation/bloc/home/named_items_bloc/get_named_items_bloc.dart';
import 'package:arab_therapy_task/src/features/presentation/view/named_items/component/named_item.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamedItemsPage extends StatelessWidget {
  static const routeName = '/named_items';
  const NamedItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        toolbarHeight: Constants.defaultAppBarHeight,
        backgroundColor: ColorsPalette.defaultAppBarColor,
        title: Text(
          "NAMED ITEMS PAGE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.vDp,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.vDp),
            BlocProvider<GetNamedItemsBloc>(
              create: (_) => sl.get<GetNamedItemsBloc>()
                ..add(const GetNamedItemsBlocEvent.perform()),
              child: Expanded(
                child: BlocConsumer<GetNamedItemsBloc, GetNamedItemsBlocState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        failed: (msg) =>
                            SnackHelper.showErrorSnackBar(context, msg),
                        orElse: () {});
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                        orElse: () => const SizedBox(height: 0.0, width: 0.0),
                        loading: () => const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white)),
                        loaded: (photos) => ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              padding: EdgeInsets.symmetric(horizontal: 16.hDp),
                              separatorBuilder: (context, _) =>
                                  SizedBox(height: 12.vDp),
                              itemBuilder: (context, index) =>
                                  NamedItem(item: photos[index]),
                              itemCount: photos.length,
                            ));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
