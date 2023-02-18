import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:flutter_omni_test/components/item_shimmer.dart';
import 'package:flutter_omni_test/components/o_image.dart';
import 'package:flutter_omni_test/screens/home/bloc/home_bloc.dart';
import 'package:flutter_omni_test/settings/config.dart';
import 'package:flutter_omni_test/settings/dependency_inyection.dart';
import 'package:flutter_omni_test/utils/default_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUI extends StatelessWidget {
  static const path = '/home';
  HomeUI({Key? key}) : super(key: key);

  final homeBloc = HomeBloc(getIt.get());

  @override
  Widget build(BuildContext context) {
    homeBloc.add(StartedEvent());

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        if (state is ErrorState) {
          showDefaultDialog(title: labels.error, message: state.errorMessage);
        }
      },
      builder: (context, state) {
        final isLoading = state is LoadingNextPhotosState;

        return SafeArea(
            child: Scaffold(
          body: RefreshIndicator(
            onRefresh: () async => homeBloc.add(PullToRefresh()),
            child: state is PullToRefreshState
                ? Center(
                    child: CircularProgressIndicator(
                      color: OColors.primary,
                    ),
                  )
                : ListView.builder(
                    padding: Config.defaultPadding,
                    itemCount: state.photos.length,
                    itemBuilder: ((context, index) {
                      if (index + 1 + homeBloc.itemsBeforeToSearchNextPage >=
                              state.photos.length &&
                          !isLoading) {
                        SchedulerBinding.instance
                            .addPostFrameCallback((timeStamp) {
                          homeBloc.add(SearchNextPage());
                        });
                      }
                      if (isLoading && index >= state.photos.length - 3) {
                        return const ItemShimmer();
                      }

                      return Container(
                        padding: Config.defaultPadding,
                        margin: Config.defaultMargin,
                        decoration: BoxDecoration(
                            color: OColors.background,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Text(state.photos[index].title ?? '')),
                            const SizedBox(width: 16.0),
                            OImage(url: state.photos[index].thumbnailUrl ?? '')
                          ],
                        ),
                      );
                    }),
                  ),
          ),
        ));
      },
    );
  }
}
