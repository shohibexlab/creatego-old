import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:creatego/yollet_theme.dart';

class SortableTable extends StatefulWidget {
  DownloadState listType;
  List<bool> selectedItems;
  List<String> headNames;
  Map<String, bool> headNamesMap;

  ValueChanged<Map<String, bool>> onReorder;

  SortableTable({
    required this.listType,
    required this.selectedItems,
    required this.headNames,
    required this.headNamesMap,
    required this.onReorder,
  });

  @override
  _SortableTableState createState() => _SortableTableState();
}

class _SortableTableState extends State<SortableTable> {
  List<String> vals = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 300,
      height: widget.headNames.length > 6
          ? 420
          : (54 * widget.headNames.length).toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: ThemeColors.white,
        boxShadow: ThemeShadows.shadowMd,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReorderableListView(
                buildDefaultDragHandles: true,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                children: _generateList(),
                onReorder: reorderData),
          ],
        ),
      ),
    );
  }

  Function eq = const ListEquality().equals;

  List<Widget> _generateList() {
    List<Widget> list = [];
    print(widget.headNamesMap);
    for (final item in widget.headNamesMap.keys.toList()) {
      list.add(
        Container(
          key: Key(item),
          child: ListTile(
            title: Text(
              widget.listType == DownloadState.REWARD
                  ? item.toString()
                  : item.toString(),
              style: ThemeTextMedium.sm.apply(color: ThemeColors.coolgray600),
            ),
            leading: Checkbox(
              checkColor: Colors.white,
              value: widget.headNamesMap[item],
              onChanged: (bool? value) {
                setState(() {
                  widget.headNamesMap[item] = value!;
                  for (var element in widget.headNamesMap.values) {
                    widget.selectedItems[widget.headNames.indexOf(item)] =
                        element;
                  }
                });
                vals = [];
                for (var element in widget.headNamesMap.keys) {
                  if (widget.headNamesMap[element]!) {
                    vals.add(element);
                  }
                }
                _updateListType(valsa: vals);
              },
            ),
          ),
        ),
      );
    }
    return list;
  }

  void reorderData(int oldindex, int newindex) {
    setState(() {
      vals = [];
      for (var element in widget.headNamesMap.keys) {
        if (widget.headNamesMap[element]!) {
          vals.add(element);
        }
      }
      if (newindex > oldindex) {
        newindex -= 1;
      }

      String oldVal = vals[oldindex];
      String newVal = vals[newindex];
      if (widget.headNamesMap.values.toList()[oldindex]) {
        List<String> keys = widget.headNamesMap.keys.toList();
        List<bool> values = widget.headNamesMap.values.toList();

        String oldValKey = keys[oldindex];
        String newValKey = keys[newindex];

        bool oldValVal = values[oldindex];
        bool newValVal = values[newindex];

        Map<String, bool> newMap = {};

        vals.removeAt(oldindex);
        vals.insert(oldindex, newVal);
        vals.removeAt(newindex);
        vals.insert(newindex, oldVal);

        keys.removeAt(oldindex);
        keys.insert(oldindex, newValKey);
        keys.removeAt(newindex);
        keys.insert(newindex, oldValKey);

        values.removeAt(oldindex);
        values.insert(oldindex, newValVal);
        values.removeAt(newindex);
        values.insert(newindex, oldValVal);

        for (int i = 0; i < values.length; i++) {
          newMap.addAll({keys[i]: values[i]});
        }
        widget.onReorder(newMap);
        widget.headNamesMap = newMap;
        _updateListType(valsa: keys);
      }
    });
  }

  _updateListType({List<String>? valsa}) {
    switch (widget.listType) {
      case DownloadState.STORE:
        break;
      case DownloadState.APPROVED:
        break;
      case DownloadState.ACQUIRED:
        break;
      case DownloadState.SETTLEMENT:
        break;
      case DownloadState.SETTLEMENTDETAIL:
        break;
      case DownloadState.REWARD:
        break;
      case DownloadState.TRANSFER:
        break;
      default:
        break;
    }
  }
}

enum DownloadState {
  TRANSFER,
  REWARD,
  SETTLEMENTDETAIL,
  SETTLEMENT,
  ACQUIRED,
  APPROVED,
  STORE
}
