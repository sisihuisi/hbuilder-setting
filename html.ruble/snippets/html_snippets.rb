require 'ruble'
=begin 
 HBuilder可使用ruby脚本来扩展代码块和增强操作命令。这是极客的神奇玩具。
  本文档用于用户自定义HTML扩展命令，并非HBuilder预置命令的文档，预置的代码块不可改。查阅预置代码块，请在弹出预置代码块界面时点右下角的编辑按钮，比如div代码块。
  本文档修改完毕，保存即可生效。
  玩的愉快，别玩坏！
  
  脚本开源地址 https://github.com/dcloudio/HBuilderRubyBundle
  可以把你的配置共享到这里，也可以在这里获取其他网友的版本
  
  注：如果1.9版本之前的用户修改过HTML代码块，请点右键打开本文档所在目录，找之前的snippets.rb.bak文件，把修改过的内容放置进来。 
=end

with_defaults :scope => 'text.html text' do |bundle|  #=====HTML标签代码块================================================================================
#如下是一个示例代码块，可以复制后再添加新代码块
  snippet 'div_class' do |cmd|  #div_class是显示名称，代码助手提示列表显示时可见
    cmd.trigger = 'divc'        #divc是激活字符，即按下divc后会触发该代码块
    cmd.expansion = "<div class=\"$1\">
	$0
</div>"                         #expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。$1是第一个停留光标，$0是最后回车时停留的光标。
													      #如果输出涉及到换行和tab，也需严格在这里使用换行和tab。
													      #输出双引号在前面加\来转义，输出$使用\$(单引号中)或\\$(双引号中)转义
    cmd.needApplyReContentAssist = true  #这句话的意思是输出后同时激活代码助手，即在$1的位置直接拉出样式列表
  end #div_class代码块结束
  
  snippet 'ng-pluralize' do |cmd|
    cmd.trigger = 'ngp'
    cmd.expansion = "<ng-pluralize>$1</ng-pluralize>"
  end

  snippet 'div_id' do |cmd|  #div_class是显示名称，代码助手提示列表显示时可见
    cmd.trigger = 'divc'        #divc是激活字符，即按下divc后会触发该代码块
    cmd.expansion = "<div id=\"$1\">
	$0
</div>"   
    cmd.needApplyReContentAssist = true  #这句话的意思是输出后同时激活代码助手，即在$1的位置直接拉出样式列表
  end #div_class代码块结束
  


snippet 'jquery-1.8.3' do |cmd|  
cmd.trigger = 'jquery-1.8.3'        
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/1.8.3/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end 

snippet 'jquery-1.9.1' do |cmd|  
cmd.trigger = 'jquery-1.9.1'        
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end 

snippet 'jquery-1.11.3' do |cmd|  
cmd.trigger = 'jquery-1.12.4'        
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end

snippet 'jquery-1.12.4' do |cmd|  
cmd.trigger = 'jquery-1.12.4'        
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/1.12.4/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end

snippet 'jquery-2.2.4' do |cmd|  
cmd.trigger = 'jquery-2.2.4'       
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end 

snippet 'jquery-3.2.1' do |cmd|  
cmd.trigger = 'jquery-3.2.1'       
cmd.expansion = "<script src=\"http://cdn.bootcss.com/jquery/3.2.1/jquery.min.js\" type=\"text/javascript\"></script>$0"                        
end 

snippet 'vue-2.5.13' do |cmd|  
cmd.trigger = 'vue-2.5.13'       
cmd.expansion = "<script src=\"https://cdn.bootcss.com/vue/2.5.13/vue.min.js\" type=\"text/javascript\"></script>$0"                        
end 




snippet '图片轮换焦点：slideBox1111' do |s|
  s.trigger = 'slideBox1111'
  s.expansion = '
<div class="slideBox1">
	<div class="hd">
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
		</ul>
	</div>
	<div class="bd">
		<ul>
			<li>
				<a href="#"><img src="images/p1.jpg" /></a>
				<p><a href="#">焦点图说明文字1</a></p>
			</li>
			<li>
				<a href="#"><img src="images/p2.jpg" /></a>
				<p><a href="#">焦点图说明文字2</a></p>
			</li>
			<li>
				<a href="#"><img src="images/p3.jpg" /></a>
				<p><a href="#">焦点图说明文字3</a></p>
			</li>
		</ul>
	</div>
</div>
\$(".slideBox1").slide({
	mainCell: ".bd ul",
	titCell: ".hd li",
	trigger: "click",
	effect: "leftLoop",
	autoPlay: true,
	delayTime: 700,
	interTime: 3000,
	pnLoop: true
});
'
end

snippet '图片轮换焦点：slideBox2222' do |s|
  s.trigger = 'slideBox2222'
  s.expansion = '
<div class="slideBox2">
	<div class="hd">
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
		</ul>
	</div>
	<div class="bd">
		<ul>
			<li>
				<a href="#"><img src="images/p1.jpg" /></a>
				<p><a href="#">焦点图说明文字1</a></p>
			</li>
			<li>
				<a href="#"><img src="images/p2.jpg" /></a>
				<p><a href="#">焦点图说明文字2</a></p>
			</li>
			<li>
				<a href="#"><img src="images/p3.jpg" /></a>
				<p><a href="#">焦点图说明文字3</a></p>
			</li>
		</ul>
	</div>
</div>
\$(".slideBox2").slide({
	mainCell: ".bd ul",
	titCell: ".hd li",
	trigger: "click",
	effect: "leftLoop",
	autoPlay: true,
	delayTime: 700,
	interTime: 3000,
	pnLoop: true
});
'
end


snippet 'tab切换1111' do |s|
  s.trigger = 'tab1111'
  s.expansion = '
<!--tab切换-->
<div class="tab1">
	<div class="hd">
		<ul class="clearfix">
			<li class="on">省政府机构</li>
			<li>省属企业</li>
			<li>驻陕单位</li>
		</ul>
	</div>
	<div class="bd">
		<div class="item">
			<ul>
				<li><a href="#">1111111111111111</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
			</ul>
		</div>
		<div class="item">
			<ul>
				<li><a href="#">22222222222222222</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
			</ul>
		</div>
		<div class="item">
			<ul>
				<li><a href="#">333333333333333333</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
				<li><a href="#">省发展和改革委员会</a></li>
			</ul>
		</div>
	</div>
</div>
\$(".tab1").slide({trigger: "click"});
'
end 




snippet 'tab切换2222' do |s|
  s.trigger = 'tab2222'
  s.expansion = '
<!--tab切换-->
<div class="tab2">
	<div class="hd">
		<ul>
			<li class="on">教育</li>
			<li>培训</li>
			<li>出国</li>
		</ul>
	</div>
	<div class="bd">
		<ul>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
		</ul>
  	<ul>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
		</ul>
		<ul>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
			<li>
				<span class="date">2011-11-11</span>
				<div class="txt"><a href="#">中国打破了世界软件巨头规则</a></div>	
			</li>
		</ul>
	</div>
</div>
\$(".tab2").slide({ trigger: "click" });
'
end  



snippet 'function匿名函数' do |s|
  s.trigger = 'func'
  s.expansion = '
<script type="text/javascript">
	\$(function() {
		\$("#btn ").click(function() {
		 
		})
	});
</script>
'
end


snippet '面包屑导航breadcrumb' do |s|
  s.trigger = 'breadcrumb'
  s.expansion = '
<ul class="breadcrumb">
	<li><a href="#">主页</a></li>
	<li><a href="#">新闻</a></li>
	<li class="active">详情</li>
</ul>
'
end


snippet '搜索search-box' do |s|
  s.trigger = 'search-box'
  s.expansion = '
<div class="search-box cl">
   <input type="text" placeholder="请输入关键词" class="form-control no-all" name="search-text" class="search-text" value=""  autocomplete="off" >
   <button type="submit" class="btn btn-primary no-all">搜索</button>
</div>
'
end


snippet '进度条progress-bar' do |s|
  s.trigger = 'progress-bar'
  s.expansion = '
<div class="progress-bar">
	<div class="have-done" style="width: 50%;"></div>
</div>
'
end



snippet 'bootstrap分页1' do |s|
  s.trigger = 'pagination111'
  s.expansion = '
<ul class="pagination pagination-lg">
	<li><a href="#">上一页</a></li>
	<li><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">下一页</a></li>
</ul>
'
end

snippet 'bootstrap分页2' do |s|
  s.trigger = 'pagination222'
  s.expansion = '
<ul class="pagination">
	<li><a href="#">&laquo;</a></li>
	<li><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">...</a></li>
	<li><a href="#">&raquo;</a></li>
	<li class="disabled"><a href="#">共1205条</a></li>
</ul>
'
end


snippet 'bootstrap分页3' do |s|
  s.trigger = 'pagination333'
  s.expansion = '
<div class="clearfix">
    <div class="pagination pull-right">
        <div class="pagination-wrapper">
            <span class="pa-info">共5条 / 第1页</span>
            <a href="#" class="pa-start">首页</a>
            <a href="#" class="pa-prev">上一页</a>
            <a href="#" class="pa-page">1</a>
            <span class="pa-active">2</span>
            <a href="#" class="pa-page">3</a>
            <a href="#" class="pa-page">4</a>
            <a href="#" class="pa-page">5</a>
            <a href="#" class="pa-next">下一页</a>
            <a href="#" class="pa-end">末页</a>
            <span class="skip-to">跳转到第<input type="text">页</span>
        </div>
    </div>
</div>
'
end


snippet 'bootstrap简易分页pager' do |s|
  s.trigger = 'paager111'
  s.expansion = '
<ul class="pager">
	<li><a href="#">上一页</a></li>
	<li><a href="#">下一页</a></li>
</ul>
'
end

snippet 'panel' do |s|
  s.trigger = 'panel panel-default'
  s.expansion = '
<div class="panel panel-default">
    <div class="panel-hd cl">
        <div class="panel-tit fl">标题标题</div>
        <div class="panel-more fr">
            <a href="#">更多>></a>
        </div>
    </div>
    <div class="panel-bd">
        内容内容内容内容
    </div>
</div>
'
end


snippet 'X关闭' do |s|
  s.trigger = 'close'
  s.expansion = '<div class="close">&times;</div>'
end

snippet 'btn btn-default默认按钮' do |s|
  s.trigger = 'btn-default'
  s.expansion = '<button type="button" class="btn btn-default">默认按钮</button>'
end

snippet 'btn-primary原始按钮' do |s|
  s.trigger = 'btn-primary'
  s.expansion = '<button type="button" class="btn btn-primary">原始按钮</button>'
end

snippet 'btn-success成功按钮' do |s|
  s.trigger = 'btn-success'
  s.expansion = '<button type="button" class="btn btn-success">成功按钮</button>'
end

snippet 'btn-info信息按钮' do |s|
  s.trigger = 'btn-info'
  s.expansion = '<button type="button" class="btn btn-info">信息按钮</button>'
end

snippet 'btn-warning警告按钮' do |s|
  s.trigger = 'btn-warning'
  s.expansion = '<button type="button" class="btn btn-warning">警告按钮</button>'
end

snippet 'btn-danger危险按钮' do |s|
  s.trigger = 'btn-danger'
  s.expansion = '<button type="button" class="btn btn-danger">危险按钮</button>'
end

snippet 'btn-link链接按钮' do |s|
  s.trigger = 'btn-link'
  s.expansion = '<button type="button" class="btn btn-link">链接按钮</button>'
end

snippet 'btn btn-lg大按钮' do |s|
  s.trigger = 'btn-lg'
  s.expansion = '<button type="button" class="btn btn-primary btn-lg">大按钮</button>'
end

snippet 'btn btn-sm小按钮' do |s|
  s.trigger = 'btn-sm'
  s.expansion = '<button type="button" class="btn btn-primary btn-sm">小按钮</button>'
end

snippet 'btn btn-xs特别小按钮' do |s|
  s.trigger = 'btn-xs'
  s.expansion = '<button type="button" class="btn btn-primary btn-xs">特别小按钮</button>'
end

snippet 'btn btn-block块级按钮' do |s|
  s.trigger = 'btn-block'
  s.expansion = '<button type="button" class="btn btn-primary btn-block">块级按钮</button>'
end


snippet 'textarea输入区域' do |s|
  s.trigger = 'textarea2'
  s.expansion = '
<form class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-2 control-label">请求参数</label>
		<div class="col-sm-10">
			<textarea class="form-control" placeholder="请求参数" rows="4" cols="50" id="txtarea1" name="txtarea1"></textarea>
		</div>
	</div>
</form>
'
end


snippet 'form-inline横向表单' do |s|
  s.trigger = 'form-inline'
  s.expansion = '
	<form class="form-inline">
	      <div class="form-group">
	        <label for="inputName">姓名：</label>
	        <input type="text" class="form-control" id="inputName" placeholder="姓名">
	      </div>
	      <div class="form-group">
	        <label for="inputEmail">邮箱：</label>
	        <input type="email" class="form-control" id="inputEmail" placeholder="jane.doe@example.com">
	      </div>
	      <button type="submit" class="btn btn-info">提交</button>
	</form>
'
end



snippet 'input输入框' do |s|
  s.trigger = 'input'
  s.expansion = '
<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="name1">信息标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name1" placeholder="请输入">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="name2">人物单位</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name2" placeholder="请输入">
        </div>
    </div>
</form>
'
end

snippet 'input大输入框' do |s|
  s.trigger = 'input-lg'
  s.expansion = '
<form class="form-horizontal">
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="name1">信息标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name1" placeholder="请输入">
        </div>
    </div>
    <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="name2">人物单位</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name2" placeholder="请输入">
        </div>
    </div>
</form>
'
end

snippet 'input小输入框' do |s|
  s.trigger = 'input-sm'
  s.expansion = '
<form class="form-horizontal">
    <div class="form-group form-group-sm">
        <label class="col-sm-2 control-label" for="name1">信息标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name1" placeholder="请输入">
        </div>
    </div>
    <div class="form-group form-group-sm">
        <label class="col-sm-2 control-label" for="name2">人物单位</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="name2" placeholder="请输入">
        </div>
    </div>
</form>
'
end


snippet 'select选择框' do |s|
  s.trigger = 'select'
  s.expansion = '
 <div class="form-group">
      <select class="form-control">
         <option value="-1">选择</option>
         <option value="aa">选择2</option>
         <option value="bb">选择3</option>
      </select>
</div>
'
end


snippet 'checkbox多选' do |s|
  s.trigger = 'checkbox'
  s.expansion = '
<label class="checkbox-inline"><input type="checkbox" value="aa"> 选项 1</label>
<label class="checkbox-inline"><input type="checkbox" value="bb"> 选项 2</label>
<label class="checkbox-inline"><input type="checkbox" value="cc"> 选项 3</label>
'
end


snippet 'radio单选' do |s|
  s.trigger = 'radio'
  s.expansion = '
<label class="radio-inline"><input type="radio" name="aa" value="op1" checked> 选项 1</label>
<label class="radio-inline"><input type="radio" name="bb" value="op2"> 选项 2</label>
<label class="radio-inline"><input type="radio" name="cc" value="op3"> 选项 3</label>
'
end


snippet 'col-sm-12栅格系统' do |s|
  s.trigger = 'col'
  s.expansion = '
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-6 col-md-6 col-lg-6">
			123
		</div>
		<div class="col-sm-6 col-md-6 col-lg-6">
			123
		</div>
	</div>
</div>
'
end

snippet 'table表格' do |s|
  s.trigger = 'table'
  s.expansion = '
<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>产品产品</th>
			<th>付款日期</th>
			<th>状态状态</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>产品1</td>
			<td>23/11/2013</td>
			<td>待发货</td>
		</tr>
		<tr>
			<td>产品2</td>
			<td>10/11/2013</td>
			<td>发货中</td>
		</tr>
		<tr>
			<td>产品3</td>
			<td>20/10/2013</td>
			<td>待确认</td>
		</tr>
	</tbody>
</table>
'
end


snippet '主导航：main-nav' do |s|
  s.trigger = 'main-nav'
  s.expansion = '
<div class="main-nav">
	<div class="inner wp">
		<ul class="cl">
			<li><a href="#">首页</a></li>
			<li class="line-y">|</li>
			<li><a href="#">领导讲话</a></li>
			<li class="line-y">|</li>
			<li><a href="#">最新资讯</a></li>
			<li class="line-y">|</li>
			<li><a href="#">媒体聚焦</a></li>
			<li class="line-y">|</li>
			<li><a href="#">贯彻落实</a></li>
			<li class="line-y">|</li>
			<li><a href="#">图片报道</a></li>
			<li class="line-y">|</li>
			<li><a href="#">典型发言</a></li>
			<li class="line-y">|</li>
			<li><a href="#">历次会议</a></li>
		</ul>
	</div>
</div>
'
end



snippet '分页代码：page' do |s|
  s.trigger = 'paage111'
  s.expansion = '

<!-----------------------分页-------------------------->
<div class="page mt30 cl">
	<a class="prev" href="#">上一页</a>
	<a class="now">1</a>
	<a href="#">2</a>
	<a href="#">3</a>
	<a href="#">4</a>
	<a href="#">5</a>
	<a href="#">6</a> 
	<a class="none" href="#">...</a>
	<a href="#">10</a>
	<a class="next" href="#">下一页</a>
</div>
'
end



snippet '图片列表：pic-list-box' do |s|
  s.trigger = 'pic-list-box'
  s.expansion = '
<div class="pic-list-box">
	<div class="bd">
			<ul class="clearfix">
				<li>
					<div class="pic">
						<a href="#"><img src="images/zh/zs.jpg"  alt=""></a>
					</div>
					<div class="txt ell"><a href="#">党和国家领导人参加首都义务植树活动 </a></div>
				</li>
				<li>
					<div class="pic">
						<a href="#"><img src="images/zh/zs.jpg"  alt=""></a>
					</div>
					<div class="txt ell"><a href="#">党和国家领导人参加首都义务植树活动 </a></div>
				</li>
				<li>
					<div class="pic">
						<a href="#"><img src="images/zh/zs.jpg"  alt=""></a>
					</div>
					<div class="txt ell"><a href="#">党和国家领导人参加首都义务植树活动 </a></div>
				</li>
				<li>
					<div class="pic">
						<a href="#"><img src="images/zh/zs.jpg"  alt=""></a>
					</div>
					<div class="txt ell"><a href="#">党和国家领导人参加首都义务植树活动 </a></div>
				</li>
			</ul>
	</div>
</div>
'
end



snippet '图片列表：pic-list-box2' do |s|
  s.trigger = 'pic-list-box2'
  s.expansion = '
<div class="pic-list-box">
    <div class="bd">
            <ul class="clearfix">
                <li>
                    <a href="#"><img src="images/px-pic-zxft.jpg" ></a>
                    <div class="img-txt"><a href="#">大力发展油茶产业保障国家粮保障国家粮</a></div>
                    <div class="img-txt-bg"></div>
                </li>
                <li>
                    <a href="#"><img src="images/px-pic-zxft.jpg" ></a>
                    <div class="img-txt"><a href="#">大力发展油茶产业保障国家粮保障国家粮</a></div>
                    <div class="img-txt-bg"></div>
                </li>
                <li>
                    <a href="#"><img src="images/px-pic-zxft.jpg" ></a>
                    <div class="img-txt"><a href="#">大力发展油茶产业保障国家粮保障国家粮</a></div>
                    <div class="img-txt-bg"></div>
                </li>
                <li>
                    <a href="#"><img src="images/px-pic-zxft.jpg" ></a>
                    <div class="img-txt"><a href="#">大力发展油茶产业保障国家粮保障国家粮</a></div>
                    <div class="img-txt-bg"></div>
                </li>
            </ul>
    </div>
</div>

'
end



snippet '新闻列表：news-list-box' do |s|
  s.trigger = 'news-list-box'
  s.expansion = '
			<div class="news-list-box">
				<div class="hd t-hd cl">
					<h1>最新资讯</h1>
					<a href="#" class="more">更多>></a>
				</div>
				<div class="bd">
					<div class="t-list">
						<ul>
							<li class="clearfix">
								<div class="txt ell"><a href="#">主动适应新常态实现林业新发展为改善生态改善民生作出更大贡献为改善生态改善生态</a></div>
								<div class="date">2015-12-12</div>
							</li>
							<li class="clearfix">
								<div class="txt ell"><a href="#">主动适应新常态实现林业新发展为改善生态改善民生作出更大贡献为改善生态改善生态</a></div>
								<div class="date">2015-12-12</div>
							</li>
							<li class="clearfix">
								<div class="txt ell"><a href="#">主动适应新常态实现林业新发展为改善生态改善民生作出更大贡献为改善生态改善生态</a></div>
								<div class="date">2015-12-12</div>
							</li>
							<li class="clearfix">
								<div class="txt ell"><a href="#">主动适应新常态实现林业新发展为改善生态改善民生作出更大贡献为改善生态改善生态</a></div>
								<div class="date">2015-12-12</div>
							</li>
							<li class="clearfix">
								<div class="txt ell"><a href="#">主动适应新常态实现林业新发展为改善生态改善民生作出更大贡献为改善生态改善生态</a></div>
								<div class="date">2015-12-12</div>
							</li>
						</ul>
				    </div>
				</div>
 
			 <!-----------------------分页-------------------------->
			 <div class="page mt30 clearfix">
			 	<a class="prev" href="#">上一页</a>
			 	<a class="now">1</a>
			 	<a href="#">2</a>
			 	<a href="#">3</a>
			 	<a href="#">4</a>
			 	<a href="#">5</a>
			 	<a href="#">6</a> ...
			 	<a href="#">10</a>
			 	<a class="next" href="#">下一页</a>
			 </div>

			</div>

'
end



snippet '文章：article-box' do |s|
  s.trigger = 'article-box'
  s.expansion = '
<div class="article-box">
		<div class="inner">
			<div class="title">
				<h1>主动适应新常态 实现林业新发展 为改善生态改善民生作出更大贡献</h1>
			</div>
			<div class="content">
				<p>这次全国林业厅局长会议的主要任务是：深入学习领会习近平总书记系列重要讲话精神，全面贯彻落实党的十八大和十八届二中、三中、四中全会，以及中央经济工作会议、中央农村工作会议精神，总结2014年林业工作，部署2015年和今后一个时期林业工作。党的十八大以来，全国林业系统深入学习领会习近平总书记系列重要讲话精神，牢固树立中国特色社会主义生态观，认真落实党中央、国务院的决策部署，坚持把林业放在国家全局中来认识、来谋划，立足改善生态改善民生发展林业。我们的总体思路和重点工作，符合国家发展大局和林业发展规律，顺应了人民群众期待，与地方各级党委政府实现了同频共振，所以林业的形势越来越好、发展越来越快、影响越来越大。当前，我国经济发展已经进入新常态，林业改革发展的内外部环境正在发生深刻变化。各级林业部门要科学把握新常态，主动适应新常态，全力服务新常态，全面提升生态林业民生林业发展水平，为改善生态改善民生作出新的更大贡献。</p>
			</div>
		</div>
</div>
'
end


snippet '视频：video' do |s|
  s.trigger = 'video'
  s.expansion = '
<div class="pre-video">
	<div class="hd c-tit cl">
		<h1 class="fl"><img src="images/ico4.png"/><em>视频报道</em></h1>
		<a href="#" class="more">更多>></a>
	</div>
	<div class="bd">
		<div class="inner">
			<ul class="cl">
				<li>
					<div class="pic-box">
						<a class="video-ico" href="#"></a>
						<a href="#"><img src="images/sp1.jpg" /></a>
					</div>
					<div class="pic-tit ">
						<div class="pic-txt ell"><a href="#">国家林业局副局长国家林业局副局长国家林业局副局长国家林业局副局长 陈凤学</a></div>
						<div class="pic-txt-bg"></div>
					</div>
				</li>
				<li>
					<div class="pic-box">
						<a class="video-ico" href="#"></a>
						<a href="#"><img src="images/sp1.jpg" /></a>
					</div>
					<div class="pic-tit">
						<div class="pic-txt ell"><a href="#">国家林业局副局长 陈凤学</a></div>
						<div class="pic-txt-bg"></div>
					</div>
				</li>
				<li>
					<div class="pic-box">
						<a class="video-ico" href="#"></a>
						<a href="#"><img src="images/sp1.jpg" /></a>
					</div>
					<div class="pic-tit">
						<div class="pic-txt ell"><a href="#">国家林业局副局长 陈凤学</a></div>
						<div class="pic-txt-bg"></div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
'
end

		

snippet 'newpage.html' do |s|
  s.trigger = 'newpagehtml'
  s.expansion = '<!DOCTYPE html>
<html lang="zh-cn">
	<html>

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>标题</title>
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/icon.css" />
	</head>

	<body>

		<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>

		<script>
			\$(function() {
				
			})
		</script>

	</body>

	</html>'
end


end


with_defaults :scope => 'text.html entity.other.attribute-name.html' do |bundle|  #=====HTML属性代码块====================================================
#如下是一个示例代码块，可以复制后再添加新代码块
  snippet 'ng-' do |s|   #ng-是显示名称，代码助手提示列表显示时可见
    s.trigger = 'ng-'		 #ng-是激活字符，即按下ng-后会触发该代码块
    s.expansion='ng-${1:app/bind/bind-html/bind-template/blur/change/checked/class/class-even/class-odd/click/cloak/controller/copy/csp/cut/dblclick/disabled/focus/hide/href/if/include/init/keydown/keypress/keyup/list/model/mousedown/mouseenter/mouseleave/mousemove/mouseover/mouseup/ng-non-bindable/open/options/paste/readonly/repeat-start/repeat-end/selected/show/src/srcset/style/submit/swipe-left/swipe-right/switch/switch-default/switch-when/view}="$2"'
		#expansion是代码块的输出内容，其中$0、$1是光标的停留和切换位置。
	  #$1是第一个停留光标，$0是最后回车时停留的光标。
	  #使用{}包围的内容，是提示值域。
	  #如果输出涉及到换行和tab，也需严格在这里使用换行和tab。
	  #输出双引号在前面加\来转义，输出$使用\$(单引号中)或\\$(双引号中)转义
    s.locationType='HTML_ATTRIBUTE'
  end #ng代码块结束

end


with_defaults :scope => 'text.html - source', :input => :none, :output => :insert_as_snippet do |bundle|  #=====无显示名称的快捷命令=======================
=begin
如下示例均为系统已经预置的命令，无需重复制作
示例1 Ctrl+Enter输出<br />
  command t(:quick_br) do |cmd|
    cmd.key_binding = 'M2+ENTER'
    cmd.output = :insert_as_snippet
    cmd.input = :none
    cmd.invoke { "<br />" }
  end
示例2 Ctrl+9为选中文字添加包围标签
  command t(:wrap_selection_in_tag_pair) do |cmd|
    cmd.key_binding = "CONTROL+9"
    cmd.input = :selection
    cmd.invoke do |context|
      selection = ENV['TM_SELECTED_TEXT'] || ''
      if selection.length > 0
        "<${1:p}>#{selection.gsub('/', '\/')}</${1:p}>"
      else
        "<${1:p}>$0</${1:p}>"
      end
    end
  end
=end
#可复制一段命令，在下面开始制作新命令
  
end
