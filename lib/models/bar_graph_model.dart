import 'package:app_6_responsive_app/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphModel {
  final String lable;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({
    required this.lable,
    required this.color,
    required this.graph,
  });
}
