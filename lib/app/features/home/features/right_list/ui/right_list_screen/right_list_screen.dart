import "package:car_makeover_studio/app/features/home/features/right_list/bloc/right_list_bloc.dart";
import "package:car_makeover_studio/core/injection/injection.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class RightListScreen extends StatefulWidget {
  const RightListScreen({super.key});

  @override
  State<RightListScreen> createState() => _RightListScreenState();
}

class _RightListScreenState extends State<RightListScreen> {
  @override
  void initState() {
    super.initState();
    getIt<RightListBloc>().add(GetRightListEvent());
  }

  @override
  Widget build(final BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          children: [
            Expanded(
              child: BlocBuilder<RightListBloc, RightListState>(
                builder: (final context, final state) {
                  return ListView.builder(
                          itemCount: state.rightList.length,
                          itemBuilder: (final context, final index) {
                            return Card(
                              child: ListTile(
                                onTap: () {},
                                visualDensity: VisualDensity.comfortable,
                                title: Text(state.rightList[index].coinName ?? 'adfsd'),
                                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                              ),
                            );
                          },
                        );
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_outlined),
          ),
        )
      ],
    );
  }
}
