import 'package:flutter/material.dart';

class TreeNode<T> {
  ///The unique key for this node
  final Key key;

  ///The data for this node
  final T data;

  ///The children of this node
  final List<TreeNode<T>> children;

  ///Whether or not this node is expanded. Changing this value will cause the
  ///node's expander to animate open or closed
  ValueNotifier<bool> isExpanded;

  ///Creates a tree node
  TreeNode(
    this.key,
    this.data, [
    List<TreeNode<T>>? children,
    bool isExpanded = false,
  ])  : children = children ?? List<TreeNode<T>>.empty(growable: true),
        isExpanded = ValueNotifier(isExpanded);
}
