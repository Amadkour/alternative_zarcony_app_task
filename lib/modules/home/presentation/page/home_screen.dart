import 'package:alternative_zarcony_app_task/modules/home/cubit/address/address_cubit.dart';
import 'package:alternative_zarcony_app_task/modules/home/cubit/deal/deal_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widget/app_bar.dart';
import '../../cubit/add/add_cubit.dart';
import '../../cubit/category/category_cubit.dart';
import '../../provider/deal/model/deal_model.dart';
import '../widget/add/add_list_design.dart';
import '../widget/add/slider.dart';
import '../widget/address/address_list_design.dart';
import '../widget/category/category_list_design.dart';
import '../widget/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: Column(children: [
          ///-------------search
          const SearchWidget(),

          ///-------------addresses

          BlocBuilder<AddressCubit, AddressState>(builder: (context, state) {
            return state is! AddressInitial
                ? AddressListWidget(
                    addresses: AddressCubit.get(context).data,
                  )
                : const CircularProgressIndicator();
          }),

          ///-------------categories

          BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
            return state is! CategoryInitial
                ? CategoryListWidget(
                    categories: CategoryCubit.get(context).data,
                  )
                : const CircularProgressIndicator();
          }),

          ///-------------deals

          BlocBuilder<DealCubit, DealState>(builder: (context, state) {
            return state is! DealInitial
                ? DealListWidget(
                    deals: DealCubit.get(context).data,
                  )
                : const CircularProgressIndicator();
          }),

          ///-------------add
          BlocBuilder<AddCubit, AddState>(builder: (context, state) {
            return state is! AddInitial
                ? SliderWidget(
                    news: AddCubit.get(context).data,
                    isSlider: true,
                  )
                : const CircularProgressIndicator();
          }),
        ]));
  }
}
