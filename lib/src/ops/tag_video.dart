import 'package:flutter/widgets.dart';
import 'package:html/dom.dart' as dom;

import '../widget_factory.dart';

class TagVideo {
  final WidgetFactory wf;

  TagVideo(this.wf);

  Widget build(dom.Element e) {
    final a = e.attributes;
    if (!a.containsKey('src')) return null;
    final content = e.outerHtml;
    return wf.buildWebViewContent(
      content,
      height: a.containsKey("height") ? double.tryParse(a["height"]) : null,
      width: a.containsKey("width") ? double.tryParse(a["width"]) : null,
    );
  }
}
