require 'ruble'
=begin 
 HBuilder可使用ruby脚本来扩展代码块和增强操作命令。这是极客的神奇玩具。
  本文档用于用户自定义css扩展命令，并非HBuilder预置命令的文档，预置的代码块不可改。查阅预置代码块，请在弹出预置代码块界面时点右下角的编辑按钮，比如dn代码块。
  本文档修改完毕，保存即可生效。
  玩的愉快，别玩坏！
  
  脚本开源地址 https://github.com/dcloudio/HBuilderRubyBundle
  可以把你的配置共享到这里，也可以在这里获取其他网友的版本
  
  注：如果1.9版本之前的用户修改过HTML代码块，请点右键打开本文档所在目录，找之前的snippets.rb.bak文件，把修改过的内容放置进来。 
=end

with_defaults :scope => "source.css support.type.property-name.css" do    #======扩展CSS属性代码块===================================

  snippet "-webkit-" do |s|             #引号内为显示名称，代码助手提示列表显示时可见
    s.trigger = "-wk"                   #-wk是激活字符，即按下后会触发该代码块
    s.expansion = '-webkit-$0'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。
                                        #如果输出涉及到换行和tab，也需严格在这里使用换行和tab。
                                        #输出双引号在前面加\来转义，输出$使用\$(单引号中)或\\$(双引号中)转义
    s.needApplyReContentAssist = true   #这句话的意思是输出后同时激活代码助手，即在$1的位置直接拉出图片列表                                                                         
  end
  


snippet "单行文本溢出显示...-ell" do |s|             
s.trigger = "ell"                    
s.expansion ='text-overflow:ellipsis; white-space:nowrap; overflow:hidden;$0'                                                                      
end

snippet "图片列表：pic-list-box" do |s|             
s.trigger = "pic-list-box"                    
s.expansion = ' 
.pic-list-box{}
.pic-list-box .bd{ }
.pic-list-box .bd ul{ margin-left: 10px;}
.pic-list-box .bd ul li{ float: left; text-align: center; margin: 0 0 20px 10px;}
.pic-list-box .bd ul li .txt{ background-color: #f0f0f0; width: 238px; padding: 5px 10px;}
'                                                                      
end


snippet "图片列表：pic-list-box2" do |s|             
s.trigger = "pic-list-box2"                    
s.expansion = ' 
.img-txt-bg,.img-txt{ position: absolute; left: 0; bottom: 0; right: 0; height:32px; line-height:32px; text-align: center;}
.img-txt-bg{ z-index: 1;background: #000; filter: alpha(opacity=50); opacity: 0.5;  }
.img-txt{ font-size: 12px; color: #fff;  z-index: 2; padding: 0 8px; text-overflow:ellipsis; white-space:nowrap; overflow:hidden;}
.img-txt a{ color: #fff;}
.img-txt a:hover{ color: #DF3131;}
.pic-list-box{}
.pic-list-box .bd{ }
.pic-list-box .bd ul{ margin-left: -10px;}
.pic-list-box .bd ul li{width: 190px; height: 115px; overflow: hidden; float: left; text-align: center; margin: 0 0 10px 10px; position: relative;}
.pic-list-box .bd ul li .txt{ background-color: #f0f0f0; width: 238px; padding: 5px 10px;}
'                                                                      
end




snippet "面包屑导航（path）" do |s|             
s.trigger = "path111"                    
s.expansion = ' 
/*面包屑导航（path）*/
.path {
  padding: 8px 15px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
.path > li {
  display: inline-block;
}
.path > li + li:before {
  padding: 0 5px;
  color: #ADADAD;
  content: ">";
}
.path > .active {
  color: #777;
}
'                                                                      
end


snippet "tab切换1111" do |s|             
s.trigger = "tab1111"                    
s.expansion = ' 
.tab1{ width: 800px; height: 300px; overflow: hidden; margin: 20px auto 0 auto;  }
.tab1 .hd{ height:44px; line-height: 44px; position:relative;  border-bottom: 1px solid #ddd; }
.tab1 .hd ul{ float:left; position:absolute; left:10px; top:0px;   }
.tab1 .hd ul li{ font-size: 16px; text-align: center; float:left; width: 140px; padding-left: 20px; padding-right: 20px; cursor:pointer; }
.tab1 .hd ul li .icon2{  display: none;}
.tab1 .hd ul li.on{ color: #1478aa; font-weight: bold;  line-height: 44px; background: #fff; border-bottom: 2px solid #1478aa;}
.tab1 .hd ul li.on .icon2{ display: inline-block; }
.tab1 .bd{ overflow: hidden; padding: 15px;  }
.tab1 .bd ul{ zoom:1;}
.tab1 .bd .cc-list{ position: relative; }
.tab1 .bd .cc-list a{ color: #617684;}
.tab1 .bd .cc-list a:hover{ color: #ef0000;}
.tab1 .bd .cc-list .list{ float: left; width: 212px; text-overflow:ellipsis; white-space:nowrap; overflow:hidden; text-indent: 10px;} 
'                                                                      
end
 
  
snippet "tab切换2222" do |s|             
s.trigger = "tab2222"                    
s.expansion = ' 
.tab2{ width:500px; border:1px solid #ddd; text-align:left; overflow: hidden; margin: 20px auto;  }
.tab2 .hd{ height:36px; line-height:36px; background:#f4f4f4; border-bottom:1px solid #ddd; position:relative; box-sizing: content-box; }
.tab2 .hd ul{ float:left;  position:absolute; left:-1px; top:-1px;   }
.tab2 .hd ul li{ float:left; padding:0 20px; cursor:pointer; box-sizing: content-box; }
.tab2 .hd ul li.on{ height:36px; font-weight: bold;  background:#fff; border:1px solid #ddd; border-bottom:1px solid #fff; }
.tab2 .bd ul{ padding:15px;  zoom:1;  }
.tab2 .bd li{ height:30px; line-height:30px;}
.tab2 .bd li .date{ float:right; color:#999; }  
'                                                                      
end 
  
  
snippet "分页代码蓝色" do |s|             
s.trigger = "paage111"                    
s.expansion = ' 
/*--------------------分页蓝色--------------------*/
.page{ padding:10px 10px 10px 0; margin-top: 10px; margin-bottom: 10px; text-align: center; color: #333; }
.page .prev,.page .next{  }
.page .inp{ height:20px; line-height: 20px; width: 2.5em; margin-left:4px; }
.page .btn{ color:#fff; height:26px; line-height: 26px; background-color: #428bca; width:60px; }
.page a,.page span,.page .none,.page .none:hover{
   font-family: Tahoma, Geneva, sans-serif; text-decoration: none;  
   font-size:12px; margin:0 4px;  padding:2px 12px; display: inline-block; 
   color:#333; background:#fff; border:1px solid #e0e0e0;   
}
.page li{ display: inline-block; }
.page a:hover, .page span, .page .now, .page .now:hover{  color:#fff; background:#428bca; border:1px solid #428bca;  }
.page .none:hover{  cursor:default;}
'                                                                      
end


snippet "分页代码红色" do |s|           
s.trigger = "paage222"                 
s.expansion = ' 
/*--------------------分页红色--------------------*/
.page{ padding:10px 10px 10px 0; margin-top: 10px; margin-bottom: 10px; text-align: center; color: #333; }
.page .prev,.page .next{  }
.page .inp{ height:20px; line-height: 20px; width: 2.5em; margin-left:4px; }
.page .btn{ color:#fff; height:26px; line-height: 26px; background-color: #ec6565; width:60px; }
.page a,.page span,.page .none,.page .none:hover{
   font-family: Tahoma, Geneva, sans-serif; text-decoration: none;  
   font-size:12px; margin:0 4px;  padding:2px 12px; display: inline-block; 
   color:#333; background:#fff; border:1px solid #e0e0e0;   
}
.page li{ display: inline-block; }
.page a:hover, .page span, .page .now, .page .now:hover{  color:#fff; background:#ec6565; border:1px solid #ec6565;  }
.page .none:hover{  cursor:default;}
'                                                                      
end

snippet "分页代码灰色" do |s|          
s.trigger = "paage333"                  
s.expansion = ' 
/*--------------------分页灰色--------------------*/
.page{ padding:10px 10px 10px 0; margin-top: 10px; text-align: center; color: #333; }
.page .prev,.page .next{  }
.page .inp{ height:20px; line-height: 20px; width: 2.5em; margin-left:4px; }
.page .btn{ color:#fff; height:26px; line-height: 26px; background-color: #999; width:60px; }
.page a,.page span,.page .none,.page .none:hover{
   font-family: Tahoma, Geneva, sans-serif; text-decoration: none;
   font-size:12px; margin:0 4px;  padding:5px 12px; display: inline-block; 
   color:#333; background:#fff; border:1px solid #e0e0e0;   
}
.page li{ display: inline-block; }
.page a:hover, .page span, .page .now, .page .now:hover{  color:#fff; background:#999; border:1px solid #999;  }
.page .none:hover{  cursor:default;}
'                                                                      
end

  
snippet "主导航:main-nav" do |s|            
s.trigger = "main-nav"                   
s.expansion = ' 
/*--------------------主导航--------------------*/
.main-nav {margin-top: 325px; background: url(../images/bg2.jpg); height: 40px; position: relative;}
.main-nav .inner{
	background: url(../images/bg3.png) no-repeat center center; position: absolute; bottom: 0; left: 50%; margin-left: -522px; 
	text-align: center;height: 60px; line-height: 60px;
}
.main-nav > ul{ margin-left: 20px;}
.main-nav li{ display: inline-block; padding: 0 10px;  color: #fff; }
.main-nav li a{ font-size: 18px; color: #fff;}
.main-nav li a:hover,.main-nav li.on a{ color: #fede6b;}

'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end
  
  
    snippet "图片轮换焦点:slideBox1111" do |s|   
    s.trigger = "slideBox1111"                   
    s.expansion = ' 
/*--------------------图片轮换焦点--------------------*/
.slideBox1{ position: relative; width:500px; height:338px; overflow:hidden;}
.slideBox1 .hd{ position:absolute; right: 10px; bottom: 10px;  z-index:1; }
.slideBox1 .hd ul{ zoom:1;  }
.slideBox1 .hd ul li{ 
  float:left; margin-right:5px; width:20px; height:20px; line-height:20px; position: relative; 
  text-align:center; background:#fff; cursor:pointer;  
}
.slideBox1 .hd ul li .arrow-up {
	display: inline-block; position: absolute; left: 50%; margin-left: -5px; top: -5px;
    width: 0px; height: 0px; display: none;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 5px solid #d50609;
    font-size: 0px;
    line-height: 0px;
}
.slideBox1 .hd ul li.on{ background:#d50609; color:#fff; }
.slideBox1 .hd ul li.on .arrow-up{display: block;}
.slideBox1 .bd{ position:relative; height:100%; z-index:0;   }
.slideBox1 .bd li{ position: relative; zoom:1; vertical-align:middle;}
.slideBox1 .bd li img{ width:500px; height:338px; display: block;}
.slideBox1 .bd li a{ color: #fff;}
.slideBox1 .bd li p {
  position: absolute; bottom: 0; left: 0; width: 100%; height: 44px; line-height: 44px; text-align: left; 
  font-size: 16px; color: #eee; text-indent: 12px; white-space: nowrap; 
  background: rgba(0,0,0,0.6); filter: progid:DXImageTransform.Microsoft.gradient(enabled=\'true\',startColorstr=\'#99000000\',endColorstr=\'#99000000\'); 
}

'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end
  

  snippet "图片轮换焦点:slideBox2222" do |s|   
    s.trigger = "slideBox2222"                  
    s.expansion = ' 
/*--------------------图片轮换焦点2--------------------*/
.slideBox2{ position: relative; width:500px; height:338px; overflow:hidden;}
.slideBox2 .hd{ height:15px; overflow:hidden; position:absolute; left:50%; margin-left: -30px; top: 260px; z-index:1; }
.slideBox2 .hd ul{ overflow:hidden; zoom:1;  }
.slideBox2 .hd ul li{ 
  float:left; margin-right:5px; width:10px; height:10px; line-height:10px; 
  text-align:center; background:#e5e5e5; cursor:pointer; text-indent: -9999px; 
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;  
}
.slideBox2 .hd ul li.on{ background:#d50609; color:#fff; }
.slideBox2 .bd{ position:relative; height:100%; z-index:0;   }
.slideBox2 .bd li{ position: relative; zoom:1; vertical-align:middle;}
.slideBox2 .bd li img{ width:500px; height:338px; display: block;}
.slideBox2 .bd li a{ color: #fff;}
.slideBox2 .bd li p {
  position: absolute; bottom: 0; left: 0; width: 100%; height: 44px; line-height: 44px; text-align: left; 
  font-size: 16px; color: #eee; text-indent: 12px; white-space: nowrap; 
  background: rgba(0,0,0,0.6); filter: progid:DXImageTransform.Microsoft.gradient(enabled=\'true\',startColorstr=\'#99000000\',endColorstr=\'#99000000\'); 
}

'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end
  
 snippet "新闻列表mini:news-list-box" do |s|   #引号内为显示名称，代码助手提示列表显示时可见
    s.trigger = "news-list-box"                   #-wk是激活字符，即按下后会触发该代码块
    s.expansion = ' 
/*--------------------新闻列表--------------------*/
.t-hd h1{ font-size: 22px;}
.t-list{ line-height: 33px; }
.t-list .txt{ background: url(../images/dot.png) no-repeat 6px 50%; padding-left: 15px; float: left;}
.t-list .date{ float: right;}
'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end
  
  
snippet "新闻列表:article-box" do |s|   #引号内为显示名称，代码助手提示列表显示时可见
s.trigger = "article-box"                   #-wk是激活字符，即按下后会触发该代码块
s.expansion = ' 
/*--------------------文章的定义--------------------*/
.article-box{ padding-top: 40px; }
.article-box .title{ text-align: center; border-bottom: 1px dotted #ccc;}
.article-box .title h1{ font-size: 24px; }
.article-box .content{ 
    font-size: 16px; word-wrap: break-word; word-break: break-all; overflow: hidden;  
	text-indent: 2em; line-height: 36px; padding: 20px 10px; 
}
.article-box .content h1{ font-size: 20px; font-weight: bold; margin-top: 1em; margin-bottom: 2em;}

'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end
  
  
snippet "视频:video" do |s|   #引号内为显示名称，代码助手提示列表显示时可见
s.trigger = "video"                   #-wk是激活字符，即按下后会触发该代码块
s.expansion = ' 
/*--------------------视频video--------------------*/
.pre-video .bd .inner{ margin-left: -32px;}
.pre-video .bd li{ width: 311px; float: left; overflow: hidden; margin: 34px 0 0 32px;}
.pre-video .bd li img{ width: 311px; height: 222px;}
.pre-video .bd li .pic-tit{text-align: center; font-size: 16px;}
.pre-video .bd li{ line-height: 46px; border-bottom: 1px dotted  #b9b9b9; }
.pre-video .bd li .n-list{ font-size: 16px; background: url(../images/dot2.png) no-repeat 0 center; text-indent: 15px; width: 864px;}
.pic-txt,.pic-txt-bg{ position: absolute; left: 0; bottom: 0; width: 100%; height:34px; line-height:34px; text-align: center;}
.pic-txt-bg{ z-index: 1;background: #000; filter: alpha(opacity=50); opacity: 0.5;	}
.pic-txt{ font-size: 16px; color: #fff;  z-index: 2;}
.pic-txt a{color: #fff;}

'          #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。                                                              
  end


  
end


with_defaults :scope => "source.css entity.name.tag.css" do   #======扩展CSS选择器代码块===================================
	
	snippet "@media min-max width" do |s|
    s.trigger = "@mediam"
    s.locationType="CSS_OUTRULE"
	s.expansion = '@media only screen and (min-width: ${1:100}px) and (max-width: ${2:640}px) {
	$0
}'
  end
  
end