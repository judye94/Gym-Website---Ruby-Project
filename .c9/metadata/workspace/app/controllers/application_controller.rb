{"filter":false,"title":"application_controller.rb","tooltip":"/app/controllers/application_controller.rb","undoManager":{"mark":24,"position":24,"stack":[[{"start":{"row":7,"column":5},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":8,"column":2},"end":{"row":11,"column":5},"action":"insert","lines":["def getPageNav","    ","    @pagenNav = Page.where(\"menu_display = true && is_published = true\").order(order: :asc)","  end"],"id":3}],[{"start":{"row":10,"column":26},"end":{"row":10,"column":91},"action":"remove","lines":["(\"menu_display = true && is_published = true\").order(order: :asc)"],"id":4}],[{"start":{"row":10,"column":21},"end":{"row":10,"column":26},"action":"remove","lines":["where"],"id":5}],[{"start":{"row":10,"column":20},"end":{"row":10,"column":21},"action":"remove","lines":["."],"id":6}],[{"start":{"row":8,"column":16},"end":{"row":9,"column":4},"action":"remove","lines":["","    "],"id":7}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":20},"action":"remove","lines":["Page"],"id":8},{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"insert","lines":["d"]}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["y"],"id":9}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":18},"action":"remove","lines":["dy"],"id":10},{"start":{"row":9,"column":16},"end":{"row":9,"column":26},"action":"insert","lines":["dy_content"]}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":26},"action":"remove","lines":["dy_content"],"id":11}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"insert","lines":["D"],"id":12}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["y"],"id":13}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":18},"action":"remove","lines":["Dy"],"id":14},{"start":{"row":9,"column":16},"end":{"row":9,"column":25},"action":"insert","lines":["DyContent"]}],[{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["."],"id":15}],[{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["a"],"id":16}],[{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"insert","lines":["l"],"id":17}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"insert","lines":["l"],"id":18}],[{"start":{"row":0,"column":52},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":19},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["b"],"id":20}],[{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"insert","lines":["e"],"id":21}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":4},"action":"remove","lines":["be"],"id":22},{"start":{"row":1,"column":2},"end":{"row":1,"column":27},"action":"insert","lines":["before_filter :getPageNav"]}],[{"start":{"row":10,"column":16},"end":{"row":10,"column":25},"action":"remove","lines":["DyContent"],"id":23},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"insert","lines":["D"]}],[{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"insert","lines":["y"],"id":24}],[{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"insert","lines":["n"],"id":25}],[{"start":{"row":10,"column":16},"end":{"row":10,"column":19},"action":"remove","lines":["Dyn"],"id":26},{"start":{"row":10,"column":16},"end":{"row":10,"column":27},"action":"insert","lines":["DynamicPage"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":10,"column":27},"end":{"row":10,"column":27},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1493673955534,"hash":"b9132287b2d670680a14bf43b77f91bada6455f4"}