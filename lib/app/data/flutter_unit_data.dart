const widgetData = [
  {
    "id": 1,
    "family": 0,
    "name": "Container",
    "nameCN": "容器组件",
    "lever": 5,
    "linkWidget": "74,85,80,78,70,123",
    "info": "用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等...",
    "image": "assets/images/widgets/Container.png"
  },
  {
    "id": 2,
    "family": 0,
    "name": "Text",
    "nameCN": "文字组件",
    "lever": 5,
    "linkWidget": "101,324",
    "info": "用于显示文字的组件。拥有的属性非常多，足够满足你的使用需求,核心样式由style属性控制。",
    "image": "assets/images/widgets/Text.png"
  },
  {
    "id": 3,
    "family": 0,
    "name": "Card",
    "nameCN": "卡片组件",
    "lever": 3,
    "linkWidget": "160",
    "info": " 基于Material组件实现,用于将单个组件卡片化。并使其具有投影效果，可加外边距，也可以自定义卡片形状。",
    "image": "assets/images/widgets/Card.png"
  },
  {
    "id": 4,
    "family": 0,
    "name": "FlutterLogo",
    "lever": 1,
    "linkWidget": "",
    "nameCN": "Flutter图标",
    "info": "用于展示Flutter图标组件。可定义颜色、尺寸、展示模式等信息，是一个非常简单的组件。",
    "image": "assets/images/widgets/FlutterLogo.png"
  },
  {
    "id": 5,
    "family": 0,
    "name": "Banner",
    "lever": 1,
    "linkWidget": "",
    "nameCN": "角标组件",
    "info": "用于角标显示的组件。可容纳一个子组件,可选择方位添加角标及信息文字，可设置颜色。",
    "image": "assets/images/widgets/Banner.png"
  },
  {
    "id": 6,
    "family": 0,
    "name": "Icon",
    "lever": 2,
    "linkWidget": "7,30,125",
    "nameCN": "图标组件",
    "info": "用于图标显示的组件。可指定图标资源、大小、颜色。非常简单，但是非常用",
    "image": "assets/images/widgets/Icon.png"
  },
  {
    "id": 7,
    "family": 0,
    "name": "ImageIcon",
    "linkWidget": "6,30,125",
    "nameCN": "容器",
    "lever": 1,
    "info": "用于将一个图片变为纯色的组件。可指定大小、颜色。",
    "image": "assets/images/widgets/ImageIcon.png"
  },
  {
    "id": 8,
    "family": 0,
    "name": "FadeInImage",
    "nameCN": "淡入图片",
    "linkWidget": "38",
    "lever": 2,
    "info": "透明渐变地加载一张图片。可指定占位图片、进退的动画曲线、时间、宽高、fit类型、对齐方式、重复方式等。",
    "image": ""
  },
  {
    "id": 9,
    "family": 0,
    "name": "CircleAvatar",
    "nameCN": "圆形组件",
    "linkWidget": "",
    "lever": 4,
    "info": "可将一张图片变成圆形，并且中间可以放置一个组件。可指定半径、前景色、背景色等。",
    "image": ""
  },
  {
    "id": 10,
    "family": 0,
    "name": "Visibility",
    "nameCN": "显隐组件",
    "linkWidget": "71",
    "lever": 3,
    "info": "控制一个组件显示或隐藏,可设置隐藏后的占位组件。与其功能相似的由OffStage组件。",
    "image": "assets/images/widgets/Visibility.png"
  },
  {
    "id": 11,
    "family": 0,
    "name": "Chip",
    "nameCN": "小条组件",
    "linkWidget": "12,13,14,15,153",
    "lever": 4,
    "info": "一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。",
    "image": "assets/images/widgets/Chip.png"
  },
  {
    "id": 12,
    "family": 0,
    "name": "ChoiceChip",
    "nameCN": "选择小条",
    "lever": 3,
    "linkWidget": "11,13,14,15,153",
    "info": "和Chip组件类似的样式，有一些选择的属性。可以指定选中时的颜色、阴影色和选择事件。",
    "image": "assets/images/widgets/ChoiceChip.png"
  },
  {
    "id": 13,
    "family": 0,
    "name": "ActionChip",
    "nameCN": "事件小条",
    "lever": 3,
    "linkWidget": "11,12,14,15,153",
    "info": "和Chip组件类似的样式，有一些点击的属性。可以指定点击时的阴影深、点击事件。",
    "image": "assets/images/widgets/ActionChip.png"
  },
  {
    "id": 14,
    "family": 0,
    "name": "InputChip",
    "nameCN": "综合小条",
    "linkWidget": "11,12,13,15,153",
    "lever": 4,
    "info": "和Chip组件类似的样式，集成了点击、删除、选择事件为一体。注意:点击事件和选择事件不能同时存在。",
    "image": "assets/images/widgets/InputChip.png"
  },
  {
    "id": 15,
    "family": 0,
    "name": "FilterChip",
    "linkWidget": "11,12,13,14,153",
    "nameCN": "过滤小条",
    "lever": 4,
    "info": "和Chip组件类似的样式，具有选中与否的属性和选中事件。当选中时左侧组件上层会被✔️遮罩。",
    "image": "assets/images/widgets/FilterChip.png"
  },
  {
    "id": 16,
    "family": 0,
    "name": "ListTile",
    "nameCN": "列表瓦片",
    "linkWidget": "162,334",
    "lever": 3,
    "info": "Flutter提供的一个通用列表条目结构，为左中右结构。相应位置可插入组件，可以很方便地应对特定的条目。",
    "image": "assets/images/widgets/ListTile.png"
  },
  {
    "id": 17,
    "family": 0,
    "name": "CheckboxListTile",
    "nameCN": "复选瓦片",
    "linkWidget": "39",
    "lever": 3,
    "info": "Flutter提供的一个通用列表条目结构，为左中结构,尾部是一个CheckBox。相应位置可插入组件，可以很方便地应对特定的条目。",
    "image": "assets/images/widgets/CheckBoxListTile.png"
  },
  {
    "id": 18,
    "family": 0,
    "name": "SwitchListTile",
    "nameCN": "切钮瓦片",
    "linkWidget": "40",
    "lever": 3,
    "info": "Flutter提供的一个通用列表条目结构，为左中结构,尾部是一个Switch。相应位置可插入组件，可以很方便地应对特定的条目。",
    "image": "assets/images/widgets/SwitchListTile.png"
  },
  {
    "id": 19,
    "family": 0,
    "name": "RadioListTile",
    "nameCN": "选钮瓦片",
    "linkWidget": "45",
    "lever": 3,
    "info": "Flutter提供的一个通用列表条目结构，为中右结构,尾部是一个Radio。相应位置可插入组件，可以很方便地应对特定的条目。",
    "image": "assets/images/widgets/RadioListTile.png"
  },
  {
    "id": 20,
    "family": 0,
    "name": "GridTileBar",
    "nameCN": "网格瓦片头",
    "linkWidget": "21",
    "lever": 2,
    "info":
    "Flutter提供的一个通用头结构，为左中右结构。相应位置可插入组件，可以很方便地应对特定的条目，相比ListTile而言，属性较少。",
    "image": "assets/images/widgets/GridTileBar.png"
  },
  {
    "id": 21,
    "family": 0,
    "name": "GridTile",
    "nameCN": "网格瓦片",
    "linkWidget": "20",
    "lever": 3,
    "info": "Flutter提供的一个通用列表条目结构，可指定头、尾、子组件，常用于网格列表。",
    "image": "assets/images/widgets/GridTile.png"
  },
  {
    "id": 22,
    "family": 0,
    "name": "UserAccountsDrawerHeader",
    "nameCN": "展示头",
    "linkWidget": "154",
    "lever": 3.8,
    "info": "Flutter提供的一个通用展示结构，相应位置可插入组件，可以很方便地应对特定的条目,常用于Drawer中。",
    "image": "assets/images/widgets/UserAccountsDrawerHeader.png"
  },
  {
    "id": 23,
    "family": 0,
    "name": "MaterialButton",
    "nameCN": "材料按钮",
    "linkWidget": "25,26,27,326,175",
    "lever": 4,
    "info":
    "基于RawMaterialButton实现的通用Material按钮。可盛放一个子组件,能定义颜色、形状等表现,可接收点击和长按事件。",
    "image": ""
  },
  {
    "id": 24,
    "family": 1,
    "name": "CupertinoButton",
    "nameCN": "iOS按钮",
    "linkWidget": "23",
    "lever": 3,
    "info": "iOS风格的按钮。可指定颜色、点击时透明度、内边距、圆角等。可接收点击事件。",
    "image": ""
  },
  {
    "id": 25,
    "family": 0,
    "name": "FlatButton",
    "nameCN": "平按钮",
    "linkWidget": "24,26,27,175",
    "lever": 3,
    "info": "无阴影的平按钮，基于MaterialButton实现，所有属性和MaterialButton类似。",
    "image": ""
  },
  {
    "id": 26,
    "family": 0,
    "name": "RaisedButton",
    "nameCN": "浮起按钮",
    "linkWidget": "24,25,27,175",
    "lever": 3,
    "info": "有阴影的浮起按钮，基于MaterialButton实现，所有属性和MaterialButton类似。",
    "image": ""
  },
  {
    "id": 27,
    "family": 0,
    "name": "OutlineButton",
    "nameCN": "线框按钮",
    "linkWidget": "23,24,25,175",
    "lever": 3,
    "info": "边框样式按钮，基于MaterialButton实现，所有属性和MaterialButton类似。",
    "image": ""
  },
  {
    "id": 28,
    "family": 0,
    "name": "FloatingActionButton",
    "nameCN": "浮动按钮",
    "linkWidget": "64",
    "lever": 4,
    "info": "浮动按钮，一般用于Scaffold中，可摆放在特定位置。可盛放一个子组件,接收点击、可定义颜色、形状等。",
    "image": ""
  },
  {
    "id": 29,
    "family": 0,
    "name": "ButtonBar",
    "nameCN": "按钮栏",
    "linkWidget": "",
    "lever": 3,
    "info": "接收组件列表，常用于盛放若干个按钮。可指定对齐方式、边距等信息。",
    "image": ""
  },
  {
    "id": 30,
    "family": 0,
    "name": "IconButton",
    "nameCN": "图标按钮",
    "linkWidget": "6",
    "lever": 2,
    "info": "可点击的图标按钮，可指定图标信息、内边距、大小、颜色等，接收点击事件。",
    "image": ""
  },
  {
    "id": 31,
    "family": 0,
    "name": "BackButton",
    "nameCN": "返回按钮",
    "linkWidget": "30",
    "lever": 1,
    "info": "一个具有返回功能的IconButton,返回图标不可更改。在iOS和Android中表现不同",
    "image": ""
  },
  {
    "id": 32,
    "family": 0,
    "name": "CloseButton",
    "nameCN": "关闭按钮",
    "linkWidget": "30",
    "lever": 1.0,
    "info": "一个具有关闭功能的IconButton,关闭图标不可更改。",
    "image": ""
  },
  {
    "id": 33,
    "family": 0,
    "name": "ToggleButtons",
    "nameCN": "切换按钮组",
    "linkWidget": "332,262",
    "lever": 4,
    "info": "接收组件列表，可指定边线、圆角、颜色等属性。根据具体逻辑，可以实现多个按钮单选或多选的需求。",
    "image": ""
  },
  {
    "id": 34,
    "family": 0,
    "name": "Divider",
    "nameCN": "水平分割线",
    "linkWidget": "35,329",
    "lever": 2,
    "info": "水平分割线，可指定颜色、高度、粗细、左右边距信息，常用与列表的item分割线。",
    "image": ""
  },
  {
    "id": 35,
    "family": 0,
    "name": "VerticalDivider",
    "nameCN": "竖直分割线",
    "linkWidget": "34,329",
    "lever": 2,
    "info": "竖直分割线，可指定颜色、宽度、粗细、上下边距信息，常用与列表的item分割线。",
    "image": ""
  },
  {
    "id": 36,
    "family": 0,
    "name": "Placeholder",
    "nameCN": "占位组件",
    "linkWidget": "",
    "lever": 1,
    "info": "一个矩形和叉叉的占位组件,可指定颜色、线宽、宽高等属性。",
    "image": ""
  },
  {
    "id": 37,
    "family": 0,
    "name": "GridPager",
    "nameCN": "网格线组件",
    "linkWidget": "",
    "lever": 2,
    "info": "可容纳一个组件，在其上绘制网格。可指定颜色、线宽、间距等属性。",
    "image": ""
  },
  {
    "id": 38,
    "family": 1,
    "name": "Image",
    "nameCN": "图片组件",
    "linkWidget": "8,87",
    "lever": 5,
    "info": "用于显示一张图片，可以从文件、内存、网络、资源里加载。可以指定适应方式、样式、颜色混合模式、重复模式等",
    "image": ""
  },
  {
    "id": 39,
    "family": 1,
    "name": "Checkbox",
    "nameCN": "复选框",
    "linkWidget": "17",
    "lever": 4,
    "info": "复选框组件，常用于配置的切换，可指定颜色，接收状态变化回调，也可指定三态。",
    "image": ""
  },
  {
    "id": 40,
    "family": 1,
    "name": "Switch",
    "nameCN": "切钮",
    "linkWidget": "41,18",
    "lever": 4,
    "info": "切换选钮,常用于配置的切换，可指定小圆颜色、图片，滑槽颜色等，接收状态变化回调。",
    "image": ""
  },
  {
    "id": 41,
    "family": 1,
    "name": "CupertinoSwitch",
    "nameCN": "iOS切钮",
    "linkWidget": "40",
    "lever": 3,
    "info": "iOS风格的切换选钮,常用于配置的切换，可指定颜色，接收状态变化回调。",
    "image": ""
  },
  {
    "id": 42,
    "family": 1,
    "name": "Slider",
    "nameCN": "滑块",
    "linkWidget": "43,44,331",
    "lever": 4,
    "info": "滑块组件，可以在指定的最大值和最小值之间拖动选择。可指定颜色、分段数及显示的标签，接收进度变化回调。",
    "image": ""
  },
  {
    "id": 43,
    "family": 1,
    "name": "CupertinoSlider",
    "linkWidget": "42",
    "nameCN": "iOS滑块",
    "lever": 3,
    "info": "iOS风格的滑块组件，可以在指定的最大值和最小值之间拖动选择。可指定颜色，接收进度变化回调。",
    "image": ""
  },
  {
    "id": 44,
    "family": 1,
    "name": "RangeSlider",
    "nameCN": "范围滑块",
    "linkWidget": "42",
    "lever": 4,
    "info": "范围滑块组件，支持两点拖动，获取之间的范围。可指定颜色、分段数及显示的标签，接收进度变化回调。",
    "image": ""
  },
  {
    "id": 45,
    "family": 1,
    "name": "Radio",
    "nameCN": "选钮",
    "linkWidget": "19",
    "lever": 4,
    "info": "由于选中和未选择状态的圆钮，多个Radio根据逻辑可以实现单选或多选的需求。可指定颜色，接收状态变化回调。",
    "image": ""
  },
  {
    "id": 46,
    "family": 1,
    "name": "CircularProgressIndicator",
    "nameCN": "圆形进度",
    "linkWidget": "47,48",
    "lever": 3,
    "info": "圆形的进度显示,可指定颜色、线宽、进度等属性。value为null时会不停旋转。",
    "image": ""
  },
  {
    "id": 47,
    "family": 1,
    "name": "LinearProgressIndicator",
    "nameCN": "水平进度",
    "linkWidget": "46,48",
    "lever": 3,
    "info": "直线型的进度显示,可指定颜色、进度等属性。value为null时会不停旋转。",
    "image": ""
  },
  {
    "id": 48,
    "family": 1,
    "name": "CupertinoActivityIndicator",
    "nameCN": "iOS指示器",
    "linkWidget": "46,47",
    "lever": 2,
    "info": "iOS样式的loading显示组件，可指定半径和是否旋转。",
    "image": ""
  },
  {
    "id": 49,
    "family": 1,
    "name": "RefreshIndicator",
    "nameCN": "刷新指示器",
    "linkWidget": "",
    "lever": 4,
    "info": "内部嵌套可滑动区域，下滑时会显示刷新图标，松手后可以执行指定的异步方法。可指定颜色、到顶端距离等属性。",
    "image": ""
  },
  {
    "id": 50,
    "family": 1,
    "name": "Tooltip",
    "nameCN": "提示工具",
    "linkWidget": "",
    "lever": 3,
    "info": "由于显示提示信息的组件，长按时显示信息。可指定边距、显示时长、文字样式、装饰灯属性。",
    "image": ""
  },
  {
    "id": 51,
    "family": 1,
    "name": "ExpandIcon",
    "nameCN": "展开图标",
    "linkWidget": "66,125",
    "lever": 1,
    "info": "一个展开按钮，点击时会自己执行旋转180的动画。可指定颜色、大小、边距，接收点击事件。",
    "image": ""
  },
  {
    "id": 52,
    "family": 1,
    "name": "ExpansionTile",
    "nameCN": "展开瓦片",
    "linkWidget": "178",
    "lever": 3,
    "info": "一个通用的展开栏,可在指定的部位安放组件,点击时会折叠显隐下方组件。接收折叠时事件。",
    "image": ""
  },
  {
    "id": 53,
    "family": 1,
    "name": "SelectableText",
    "nameCN": "可选择文字",
    "linkWidget": "2",
    "lever": 3,
    "info": "可选择的文字，可以选择、复制。可指定浮标的颜色、大小、文字样式、对齐方式等。",
    "image": ""
  },
  {
    "id": 54,
    "family": 1,
    "name": "TextField",
    "nameCN": "输入框",
    "linkWidget": "199",
    "lever": 5,
    "info": "由于输入的组件，拥有复杂的属性。可指定控制器、文字样式、装饰线、行数限制、游标样式等。接收输入变化、完成输入等事件。",
    "image": ""
  },
  {
    "id": 55,
    "family": 1,
    "name": "DropdownButton",
    "nameCN": "下拉按钮",
    "linkWidget": "181",
    "lever": 4,
    "info": "用于下拉选择的按钮，可指定图标、影深、提示等属性，接收选中变化的事件。",
    "image": ""
  },
  {
    "id": 56,
    "family": 1,
    "name": "PopupMenuButton",
    "nameCN": "菜单按钮",
    "linkWidget": "174",
    "lever": 4,
    "info": "弹出菜单栏,可指定偏移、颜色、影深、形状等属性。接收item选中的事件和取消选择事件。",
    "image": ""
  },
  {
    "id": 57,
    "family": 1,
    "name": "AppBar",
    "nameCN": "应用头栏",
    "linkWidget": "64",
    "lever": 4,
    "info": "一个应用顶部栏的通用结构，可在指定的部位放置相应的组件，常用于Scaffold组件中。",
    "image": ""
  },
  {
    "id": 58,
    "family": 1,
    "name": "TabBar",
    "nameCN": "标签栏",
    "linkWidget": "57,59,148",
    "lever": 3,
    "info": "可滑动和点击标签栏，通常用于AppBar的底部,可与TabBarView联用，实现滑页的效果。",
    "image": ""
  },
  {
    "id": 59,
    "family": 1,
    "name": "TabBarView",
    "nameCN": "标签页",
    "linkWidget": "58",
    "lever": 2,
    "info": "通常与TabBar联用，实现滑页的效果。一般不单独使用。",
    "image": ""
  },
  {
    "id": 60,
    "family": 1,
    "name": "BottomNavigationBar",
    "nameCN": "底部导航",
    "linkWidget": "61",
    "lever": 4,
    "info": "一个底部导航栏，通常用于Scaffold组件的底部，可指定颜色和模式，接受点击回调，可与PageView实现切页效果。",
    "image": ""
  },
  {
    "id": 61,
    "family": 1,
    "name": "BottomAppBar",
    "nameCN": "底部导航",
    "linkWidget": "60",
    "lever": 4,
    "info": "一个可凹嵌的底部导航栏，通常用于Scaffold组件的底部，可指定颜色、影深、形状等属性，可与PageView实现切页效果。",
    "image": ""
  },
  {
    "id": 62,
    "family": 1,
    "name": "CupertinoNavigationBar",
    "nameCN": "iOS导航",
    "linkWidget": "",
    "lever": 3,
    "info": "一个iOS风格的应用顶部栏的通用结构，可在指定的部位放置相应的组件。可指定背景色、间距、边线等属性。",
    "image": ""
  },
  {
    "id": 63,
    "family": 1,
    "name": "CupertinoTabBar",
    "nameCN": "iOS页签",
    "linkWidget": "158",
    "lever": 3,
    "info":
    "一个iOS风格的TabBar,通常用于CupertinoTabScaffold。可指定颜色、图标大小、边线等数据。接收item的点击事件。",
    "image": ""
  },
  {
    "id": 64,
    "family": 1,
    "name": "Scaffold",
    "nameCN": "脚手架",
    "linkWidget": "57,60,61",
    "lever": 4,
    "info": "一个通用app结构，包括上、下、左、右、中、浮动按钮部位，对应位置可盛放组件。",
    "image": ""
  },
  {
    "id": 65,
    "family": 1,
    "name": "MaterialApp",
    "nameCN": "Material应用",
    "linkWidget": "64",
    "lever": 5,
    "info": "Material应用的顶级组件，包含路由生成器、主题、语言、主页等属性。",
    "image": ""
  },
  {
    "id": 66,
    "family": 2,
    "name": "ClipOval",
    "nameCN": "椭圆裁剪",
    "linkWidget": "67,68,69",
    "lever": 3,
    "info": "可容纳一个子组件，并将其以宽高为长轴和短轴进行椭圆裁切。",
    "image": ""
  },
  {
    "id": 67,
    "family": 2,
    "name": "ClipRect",
    "nameCN": "矩形裁剪",
    "linkWidget": "66,68,69",
    "lever": 3,
    "info": "可容纳一个子组件，并将其进行矩形裁切。可借助SizedBox、Align、AspectRadio等限定组件进行定域。",
    "image": ""
  },
  {
    "id": 68,
    "family": 2,
    "name": "ClipRRect",
    "nameCN": "圆角矩形裁剪",
    "linkWidget": "66,67,69",
    "lever": 3,
    "info": "可容纳一个子组件，并将其进行圆角矩形裁剪。指定borderRadius作为边角半径。",
    "image": ""
  },
  {
    "id": 69,
    "family": 2,
    "name": "ClipPath",
    "nameCN": "路径裁剪",
    "linkWidget": "66,67,68",
    "lever": 5,
    "info": "可容纳一个子组件，并将其按指定路径进行裁剪。可以自定义路径形状，是一个很灵活的裁剪组件。",
    "image": ""
  },
  {
    "id": 70,
    "family": 2,
    "name": "DecoratedBox",
    "nameCN": "装饰盒",
    "linkWidget": "1",
    "lever": 4,
    "info": "可容纳一个子组件，可将其进行装饰。核心属性为decoration,可设置边线、渐变、阴影、背景图等。",
    "image": ""
  },
  {
    "id": 71,
    "family": 2,
    "name": "Offstage",
    "nameCN": "消失组件",
    "linkWidget": "10",
    "lever": 3,
    "info": "可容纳一个子组件，可更改其的消失与否。offstage属性为true表示隐藏。",
    "image": ""
  },
  {
    "id": 72,
    "family": 2,
    "name": "RotatedBox",
    "nameCN": "旋转盒",
    "linkWidget": "90",
    "lever": 2,
    "info": "可容纳一个子组件，将其沿顺时针旋转quarterTurns*90°。",
    "image": ""
  },
  {
    "id": 73,
    "family": 2,
    "name": "Opacity",
    "nameCN": "透明化",
    "linkWidget": "89,118",
    "lever": 3,
    "info": "可容纳一个子组件，将其透明度变为opacity值, opacity在0~1之间。",
    "image": ""
  },
  {
    "id": 74,
    "family": 2,
    "name": "Padding",
    "nameCN": "边距组件",
    "linkWidget": "1,191",
    "lever": 4,
    "info": "可容纳一个子组件，添加自身内边距来限制孩子组件的占位,核心属性为padding。",
    "image": ""
  },
  {
    "id": 75,
    "family": 2,
    "name": "Baseline",
    "nameCN": "基线组件",
    "linkWidget": "2",
    "lever": 2,
    "info": "可容纳一个子组件，通过控制基线高度来控制子组件的位置。一般用于文字组件。",
    "image": ""
  },
  {
    "id": 76,
    "family": 2,
    "name": "SizedBox",
    "nameCN": "定尺寸盒",
    "linkWidget": "1",
    "lever": 4,
    "info": "可容纳一个子组件，通过指定宽高限定子组件容身区域。",
    "image": ""
  },
  {
    "id": 77,
    "family": 2,
    "name": "AspectRatio",
    "nameCN": "比例盒",
    "linkWidget": "82",
    "lever": 3,
    "info": "可容纳一个子组件，通过指定宽高比aspectRatio，来限定子组件容身区域。",
    "image": ""
  },
  {
    "id": 78,
    "family": 2,
    "name": "Transform",
    "nameCN": "变换",
    "linkWidget": "1",
    "lever": 4,
    "info": "可容纳一个子组件，可以通过一个4*4的变换矩阵对子组件进行变换。",
    "image": ""
  },
  {
    "id": 79,
    "family": 2,
    "name": "LimitedBox",
    "nameCN": "限制盒",
    "linkWidget": "80",
    "lever": 3,
    "info": "可容纳一个子组件，通过指定最大宽高来限定子组件容身区域。",
    "image": ""
  },
  {
    "id": 80,
    "family": 2,
    "name": "ConstrainedBox",
    "nameCN": "约束盒",
    "linkWidget": "1,79,81",
    "lever": 3,
    "info": "可容纳一个子组件，通过指定最大、最小宽高,来限定子组件容身区域。",
    "image": ""
  },
  {
    "id": 81,
    "family": 2,
    "name": "UnconstrainedBox",
    "nameCN": "约束盒",
    "linkWidget": "80",
    "lever": 3,
    "info": "可容纳一个子组件，并解除该组件的所有区域约束,展现自我尺寸。",
    "image": ""
  },
  {
    "id": 82,
    "family": 2,
    "name": "FractionallySizedBox",
    "nameCN": "分率盒",
    "linkWidget": "77",
    "lever": 3,
    "info": "可容纳一个子组件，指定宽高分率,限定子组件区域为父容器宽高*各分率，及对齐方式alignment。",
    "image": ""
  },
  {
    "id": 83,
    "family": 2,
    "name": "OverflowBox",
    "nameCN": "溢出盒",
    "linkWidget": "84",
    "lever": 4,
    "info": "可容纳一个子组件，且子组件允许溢出父组件区域，可以指定宽高的最大最小区域进行限定，拥有对齐属性alignment。",
    "image": ""
  },
  {
    "id": 84,
    "family": 2,
    "name": "SizedOverflowBox",
    "nameCN": "尺寸溢出盒",
    "linkWidget": "83",
    "lever": 2.8,
    "info": "可容纳一个子组件，且子组件允许溢出父组件区域，可以通过size属性对子组件进行偏移，拥有对齐属性alignment。",
    "image": ""
  },
  {
    "id": 85,
    "family": 2,
    "name": "Align",
    "nameCN": "对齐组件",
    "linkWidget": "1,86,111,120",
    "lever": 5,
    "info": "可容纳一个子组件，可以通过alignment让子组件，定位在父组件宽高的任何指定分率出。",
    "image": ""
  },
  {
    "id": 86,
    "family": 2,
    "name": "Center",
    "nameCN": "居中组件",
    "linkWidget": "85",
    "lever": 3,
    "info": "可容纳一个子组件，并使其居中于父组件，是Align组件的一种精简模式。",
    "image": ""
  },
  {
    "id": 87,
    "family": 2,
    "name": "FittedBox",
    "nameCN": "适应盒",
    "linkWidget": "38",
    "lever": 4,
    "info": "可容纳一个子组件，使用fit属性决定子组件区域相当于父组件的适应模式，拥有对齐属性alignment。",
    "image": ""
  },
  {
    "id": 88,
    "family": 2,
    "name": "ColorFiltered",
    "nameCN": "滤色器",
    "linkWidget": "277,38",
    "lever": 5,
    "info": "可容纳一个子组件，可以并将组件按照29中叠色模式和任意组件混合，强大到我不知道该说什么好。app一键全灰了解一下。",
    "image": ""
  },
  {
    "id": 89,
    "family": 2,
    "name": "FadeTransition",
    "nameCN": "透明变换",
    "linkWidget": "73,118",
    "lever": 3,
    "info": "可容纳一个子组件，并使其进行透明度渐变动画，需要提供动画器opacity。",
    "image": ""
  },
  {
    "id": 90,
    "family": 1,
    "name": "RotationTransition",
    "nameCN": "旋转变换",
    "linkWidget": "72",
    "lever": 3,
    "info": "可容纳一个子组件，并使其进行旋转动画，需要提供动画器turns，拥有alignment属性。",
    "image": ""
  },
  {
    "id": 91,
    "family": 1,
    "name": "ScaleTransition",
    "nameCN": "缩放变换",
    "linkWidget": "",
    "lever": 3,
    "info": "可容纳一个子组件，并使其进行缩放动画，需要提供动画器scale，拥有alignment属性。",
    "image": ""
  },
  {
    "id": 92,
    "family": 1,
    "name": "SizeTransition",
    "nameCN": "尺寸变换",
    "linkWidget": "201",
    "lever": 3,
    "info": "可容纳一个子组件，并使其进行尺寸动画，需要提供动画器sizeFactor，可指定尺寸变化轴及轴向的axisAlignment。",
    "image": ""
  },
  {
    "id": 93,
    "family": 1,
    "name": "PositionedTransition",
    "nameCN": "位置变换",
    "linkWidget": "97",
    "lever": 3,
    "info": "只能用于Stack中,可容纳一个子组件，让其在两个矩形间进行位置动画，需要提供动画器rect。",
    "image": ""
  },
  {
    "id": 94,
    "family": 3,
    "name": "Flex",
    "nameCN": "弹性布局",
    "linkWidget": "95,96,106,107,109",
    "lever": 5,
    "info":
    "Row和Column的父类,Flutter中最强大的布局方式。可容纳多个组件，可与Spacer、Expended、Flexible组件联用进行灵活布局",
    "image": ""
  },
  {
    "id": 95,
    "family": 3,
    "name": "Row",
    "nameCN": "行布局",
    "linkWidget": "94,96",
    "lever": 4,
    "info": "排布方向为横向的Flex布局，可容纳多个组件。其他属性全部一致，详见Flex。",
    "image": ""
  },
  {
    "id": 96,
    "family": 3,
    "name": "Column",
    "nameCN": "列布局",
    "linkWidget": "94,95",
    "lever": 4,
    "info": "排布方向为竖向的Flex布局，可容纳多个组件。其他属性全部一致，详见Flex。",
    "image": ""
  },
  {
    "id": 97,
    "family": 3,
    "name": "Stack",
    "nameCN": "堆叠布局",
    "linkWidget": "94,95,161",
    "lever": 5,
    "info": "可容纳多个组件,以堆叠的方式摆放子组件，后者居上。拥有alignment属性，可与Positioned组件联合使用，精确定位。",
    "image": ""
  },
  {
    "id": 98,
    "family": 3,
    "name": "Wrap",
    "nameCN": "包裹布局",
    "linkWidget": "94,95",
    "lever": 5,
    "info": "可容纳多个组件,按照指定方向依次排布，可以很方便处理孩子的间距,当越界时可以自动换行。拥有主轴和交叉轴的对齐方式，比较灵活。",
    "image": ""
  },
  {
    "id": 99,
    "family": 3,
    "name": "Flow",
    "nameCN": "流动布局",
    "linkWidget": "98,94",
    "lever": 5,
    "info": "可容纳多个组件, 需要自己制定排布的代理，可以高强度自定义组件的排布，实现普通布局无法达到的效果。布局王者，当之无愧。",
    "image": ""
  },
  {
    "id": 100,
    "family": 1,
    "name": "AnimatedCrossFade",
    "nameCN": "组件切换",
    "linkWidget": "116",
    "lever": 5,
    "info": "将两个组件切换时呈现动画效果，可指定动画曲线、时长、对齐方式等属性。是一个非常有用的组件。",
    "image": ""
  },
  {
    "id": 101,
    "family": 3,
    "name": "RichText",
    "nameCN": "富文本",
    "linkWidget": "2",
    "lever": 5,
    "info": "可以容纳多种文字样式或各种组件的富文本组件，应用较为广泛。",
    "image": ""
  },
  {
    "id": 102,
    "family": 0,
    "name": "DataTable",
    "nameCN": "数据表格",
    "linkWidget": "110",
    "lever": 3,
    "info": "一个表格组件，可以制订逻辑进行点击、修改、排序等操作。",
    "image": ""
  },
  {
    "id": 103,
    "family": 1,
    "name": "Draggable",
    "nameCN": "可拖拽组件",
    "linkWidget": "104,105",
    "lever": 4,
    "info": "可以让组件在界面上任意拖拽,可存放一个泛型T的数据。通常和DragTarget组合使用，来完成拖拽效果。",
    "image": ""
  },
  {
    "id": 104,
    "family": 1,
    "name": "DragTarget",
    "nameCN": "拖拽目标",
    "linkWidget": "103,105",
    "lever": 4,
    "info": "一个拖拽的目标区域，可接收Draggable组件的信息。可以获取拖拽时的回调。",
    "image": ""
  },
  {
    "id": 105,
    "family": 1,
    "name": "LongPressDraggable",
    "nameCN": "拖拽目标",
    "linkWidget": "103,104",
    "lever": 4,
    "info": "长按时让组件在界面上任意拖拽,可存放一个泛型T的数据。通常和DragTarget组合使用，来完成拖拽效果。",
    "image": ""
  },
  {
    "id": 106,
    "family": 5,
    "name": "Expanded",
    "nameCN": "延展组件",
    "linkWidget": "94,109",
    "lever": 4,
    "info": "父类是Flexible，相当于一个fit类型为tight的Flexible组件。可嵌套孩子利用剩余空间对占位空间进行延展。",
    "image": ""
  },
  {
    "id": 107,
    "family": 0,
    "name": "Spacer",
    "nameCN": "空间组件",
    "linkWidget": "94",
    "lever": 3,
    "info": "只能用于Row、Column和Flex布局中,可利用剩余空间进行占位，使用flex属性可以给多个Spacer按比例分配空间。",
    "image": ""
  },
  {
    "id": 108,
    "family": 5,
    "name": "Positioned",
    "nameCN": "定位组件",
    "linkWidget": "97,159,121",
    "lever": 3,
    "info": "只能用于Stack中，可以指定左上右下的距离对某个组件进行位置精确安放。",
    "image": ""
  },
  {
    "id": 109,
    "family": 5,
    "name": "Flexible",
    "nameCN": "灵活组件",
    "linkWidget": "94,106",
    "lever": 3,
    "info": "只能用于只能用于Row、Column和Flex布局中，可嵌套孩子利用剩余空间对占位空间进行延展,也可指定适应类型。",
    "image": ""
  },
  {
    "id": 110,
    "family": 6,
    "name": "Table",
    "nameCN": "表格组件",
    "linkWidget": "102",
    "lever": 4,
    "info": "用于展示表格的组件,可指定边线、列宽、文字方向等属性,核心对象类型是TableRow。",
    "image": ""
  },
  {
    "id": 111,
    "family": 1,
    "name": "AlignTransition",
    "nameCN": "对齐变换",
    "linkWidget": "85,120",
    "lever": 3,
    "info": "AnimatedWidget的子类,使用Alignment类型的动画器让子组件在两个Alignment对象之间进行过渡动画。",
    "image": ""
  },
  {
    "id": 112,
    "family": 1,
    "name": "SlideTransition",
    "nameCN": "滑动变换",
    "linkWidget": "",
    "lever": 3,
    "info": "AnimatedWidget的子类,使用Offset类型的动画器让子组件在两个Offset对象之间进行过渡动画。",
    "image": ""
  },
  {
    "id": 113,
    "family": 1,
    "name": "DecoratedBoxTransition",
    "nameCN": "装饰变换",
    "linkWidget": "70",
    "lever": 3,
    "info": "AnimatedWidget的子类,使用Decorated类型的动画器让子组件在两个Decorated对象之间进行过渡动画。",
    "image": ""
  },
  {
    "id": 114,
    "family": 1,
    "name": "DefaultTextStyleTransition",
    "nameCN": "文字样式变换",
    "linkWidget": "124,324",
    "lever": 3,
    "info": "AnimatedWidget的子类,使用TextStyle类型的动画器让文字组件在两个TextStyle对象之间进行过渡动画。",
    "image": ""
  },
  {
    "id": 115,
    "family": 1,
    "name": "RelativePositionedTransition",
    "nameCN": "矩形位置变换",
    "linkWidget": "70",
    "lever": 3,
    "info": "AnimatedWidget的子类,使用Rect类型的动画器让子组件在两个Rect对象之间进行过渡动画。",
    "image": ""
  },
  {
    "id": 116,
    "family": 1,
    "name": "AnimatedSwitcher",
    "nameCN": "动画切换",
    "linkWidget": "100",
    "lever": 4,
    "info": "当子组件变化时执行动画，需要指定子组件的key进行标识。动画方式可以自定义,能指定动画时长、动画曲线等属性。",
    "image": ""
  },
  {
    "id": 117,
    "family": 1,
    "name": "AnimatedList",
    "nameCN": "动画列表",
    "linkWidget": "162",
    "lever": 3,
    "info": "强化版的ListView,可以对item进行动画处理。比如在添加、删除是item的动画。",
    "image": ""
  },
  {
    "id": 118,
    "family": 1,
    "name": "AnimatedOpacity",
    "nameCN": "透明动画",
    "linkWidget": "89,73",
    "lever": 3,
    "info": "能让子组件进行Opacity(透明度)动画，可指定时长和曲线，有动画结束事件。",
    "image": ""
  },
  {
    "id": 119,
    "family": 1,
    "name": "AnimatedPadding",
    "nameCN": "边距动画",
    "linkWidget": "74",
    "lever": 3,
    "info": "能让子组件进行Padding(内边距)动画，可指定时长和曲线，有动画结束事件。",
    "image": ""
  },
  {
    "id": 120,
    "family": 1,
    "name": "AnimatedAlign",
    "nameCN": "对齐动画",
    "linkWidget": "85,111",
    "lever": 3,
    "info": "能让子组件进行Align(对齐)动画，可指定时长和曲线，有动画结束事件。",
    "image": ""
  },
  {
    "id": 121,
    "family": 1,
    "name": "AnimatedPositioned",
    "nameCN": "定位动画",
    "linkWidget": "108,93,122",
    "lever": 3,
    "info": "能让子组件进行Positioned(定位)动画，可指定时长和曲线，有动画结束事件。只能用于Stack之中。",
    "image": ""
  },
  {
    "id": 122,
    "family": 1,
    "name": "AnimatedPositionedDirectional",
    "nameCN": "方向定位动画",
    "linkWidget": "121,159",
    "lever": 3,
    "info":
    "能让子组件进行PositionedDirectional(方向定位)动画，可指定时长和曲线，有动画结束事件。只能用于Stack之中。",
    "image": ""
  },
  {
    "id": 123,
    "family": 1,
    "name": "AnimatedContainer",
    "nameCN": "容器动画",
    "linkWidget": "1",
    "lever": 5,
    "info":
    "集合alignment、padding、color、decoration、width、height、constraints、margin、transform于一身，这些属性皆可动画，可指定时长和曲线，有动画结束事件。",
    "image": ""
  },
  {
    "id": 124,
    "family": 1,
    "name": "AnimatedDefaultTextStyle",
    "nameCN": "容器动画",
    "linkWidget": "114,324",
    "lever": 3,
    "info": "能让子文字组件进行TextStyle(文字样式)动画，可指定时长和曲线，有动画结束事件。",
    "image": ""
  },
  {
    "id": 125,
    "family": 0,
    "name": "AnimatedIcon",
    "nameCN": "图标动画",
    "linkWidget": "6",
    "lever": 3,
    "info": "使用AnimatedIcons的图标数据，可以根据一个动画控制器来使图标进行动画效果。可指定图标大小、颜色等。",
    "image": ""
  },
  {
    "id": 126,
    "family": 0,
    "name": "Dialog",
    "nameCN": "对话框",
    "linkWidget": "",
    "lever": 2,
    "info": "最简易的对话框面板,包含一个内容组件,可指定影深、背景色、形状等属性。",
    "image": ""
  },
  {
    "id": 127,
    "family": 0,
    "name": "AlertDialog",
    "nameCN": "弹出对话框",
    "linkWidget": "129",
    "lever": 3,
    "info": "一个通用的对话框结构，可指定头、中、尾处的组件。拥有标题、内容的文字样式和边距，影深、形状等属性。",
    "image": ""
  },
  {
    "id": 128,
    "family": 0,
    "name": "SimpleDialog",
    "nameCN": "简单对话框",
    "linkWidget": "133",
    "lever": 3,
    "info":
    "一个简单的对话框结构，可指定头、中处的组件。拥有拥有标题、内容的文字样式和边距，影深、形状等属性。常与SimpleDialogOption联用。",
    "image": ""
  },
  {
    "id": 129,
    "family": 0,
    "name": "CupertinoAlertDialog",
    "nameCN": "iOS对话框",
    "linkWidget": "127",
    "lever": 3,
    "info": "iOS风格的通用的对话框结构，可指定头、中、尾处的组件。",
    "image": ""
  },
  {
    "id": 130,
    "family": 0,
    "name": "AboutDialog",
    "nameCN": "弹出对话框",
    "linkWidget": "193",
    "lever": 1,
    "info": "应用的简介对话框，可指定应用图标、应用名、应用版本号等信息和内部的子组件列表，点击左侧按钮可以跳转到证书页。",
    "image": ""
  },
  {
    "id": 131,
    "family": 0,
    "name": "CupertinoActionSheet",
    "nameCN": "iOS行为单",
    "linkWidget": "132",
    "lever": 3,
    "info": "iOS风格的弹出选择结构，可放多的按钮，一般与CupertinoActionSheetAction联用。",
    "image": ""
  },
  {
    "id": 132,
    "family": 0,
    "name": "CupertinoActionSheetAction",
    "nameCN": "iOS行为单按键",
    "linkWidget": "131",
    "lever": 1,
    "info": "一个按钮，应用场景很少，通常用于CupertinoActionSheet中，接收点击事件。",
    "image": ""
  },
  {
    "id": 133,
    "family": 0,
    "name": "SimpleDialogOption",
    "nameCN": "简单对话框选项",
    "linkWidget": "128",
    "lever": 1,
    "info": "一个按钮，应用场景很少，通常用于SimpleDialog中，接收点击事件。",
    "image": ""
  },
  {
    "id": 134,
    "family": 0,
    "name": "DayPicker",
    "nameCN": "日期选择器",
    "linkWidget": "135,136",
    "lever": 3,
    "info": "日期的选择组件，可指定当前日期、选中日期、展示月份等，接收日期选中事件。",
    "image": ""
  },
  {
    "id": 135,
    "family": 1,
    "name": "MonthPicker",
    "nameCN": "月份选择器",
    "linkWidget": "134,136",
    "lever": 3,
    "info": "月份的选择组件，自带上下月切换的监听。可指定选择的日期范围、选中日期等，接收日期选中事件。",
    "image": ""
  },
  {
    "id": 136,
    "family": 1,
    "name": "YearPicker",
    "nameCN": "年份选择器",
    "linkWidget": "134,135",
    "lever": 3,
    "info": "年份的选择组件，长相比较寒酸。可指定选择的日期范围、选中日期等，接收每份选中事件",
    "image": ""
  },
  {
    "id": 137,
    "family": 1,
    "name": "CupertinoDatePicker",
    "nameCN": "iOS日期选择器",
    "linkWidget": "138",
    "lever": 3,
    "info": "高大上的滑滚日期选择器，可指定选择的类型、日期范围等，接收日期选中事件。",
    "image": ""
  },
  {
    "id": 138,
    "family": 1,
    "name": "CupertinoTimerPicker",
    "nameCN": "iOS时间选择器",
    "linkWidget": "137",
    "lever": 3,
    "info": "高大上的滑滚时间选择器，可指定选择的类型、初始时间、背景色等，接收时间选中事件。",
    "image": ""
  },
  {
    "id": 139,
    "family": 1,
    "name": "CupertinoPicker",
    "nameCN": "iOS选择器",
    "linkWidget": "179",
    "lever": 3,
    "info": "高大上的柱面滑动选择器，精妙十足，可指定很多配置属性，接收滑动时选中事件。",
    "image": ""
  },
  {
    "id": 140,
    "family": 1,
    "name": "SnackBar",
    "nameCN": "信息提示条",
    "linkWidget": "141,142",
    "lever": 4,
    "info":
    "作为组件来说是一个简单的结构组件，可指定形状、影深、背景色等。一般通过ScaffoldState的showSnackBar方法从底部弹出。",
    "image": ""
  },
  {
    "id": 141,
    "family": 1,
    "name": "SnackBarAction",
    "nameCN": "信息提示条按钮",
    "linkWidget": "140",
    "lever": 1,
    "info": "一般只用于SnackBar中，接受点击事件。点击一次后该按钮就会被禁用，可以指定颜色和禁用时颜色。",
    "image": ""
  },
  {
    "id": 142,
    "family": 1,
    "name": "BottomSheet",
    "nameCN": "底部抽屉",
    "linkWidget": "140",
    "lever": 4,
    "info":
    "作为组件来说是一个简单的结构组件,可指定形状、影深、背景色、内部组件构造器等。一般通过ScaffoldState的showBottomSheet方法从底部弹出。",
    "image": ""
  },
  {
    "id": 143,
    "family": 1,
    "name": "CupertinoContextMenu",
    "nameCN": "ios弹出菜单",
    "linkWidget": "144",
    "lever": 5,
    "info": "一个华丽的iOS风格按钮弹出框,长按时会以动画的形式弹出菜单面板，通常和CupertinoContextMenuAction联用。",
    "image": ""
  },
  {
    "id": 144,
    "family": 1,
    "name": "CupertinoContextMenuAction",
    "nameCN": "ios弹出菜单按钮",
    "linkWidget": "143",
    "lever": 1,
    "info": "一般只用于CupertinoContextMenu中的点击按钮。可指定孩子和尾部图标，接收点击事件。",
    "image": ""
  },
  {
    "id": 145,
    "family": 1,
    "name": "LicensePage",
    "nameCN": "证书页",
    "linkWidget": "130,193",
    "lever": 1,
    "info": "应用的证书页,可指定应用图标、应用名、应用版本号等信息，其他由Flutter自动生成。",
    "image": ""
  },
  {
    "id": 146,
    "family": 0,
    "name": "GestureDetector",
    "nameCN": "手势监听器",
    "linkWidget": "147,150",
    "lever": 5,
    "info": "组件手势事件的检测器,可接受点击、长按、双击，按下、松开、移动等事件，并可以获取触点信息，居家旅行必备组件。",
    "image": ""
  },
  {
    "id": 147,
    "family": 0,
    "name": "Listener",
    "nameCN": "事件监听器",
    "linkWidget": "146",
    "lever": 3,
    "info": "组件事件的监听器,可接受按下、松开、移动、取消等事件。较GestureDetector比较原始，可获取的信息也更多。",
    "image": ""
  },
  {
    "id": 148,
    "family": 0,
    "name": "Tab",
    "nameCN": "标签",
    "linkWidget": "58",
    "lever": 1,
    "info": "一般用于TabBar中的item，上下结构，可指定图标和一个内容组件。",
    "image": ""
  },
  {
    "id": 149,
    "family": 1,
    "name": "InkResponse",
    "nameCN": "水波纹响应",
    "linkWidget": "150,152",
    "lever": 1,
    "info": "水波纹的点击效果，接收点击、双击、长按、取消、高亮变化事件，可指定水波纹颜色、半径、高亮形状等属性。",
    "image": ""
  },
  {
    "id": 150,
    "family": 1,
    "name": "InkWell",
    "nameCN": "水波纹",
    "linkWidget": "149,152",
    "lever": 4,
    "info": "InkResponse的子类，基本属性同InkResponse。一个矩形区域的水波纹，可以知道圆角半径，边线形状等。",
    "image": ""
  },
  {
    "id": 151,
    "family": 1,
    "name": "TableRowInkWell",
    "nameCN": "表格水波纹",
    "linkWidget": "110",
    "lever": 1,
    "info": "只能用于Table的水波纹，接收点击、双击、长按、高亮变化事件，水波纹会作用于表格的一行。",
    "image": ""
  },
  {
    "id": 152,
    "family": 1,
    "name": "Ink",
    "nameCN": "水波",
    "linkWidget": "149,150",
    "lever": 3,
    "info": "使InkWell和InkResponse的水波纹有效,用于绘制图像或其他装饰的Material组件。",
    "image": ""
  },
  {
    "id": 153,
    "family": 1,
    "name": "RawChip",
    "nameCN": "原生小条",
    "linkWidget": "11,12,13,14,15",
    "lever": 5,
    "info":
    "各自Chip组件的始祖，拥有各自Chip表现的能力，支持选中、点击、删除等事件。详见Chip、FilterChip、ActionChip、InputChip、ChoiceChip。",
    "image": ""
  },
  {
    "id": 154,
    "family": 0,
    "name": "Drawer",
    "nameCN": "滑页栏",
    "linkWidget": "64,155",
    "lever": 2,
    "info": "一般用于Scaffold中的draw和endDraw属性作为左右的滑页栏，可以容纳一个子组件，能指定影深。",
    "image": ""
  },
  {
    "id": 155,
    "family": 0,
    "name": "DrawerHeader",
    "nameCN": "滑页栏",
    "linkWidget": "154",
    "lever": 2,
    "info": "一般用于Drawer中，作为滑页栏的头部。可以指定内外边距、装饰、子组件等属性。",
    "image": ""
  },
  {
    "id": 156,
    "family": 1,
    "name": "CupertinoApp",
    "nameCN": "iOS应用",
    "linkWidget": "157,158",
    "lever": 4,
    "info": "iOS风格应用的顶级组件，包含路由生成器、主题、语言、主页等属性。",
    "image": ""
  },
  {
    "id": 157,
    "family": 1,
    "name": "CupertinoPageScaffold",
    "nameCN": "iOS页面脚手架",
    "linkWidget": "62",
    "lever": 3,
    "info": "iOS风格的页面布局脚手架结构,可指定顶部的导航栏和页面背景色。",
    "image": ""
  },
  {
    "id": 158,
    "family": 1,
    "name": "CupertinoTabScaffold",
    "nameCN": "iOS页签脚手架",
    "linkWidget": "63",
    "lever": 3,
    "info": "iOS风格的页面布局脚手架结构,可指定最底部的导航切换栏可主体内容页。",
    "image": ""
  },
  {
    "id": 159,
    "family": 0,
    "name": "PositionedDirectional",
    "nameCN": "方向定位",
    "linkWidget": "108,122",
    "lever": 3,
    "info": "和Positioned组件功能一样，属性名不同。只能用于Stack中，可以指定左上右下的距离对某个组件进行位置精确安放。",
    "image": ""
  },
  {
    "id": 160,
    "family": 1,
    "name": "Material",
    "nameCN": "材料组件",
    "linkWidget": "3",
    "lever": 5,
    "info": "Material风格组件的领军人物，灵魂核心。可指定颜色、影深、类型、阴影颜色、形状等属性。",
    "image": ""
  },
  {
    "id": 161,
    "family": 3,
    "name": "IndexedStack",
    "nameCN": "索引堆叠",
    "linkWidget": "97",
    "lever": 4,
    "info": "Stack组件的子类,可以堆叠多个组件，并通过index来指定展示的组件索引，其余的会被隐藏。",
    "image": ""
  },
  {
    "id": 162,
    "family": 0,
    "name": "ListView",
    "nameCN": "列表组件",
    "linkWidget": "16,163",
    "lever": 5,
    "info":
    "列表显示的领军人物，容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。",
    "image": ""
  },
  {
    "id": 163,
    "family": 0,
    "name": "GridView",
    "nameCN": "网格组件",
    "linkWidget": "21,162",
    "lever": 5,
    "info":
    "容纳多个组件，并以网格的方式。可以通过count、extent、custom、builder等构造。有内边距、是否反向、滑动控制器等属性。",
    "image": ""
  },
  {
    "id": 164,
    "family": 0,
    "name": "SingleChildScrollView",
    "nameCN": "单子滑动",
    "linkWidget": "",
    "lever": 5,
    "info": "使一个组件具有滑动的效果，可指定滑动的方向、是否反向、滑动控制器等属性。",
    "image": ""
  },
  {
    "id": 165,
    "family": 0,
    "name": "PageView",
    "nameCN": "滑页",
    "linkWidget": "",
    "lever": 5,
    "info": "容纳多个组件页面，可对它们进行滑动切换，可指定滑动的方向、是否反向、滑动控制器等属性。",
    "image": ""
  },
  {
    "id": 166,
    "family": 2,
    "name": "CustomPaint",
    "nameCN": "绘制组件",
    "linkWidget": "",
    "lever": 5,
    "info": "通过CustomPainter进行绘制，可实现一些复杂的自定义绘制组件，是Flutter中自定义组件的灵魂人物。",
    "image": ""
  },
  {
    "id": 167,
    "family": 5,
    "name": "MediaQuery",
    "nameCN": "媒体查询",
    "linkWidget": "",
    "lever": 4,
    "info": "可通过MediaQuery.of来获取屏幕尺寸、设备密度、文字缩放比例、边距等信息。",
    "image": ""
  },
  {
    "id": 168,
    "family": 0,
    "name": "Theme",
    "nameCN": "主题",
    "linkWidget": "65,169",
    "lever": 4,
    "info": "可通过Theme.of获取ThemeData对象。也可以指定主题应用于Theme的后代组件。",
    "image": ""
  },
  {
    "id": 169,
    "family": 0,
    "name": "CupertinoTheme",
    "nameCN": "iOS主题",
    "linkWidget": "156,168",
    "lever": 3,
    "info":
    "可通过CupertinoTheme.of获取CupertinoThemeData对象。也可以指定主题应用于CupertinoTheme的后代组件。",
    "image": ""
  },
  {
    "id": 170,
    "family": 1,
    "name": "WillPopScope",
    "nameCN": "返回拦截",
    "linkWidget": "",
    "lever": 5,
    "info": "当一个界面中有WillPopScope组件时，在页面返回时会触发回调，决定是否返回。可用于二次确认退出的场景。",
    "image": ""
  },
  {
    "id": 171,
    "family": 1,
    "name": "Hero",
    "nameCN": "共享动画",
    "linkWidget": "28",
    "lever": 5,
    "info": "可指定标签名，两个界面跳转时具有相同标签的组件会进行共享动画。一个界面中不能存在两个同名的Hero标签",
    "image": ""
  },
  {
    "id": 172,
    "family": 1,
    "name": "FutureBuilder",
    "nameCN": "异步构造器",
    "linkWidget": "173",
    "lever": 5,
    "info":
    "可指定一个Future对象，能够监听异步执行的状态，并在构造器中根据状态构建不同的界面。注意该Future对象不能和FutureBuilder同时创建，否则可能过渡刷新。",
    "image": ""
  },
  {
    "id": 173,
    "family": 1,
    "name": "StreamBuilder",
    "nameCN": "流构造器",
    "linkWidget": "172",
    "lever": 5,
    "info": "可指定一个stream对象，能够监听异步执行的状态，并在构造器中根据状态构建不同的界面。",
    "image": ""
  },
  {
    "id": 174,
    "family": 1,
    "name": "PopupMenuDivider",
    "nameCN": "弹出菜单分割线",
    "linkWidget": "56,34",
    "lever": 1,
    "info": "PopupMenuButton的分割线,一般不单独使用，可指定高度。",
    "image": ""
  },
  {
    "id": 175,
    "family": 1,
    "name": "RawMaterialButton",
    "nameCN": "原始按钮",
    "linkWidget": "23,25,26,27",
    "lever": 5,
    "info": "原始的Material按钮,按钮界的幕后大佬，可接受点击、长按、高亮变化事件，可指定颜色、形状。影深、内边距等属性。",
    "image": ""
  },
  {
    "id": 176,
    "family": 1,
    "name": "Dismissible",
    "nameCN": "滑动消失",
    "linkWidget": "162",
    "lever": 4,
    "info": "滑动时可显示底部组件，可指定滑动的方向和交叉轴的偏移量。接收确认消失和消失时的回调。",
    "image": ""
  },
  {
    "id": 177,
    "family": 1,
    "name": "ReorderableListView",
    "nameCN": "可重排序列表",
    "linkWidget": "162",
    "lever": 4,
    "info": "可以进行长按排序的ListView，可指定滑动方向、是否反向、滑动控制器等属性。",
    "image": ""
  },
  {
    "id": 178,
    "family": 1,
    "name": "ExpansionPanelList",
    "nameCN": "展开列表",
    "linkWidget": "52",
    "lever": 3,
    "info": "可展开的列表组件，可根据逻辑来实现单展开或多展开。可指定展开动画时长，接收展开回调",
    "image": ""
  },
  {
    "id": 179,
    "family": 1,
    "name": "ListWheelScrollView",
    "nameCN": "滚轮列表",
    "linkWidget": "139",
    "lever": 4,
    "info": "高大上的柱面滑动列表,精妙十足，可指定item高度、透视、挤压等属性，接收滑动时选中事件。",
    "image": ""
  },
  {
    "id": 180,
    "family": 5,
    "name": "ScrollConfiguration",
    "nameCN": "ios菜单按钮",
    "linkWidget": "162,163,164",
    "lever": 3,
    "info": "需要包裹一个可滑动的组件，并通过behavior属性控制滑动的效果，可以去除滑动的蓝色阴影等。",
    "image": ""
  },
  {
    "id": 181,
    "family": 5,
    "name": "DropdownButtonHideUnderline",
    "nameCN": "下拉按钮隐藏线",
    "linkWidget": "55",
    "lever": 1,
    "info": "用于去除DropdownButton的下划线，本身没有什么应用价值。",
    "image": ""
  },
  {
    "id": 182,
    "family": 1,
    "name": "Overlay",
    "nameCN": "悬浮组件",
    "linkWidget": "",
    "lever": 5,
    "info": "可以将组件在全应用中进行悬浮显示，能够添加或移除组件，它们有独立管理的栈。",
    "image": ""
  },
  {
    "id": 183,
    "family": 4,
    "name": "CustomScrollView",
    "nameCN": "通用滑动视图",
    "linkWidget": "184,185,188",
    "lever": 5,
    "info": "一个通用的滑动结构，可以指定滑动方向、是否反向、滑动控制器等属性。其中包含的子组件们必须是Sliver家族。",
    "image": ""
  },
  {
    "id": 184,
    "family": 4,
    "name": "SliverAppBar",
    "nameCN": "Sliver头部栏",
    "linkWidget": "183,196",
    "lever": 4,
    "info": "Sliver家族的顶部栏通用结构，可以指定左中右组件、收缩空间、影深、固定模式、背景色等属性。",
    "image": ""
  },
  {
    "id": 185,
    "family": 4,
    "name": "SliverList",
    "nameCN": "Sliver列表",
    "linkWidget": "183,186,187",
    "lever": 5,
    "info": "Sliver家族的列表组件，通过指定delegate构造子组件。通常用于CustomScrollView中。",
    "image": ""
  },
  {
    "id": 186,
    "family": 4,
    "name": "SliverFixedExtentList",
    "nameCN": "Sliver固定延展列表",
    "linkWidget": "183,185,187",
    "lever": 3,
    "info": "Sliver家族的列表组件，通过delegate构造子组件，可以指定item的高度。通常用于CustomScrollView中。",
    "image": ""
  },
  {
    "id": 187,
    "family": 4,
    "name": "SliverFillViewport",
    "nameCN": "Sliver填充视图列表",
    "linkWidget": "183,185,186",
    "lever": 3,
    "info": "Sliver家族的列表组件，通过delegate构造子组件，item的高度会填空视口，可以指定是否的分率。",
    "image": ""
  },
  {
    "id": 188,
    "family": 4,
    "name": "SliverGird",
    "nameCN": "Sliver网格",
    "linkWidget": "183",
    "lever": 4,
    "info":
    "Sliver家族的网格列表组件，和GirdView类似，通过count和extent构造。通常用于CustomScrollView中。",
    "image": ""
  },
  {
    "id": 189,
    "family": 4,
    "name": "SliverToBoxAdapter",
    "nameCN": "Sliver适配器",
    "linkWidget": "183",
    "lever": 4,
    "info": "可以容纳一个普通的组件，并将其转化成Sliver家族组件的适配器。",
    "image": ""
  },
  {
    "id": 190,
    "family": 4,
    "name": "SliverPersistentHeader",
    "nameCN": "Sliver存留头",
    "linkWidget": "183",
    "lever": 5,
    "info": "通常用于CustomScrollView中，可以让一个组件在滑动中停留在顶部，不会滑动消失。",
    "image": ""
  },
  {
    "id": 191,
    "family": 4,
    "name": "SliverPadding",
    "nameCN": "Sliver内间距",
    "linkWidget": "74",
    "lever": 3,
    "info": "可容纳一个Sliver家族的子组件，添加自身内边距来限制孩子组件的占位,核心属性为padding。",
    "image": ""
  },
  {
    "id": 192,
    "family": 4,
    "name": "SliverOpacity",
    "nameCN": "Sliver透明度",
    "linkWidget": "73",
    "lever": 3,
    "info": "可容纳一个Sliver家族的子组件，并通过opacity来指定子组件的透明度。",
    "image": ""
  },
  {
    "id": 193,
    "family": 0,
    "name": "AboutListTile",
    "nameCN": "关于应用条目",
    "linkWidget": "130,145",
    "lever": 3,
    "info": "一个点击条目，点击时可以弹出应用相关信息，可指定应用图标、应用名、应用版本号等信息和内部的子组件列表。",
    "image": ""
  },
  {
    "id": 194,
    "family": 1,
    "name": "Scrollbar",
    "nameCN": "滑动指示栏",
    "linkWidget": "195,164,162",
    "lever": 3,
    "info": "需要包裹一个可滑动区域，当可滑动时，会显示滑动的bar用于指示。",
    "image": ""
  },
  {
    "id": 195,
    "family": 1,
    "name": "CupertinoScrollbar",
    "nameCN": "iOS滑动指示栏",
    "linkWidget": "194,164,162",
    "lever": 3,
    "info": "iOS风格的滑动指示栏，需要包裹一个可滑动区域，当可滑动时，会显示滑动的bar用于指示。",
    "image": ""
  },
  {
    "id": 196,
    "family": 4,
    "name": "FlexibleSpaceBar",
    "nameCN": "ios菜单按钮",
    "linkWidget": "184",
    "lever": 3,
    "info": "通常用于SliverAppBar中的可伸展区域，可指定标题、标题间距、背景、折叠模式等。",
    "image": ""
  },
  {
    "id": 197,
    "family": 6,
    "name": "ErrorWidget",
    "nameCN": "错误组件",
    "linkWidget": "",
    "lever": 1,
    "info": "用于显示一个错误信息的组件，红底黄字，在开发过程中经常看到，一般不使用。",
    "image": ""
  },
  {
    "id": 198,
    "family": 1,
    "name": "Form",
    "nameCN": "表单组件",
    "linkWidget": "199",
    "lever": 4,
    "info":
    "表单组件，可以接收其下的FormField组件的变化回调，通过onWillPop拦截页面返回，通过FormState可对表单字段进行保存或校验。",
    "image": ""
  },
  {
    "id": 199,
    "family": 1,
    "name": "TextFormField",
    "nameCN": "文字表单输入",
    "linkWidget": "54,198",
    "lever": 4,
    "info": "和TextField属性基本一致，在其基础上增加字段的校验和提交的回调，FormState的save会触发onSaved回调。",
    "image": ""
  },
  {
    "id": 200,
    "family": 1,
    "name": "Stepper",
    "nameCN": "步骤组件",
    "linkWidget": "",
    "lever": 5,
    "info": "步骤组件，可指定一步步的操作，可以自定义步骤的内容，确认和返回的按钮以及步骤排列的方向。",
    "image": ""
  },
  {
    "id": 201,
    "family": 1,
    "name": "AnimatedSize",
    "nameCN": "尺寸动画",
    "linkWidget": "92",
    "lever": 3,
    "info": "子组件大小发生变化是，进行动画渐变，可指定时长、对齐方式、曲线、vsync等属性。",
    "image": ""
  },
  {
    "id": 202,
    "family": 0,
    "name": "Builder",
    "nameCN": "构造器",
    "linkWidget": "",
    "lever": 2,
    "info": "一个不影响子组件占位空间，不具有显示性的组件，存在的唯一价值是提供当前组件对应元素的上下文。",
    "image": ""
  },
  {
    "id": 203,
    "family": 0,
    "name": "OrientationBuilder",
    "nameCN": "方向构造器",
    "linkWidget": "202",
    "lever": 2,
    "info": "能够回调父组件是横向还是纵向,可以据此来构建不同的子组件。",
    "image": ""
  },
  {
    "id": 204,
    "family": 0,
    "name": "PreferredSize",
    "nameCN": "优先尺寸",
    "linkWidget": "57,64",
    "lever": 2,
    "info": "实现了PreferredSizeWidget接口，可容纳一个子组件，设置优先尺寸，不会对其子组件施加任何约束。",
    "image": ""
  },
  {
    "id": 205,
    "family": 0,
    "name": "TabPageSelector",
    "nameCN": "页签滑动选择器",
    "linkWidget": "206,59",
    "lever": 2,
    "info": "通常作为指示器与TabBarView联用,共同使用一个TabController。可指定颜色、大小、选中色。",
    "image": ""
  },
  {
    "id": 206,
    "family": 0,
    "name": "TabPageSelectorIndicator",
    "nameCN": "页签指示器",
    "linkWidget": "205",
    "lever": 2,
    "info": "一个有边线的圆形组件，可指定大小、颜色、边线色。是TabPageSelector的部分之一，一般不单独使用。",
    "image": ""
  },
  {
    "id": 208,
    "family": 0,
    "name": "Title",
    "nameCN": "应用标题",
    "linkWidget": "65",
    "lever": 2,
    "info": "该组件用于描述app在操作系统中的名称,可以在应用栏列表里看到效果。MaterialApp中的title字段效果的根源是该组件。",
    "image": ""
  },
  {
    "id": 211,
    "family": 0,
    "name": "MaterialBanner",
    "nameCN": "横幅组件",
    "linkWidget": "",
    "lever": 2,
    "info": "Material风格的横幅组件，支持左中右或左中下结构，可指定边距背景色等",
    "image": ""
  },
  {
    "id": 214,
    "family": 0,
    "name": "NavigationToolbar",
    "nameCN": "导航工具条",
    "linkWidget": "57",
    "lever": 2,
    "info": "左中右模式的通用结构组件,可指定中间组件距左侧边距及是否居中。源码在AppBar等导航条结构中有使用它。",
    "image": ""
  },
  {
    "id": 218,
    "family": 0,
    "name": "CupertinoNavigationBarBackButton",
    "nameCN": "iOS风格返回按钮",
    "linkWidget": "57",
    "lever": 2,
    "info": "Cupertino风格的导航栏返回按钮,可指定颜色和点击事件,一般不单独使用。",
    "image": ""
  },
  {
    "id": 231,
    "family": 1,
    "name": "InputDecorator",
    "nameCN": "输入装饰",
    "linkWidget": "54",
    "lever": 2,
    "info": "在外层包裹输入的装饰,是TextField的底层核心组件之一，一般不单独使用。",
    "image": ""
  },
  {
    "id": 232,
    "family": 1,
    "name": "Navigator",
    "nameCN": "导航器",
    "linkWidget": "65",
    "lever": 4,
    "info":
    "Navigator用堆栈规则管理一组子组件,可以将子组件切入弹出及监听出入栈事件。MaterialApp路由管理的本源就是使用了Navigator。",
    "image": ""
  },
  {
    "id": 244,
    "family": 1,
    "name": "EditableText",
    "nameCN": "可编辑文字",
    "linkWidget": "2,54",
    "lever": 2,
    "info": "可以编辑的文字,是TextField的底层最核心组件，一般不单独使用。",
    "image": ""
  },
  {
    "id": 245,
    "family": 1,
    "name": "CupertinoTextField",
    "nameCN": "iOS风格输入框",
    "linkWidget": "54",
    "lever": 4,
    "info":
    "Cupertino风格的输入框,属性和TextField类似,可指定控制器、文字样式、装饰线、行数限制、游标样式等。接收输入变化、完成输入等事件。",
    "image": ""
  },
  {
    "id": 251,
    "family": 4,
    "name": "NestedScrollView",
    "nameCN": "嵌套滑动视图",
    "linkWidget": "183",
    "lever": 4,
    "info": "用于多个视图滑动嵌套处理,可以指定头部、滑动控制器、滑动方向等,其中body必须是可滑动类型的组件。",
    "image": ""
  },
  {
    "id": 253,
    "family": 1,
    "name": "Scrollable",
    "nameCN": "可滑动组件",
    "linkWidget": "340,349",
    "lever": 4,
    "info":
    "实现了一个可滚动组件的交互模型,需要viewportBuilder进的viewport的构造。是ScrollView的核心实现组件之一，一般不直接使用。",
    "image": ""
  },
  {
    "id": 255,
    "family": 1,
    "name": "ValueListenableBuilder",
    "nameCN": "监听值构造器",
    "linkWidget": "",
    "lever": 5,
    "info": "可以监听一个值，当其变化时通过builder回调能重建界面，避免使用setState刷新。",
    "image": ""
  },
  {
    "id": 262,
    "family": 1,
    "name": "CupertinoSegmentedControl",
    "nameCN": "iOS多栏切换",
    "linkWidget": "33",
    "lever": 4,
    "info": "iOS风格的多按钮栏，表现和ToggleButtons类似,可指定内边距。",
    "image": ""
  },
  {
    "id": 263,
    "family": 2,
    "name": "FractionalTranslation",
    "nameCN": "分度偏移",
    "linkWidget": "",
    "lever": 3,
    "info": "通过offset属性将子组件进行偏移,偏移量为OffSet横纵*子组件大小。",
    "image": ""
  },
  {
    "id": 264,
    "family": 2,
    "name": "RepaintBoundary",
    "nameCN": "重绘边界",
    "linkWidget": "166",
    "lever": 5,
    "info":
    "为子组件创建一个单独的显示列表,提升性能。源码中在TextField、DrawerController、Scrollbar、Sliver等组件中均有应用",
    "image": ""
  },
  {
    "id": 277,
    "family": 2,
    "name": "ShaderMask",
    "nameCN": "着色器遮罩",
    "linkWidget": "88,38",
    "lever": 4,
    "info": "可容纳一个孩子，并通过着色器来对孩子进行着色，可指定混色模式。通常用于组件渐变色处理。",
    "image": ""
  },
  {
    "id": 278,
    "family": 2,
    "name": "BackdropFilter",
    "nameCN": "背景滤镜",
    "linkWidget": "88,97,67",
    "lever": 4,
    "info": "可容纳一个孩子，并将背景进行模糊滤镜。可以通过Stack将背景模糊实现组件的模糊效果。",
    "image": ""
  },
  {
    "id": 279,
    "family": 2,
    "name": "PhysicalShape",
    "nameCN": "物理形状",
    "linkWidget": "69",
    "lever": 4,
    "info": "可以让子组件按照路径进行剪裁,并且可以指定背景色、影深、阴影颜色、剪切行为。",
    "image": ""
  },
  {
    "id": 285,
    "family": 2,
    "name": "CustomSingleChildLayout",
    "nameCN": "通用单子布局",
    "linkWidget": "341",
    "lever": 3,
    "info": "可容纳一个子组件，并指定代理类对子组件进行排布。代理类可获取父容器区域和子组件的区域大小，及区域约束情况。",
    "image": ""
  },
  {
    "id": 287,
    "family": 2,
    "name": "LayoutBuilder",
    "nameCN": "布局构造器",
    "linkWidget": "",
    "lever": 4,
    "info": "可以检测到父容器的区域大小，并根据父容器的尺寸信息可以完成自定义布局。"
        "是一个非常实用的布局组件。",
    "image": ""
  },
  {
    "id": 292,
    "family": 2,
    "name": "IgnorePointer",
    "nameCN": "忽视点击",
    "linkWidget": "295,146,149,150",
    "lever": 4,
    "info": "容纳一个子组件，可以通过指定ignoring属性，来决定孩子是否忽略手势事件，其本身不接受事件。",
    "image": ""
  },
  {
    "id": 293,
    "family": 1,
    "name": "MouseRegion",
    "nameCN": "鼠标区域",
    "linkWidget": "",
    "lever": 3,
    "info": "用于鼠标事件监听的组件,通常用于桌面和Web平台，可监听鼠标的移入、移除、移动事件。",
    "image": ""
  },
  {
    "id": 295,
    "family": 2,
    "name": "AbsorbPointer",
    "nameCN": "吸收点击",
    "linkWidget": "146,149,150,292",
    "lever": 4,
    "info": "容纳一个子组件，可以通过指定ignoring属性，来决定孩子是否忽略手势事件，其本身接受事件。",
    "image": ""
  },
  {
    "id": 297,
    "family": 2,
    "name": "IntrinsicWidth",
    "nameCN": "固有宽",
    "linkWidget": "298",
    "lever": 4,
    "info": "根据子元素的固有宽度度调整其子元素大小的组件,可解决很多布局的疑难杂症,但相对昂贵。",
    "image": ""
  },
  {
    "id": 298,
    "family": 2,
    "name": "IntrinsicHeight",
    "nameCN": "固有高",
    "linkWidget": "297",
    "lever": 4,
    "info": "根据子元素的固有高度调整其子元素大小的组件,可解决很多布局的疑难杂症,但相对昂贵。",
    "image": ""
  },
  {
    "id": 307,
    "family": 4,
    "name": "SliverOverlapAbsorber",
    "nameCN": "重叠吸收器",
    "linkWidget": "251,308",
    "lever": 3,
    "info": "包裹另一个的sliver，并迫使其布局范围被视为重叠。需要和SliverOverlapInjector联用。",
    "image": ""
  },
  {
    "id": 308,
    "family": 4,
    "name": "SliverOverlapInjector",
    "nameCN": "重叠注射器",
    "linkWidget": "251,307",
    "lever": 3,
    "info": "一个sliver,需要和SliverOverlapAbsorber联用,处理视图重叠问题。",
    "image": ""
  },
  {
    "id": 312,
    "family": 6,
    "name": "PerformanceOverlay",
    "nameCN": "性能浮层",
    "linkWidget": "65",
    "lever": 2,
    "info": "可以非常方便地开启性能监测的两个柱图,方便查看刷新界面时帧率的变化情况。",
    "image": ""
  }, {
    "id": 313,
    "family": 6,
    "name": "RawImage",
    "nameCN": "原图片",
    "linkWidget": "38",
    "lever": 2,
    "info": "是实现Image组件的核心组件，可以显示ui的Image,基本属性同Image,一般很少单独使用。",
    "image": ""
  },
  {
    "id": 315,
    "family": 5,
    "name": "LayoutId",
    "nameCN": "布局Id",
    "linkWidget": "341",
    "lever": 2,
    "info": "只能用于CustomMultiChildLayout组件中，为其子组件标识身份。",
    "image": ""
  },
  {
    "id": 324,
    "family": 5,
    "name": "DefaultTextStyle",
    "nameCN": "默认字体样式",
    "linkWidget": "2,114,124",
    "lever": 3,
    "info": "可容纳一个孩子，为后代的文字指定默认样式。常用于多个相同文字的样式统一，避免一一设置。",
    "image": ""
  },
  {
    "id": 325,
    "family": 5,
    "name": "IconTheme",
    "nameCN": "图标样式",
    "linkWidget": "6",
    "lever": 3,
    "info": "可容纳一个孩子，为后代的图标指定默认样式。常用于多个相同图标的样式统一，避免一一设置。",
    "image": ""
  },
  {
    "id": 326,
    "family": 5,
    "name": "ButtonTheme",
    "nameCN": "按钮样式",
    "linkWidget": "23,25,26,27",
    "lever": 3,
    "info": "主要用于为后代的Button类型组件统一设置默认属性,也可以通过该组件获取默认Button的属性。",
    "image": ""
  },
  {
    "id": 327,
    "family": 5,
    "name": "MaterialBannerTheme",
    "nameCN": "横幅样式",
    "linkWidget": "211",
    "lever": 2,
    "info": "主要用于为后代的MaterialBanner组件统一设置默认属性,也可以通过该组件获取默认MaterialBanner的属性。",
    "image": ""
  },
  {
    "id": 328,
    "family": 5,
    "name": "ChipTheme",
    "nameCN": "小条样式",
    "linkWidget": "11,153,12,13,14,15",
    "lever": 3,
    "info": "主要用于为后代的Chip类型组件统一设置默认属性,也可以通过该组件获取默认Chip的属性。",
    "image": ""
  },
  {
    "id": 329,
    "family": 5,
    "name": "DividerTheme",
    "nameCN": "分割线样式",
    "linkWidget": "34,35",
    "lever": 3,
    "info": "主要用于为后代的Divider类型组件统一设置默认属性,也可以通过该组件获取默认Divider的属性。",
    "image": ""
  },
  {
    "id": 330,
    "family": 5,
    "name": "PopupMenuTheme",
    "nameCN": "弹出菜单样式",
    "linkWidget": "56",
    "lever": 2,
    "info": "主要用于为后代的PopupMenuButton组件统一设置默认属性,也可以通过该组件获取默认PopupMenu的属性。",
    "image": ""
  },
  {
    "id": 331,
    "family": 5,
    "name": "SliderTheme",
    "nameCN": "滑块样式",
    "linkWidget": "42",
    "lever": 3,
    "info": "可容纳一个孩子，为后代的Slider指定默认样式。常用于Slider的样式统一，避免一一设置，也可以对Slider进行样式定制。",
    "image": ""
  },
  {
    "id": 332,
    "family": 5,
    "name": "ToggleButtonsTheme",
    "nameCN": "滑块样式",
    "linkWidget": "33",
    "lever": 2,
    "info": "主要用于为后代的ToggleButtons组件统一设置默认属性,也可以通过该组件获取默认ToggleButtons的属性。",
    "image": ""
  },
  {
    "id": 333,
    "family": 5,
    "name": "TooltipTheme",
    "nameCN": "提示主题",
    "linkWidget": "50",
    "lever": 2,
    "info": "主要用于为后代的Tooltip组件统一设置默认属性,也可以通过该组件获取默认TooltipTheme的属性。",
    "image": ""
  },
  {
    "id": 334,
    "family": 5,
    "name": "ListTileTheme",
    "nameCN": "ListTile主题",
    "linkWidget": "16",
    "lever": 2,
    "info": "主要用于为后代的ListTile组件统一设置默认属性,也可以通过该组件获取默认ListTile的属性。",
    "image": ""
  },
  {
    "id": 338,
    "family": 5,
    "name": "ButtonBarTheme",
    "nameCN": "按钮条主题",
    "linkWidget": "29",
    "lever": 2,
    "info": "主要用于为后代的ButtonBar组件统一设置默认属性,也可以通过该组件获取默认ButtonBarTheme的属性。",
    "image": ""
  },
  {
    "id": 340,
    "family": 3,
    "name": "Viewport",
    "nameCN": "视口组件",
    "linkWidget": "253,349",
    "lever": 1,
    "info":
    "通常用于为滑动视图提供视口,仅构建显示和预加载的部位。可指定预加载的长度、滑动轴向等。是ScrollView的核心实现组件之一，一般不直接使用。",
    "image": ""
  },
  {
    "id": 341,
    "family": 3,
    "name": "CustomMultiChildLayout",
    "nameCN": "通用多子布局",
    "linkWidget": "315,285",
    "lever": 4,
    "info": "使用一个代理类对子组件集进行布局控制,子组件必须使用LayoutId组件进行标识。",
    "image": ""
  },
  {
    "id": 342,
    "family": 3,
    "name": "ListBody",
    "nameCN": "列表体",
    "linkWidget": "162",
    "lever": 1,
    "info": "将若干子组件按照轴向进行排列，可设置的属性很少，一般很少使用，而选择使用ListView。",
    "image": ""
  },
  {
    "id": 351,
    "family": 1,
    "name": "InteractiveViewer",
    "nameCN": "交互视图",
    "linkWidget": "147,146,78",
    "lever": 4,
    "info": "主要对移动、缩放等手势交互进行封装，简化使用，可指定移动边界、缩放比例、手势监听等。",
    "image": ""
  },
  {
    "id": 352,
    "family": 0,
    "name": "CupertinoDialogAction",
    "nameCN": "交互视图",
    "linkWidget": "129",
    "lever": 1,
    "info": " 一个简单的按钮，通常用于CupertinoAlertDialog中，一般不单独使用。",
    "image": ""
  }
];
