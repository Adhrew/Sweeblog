<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
        <link rel="stylesheet" href="../statics/css/font.css">
        <link rel="stylesheet" href="../statics/css/xadmin.css">
        <script src="../statics/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="../statics/js/xadmin.js"></script>
    </head>
    
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">首页</a>
                <a href="">演示</a>
                <a>
                    <cite>导航元素</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="开始日" name="start" id="start"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="截止日" name="end" id="end"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="record_status" id="record_status">
                                        <option value="">订单状态</option>
                                        <option value="0">等待客户</option>
                                        <option value="1">进行中</option>
                                        <option value="2">正常结束</option>
                                        <option value="3">用户毁约</option>
                                        <option value="4">博主毁约</option>
                                    </select>
                                </div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="record_ok" id="record_ok">
                                        <option value="">确认状态</option>
                                        <option value="0">待确认</option>
                                        <option value="1">博主确认</option>
                                        <option value="2">客户确认</option>
                                        <option value="3">全部确认</option>
                                   </select>
                                </div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input type="text" name="username" id="blog_id" placeholder="请输入博客ID" autocomplete="off" class="layui-input"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <a class="layui-btn likebtn" lay-submit="" id="likbtn" lay-filter="sreach">
                                        <i class="layui-icon">&#xe615;</i></a>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <a class="layui-btn layui-btn-danger" onclick="delAll()">
                                <i class="layui-icon"></i>批量删除</a>
                            </div>
                        <div class="layui-card-body ">
                            <table class="layui-hide" id="demo"  lay-filter="demo">
                               
                                
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
    
    
    </script>
    
    
    
    
    
    <script type="text/javascript">
    $(function(){
    	layui.use('table', function(){
      	  var table = layui.table;
      	  $.getJSON("../allRecord.action",function(data){
      	  table.render({
  	    	elem: '#demo'
  	    	,cols: [[//标题栏
  	    		{type:'numbers' ,title:'编号'}
  	    		,{type:'checkbox'}
  	    		,{field:'record_id',title: '订单编号', width:80, sort: true}
  	      		,{field:'user_id',title: '买家ID', width:120,templet: '<div>{{d.user_id.user_name}}</div>'}
                  ,{field:'record_money',title: '总金额', width:80,templet: '#switchTpl'}
                  ,{field:'record_money',title: '应付金额', minWidth: 100}
                  ,{field:'record_status',title: '订单状态', minWidth: 100}
                  ,{field:'record_ok', title: '支付状态',sort: true}
                  ,{field:'record_starttime',title: '开始时间',sort: true,minWidth: 150}
                  ,{field:'record_endtime',title: '结束时间',sort: true,minWidth: 150}
                  ,{ title:'操作', toolbar: '#barDemo', width:150}
  	    ]]
  	    ,data: data
  	    ,skin: 'line' //表格风格
  	    ,even: true
  	    ,page: true //是否显示分页
  	    ,limits: [5, 7, 10]
  	    ,limit: 10 //每页默认显示的数量
  	  });
      	})
      	})
    })
    
    $(".likebtn").click(function(){
 	   /* console.log($(".keywords").val()); */
 	   /* console.log("模糊查询"); */
 	   /* console.log($("#start").val());
 	   console.log($("#end").val()); */
 	   /* console.log($("#start").val());
 	   console.log($("#end").val());
 	   console.log($("#record_ok option:selected").val()); */
 	  layui.use('table', function(){
     	  	var table = layui.table;
     	  /* console.log($(".keywords").val()); 
     	  console.log(1111);
     	  console.log($("#record_ok option:selected").val())*/
     	  $.getJSON("../queryRecordByLike.action",{blog_id:$("#blog_id").val(),record_ok:$("#record_ok option:selected").val(),record_status:$("#record_status option:selected").val(),starttime:$("#start").val(),endtime:$("#end").val()},function(data1){
    	  		/* console.log(data1);
    	  		console.log("11111111"); */
	   	  		table.render({
	    		elem: '#demo'
	    		,cols: [[//标题栏
	    			{type:'numbers' ,title:'编号'}
	    			,{type:'checkbox'}
		    		,{field:'record_id',title: '订单编号', width:80, sort: true}
		      		,{field:'user_id',title: '买家ID', width:120,templet: '<div>{{d.user_id.user_name}}</div>'}
	                ,{field:'record_money',title: '总金额', width:80,templet: '#switchTpl'}
	                ,{field:'record_money',title: '应付金额', minWidth: 100}
	                ,{field:'record_status',title: '订单状态', minWidth: 100}
	                ,{field:'record_ok', title: '确认状态',sort: true}
	                ,{field:'record_starttime',title: '开始时间',sort: true,minWidth: 150}
	                ,{field:'record_endtime',title: '结束时间',sort: true,minWidth: 150}
	                ,{title:'操作', toolbar: '#barDemo', width:150}
	    		]]
	    		,data: data1
			    ,skin: 'line' //表格风格
			    ,even: true
			    ,page: true //是否显示分页
			    ,limits: [5, 7, 10]
			    ,limit: 10 //每页默认显示的数量
	  			});
    	})
     })
    })
    </script>
    <script  type="text/html" id="barDemo">
    <a title="查看" onclick="xadmin.open('编辑','order-view.html')" href="javascript:;">
    <i class="layui-icon">&#xe63c;</i></a>
	<a title="删除" id="" onclick="member_del(this,layui.table)" href="javascript:;">
    <i class="layui-icon">&#xe640;</i></a>
    </script>
    <script>layui.use(['laydate', 'form'],
        function() {
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#start' //指定元素
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#end' //指定元素
            });
        });

        /*用户-停用*/
        function member_stop(obj, id) {
            layer.confirm('确认要停用吗？',
            function(index) {

                if ($(obj).attr('title') == '启用') {

                    //发异步把用户状态进行更改
                    $(obj).attr('title', '停用');
                    $(obj).find('i').html('&#xe62f;');

                    $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                    layer.msg('已停用!', {
                        icon: 5,
                        time: 1000
                    });

                } else {
                    $(obj).attr('title', '启用');
                    $(obj).find('i').html('&#xe601;');

                    $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                    layer.msg('已启用!', {
                        icon: 5,
                        time: 1000
                    });
                }

            });
        }

        /*用户-删除*/
        function member_del(obj, id) {
            layer.confirm('确认要删除吗？',
            function(index) {
                //发异步删除数据
                $(obj).parents('tr').remove();
               /*  console.log($(obj).parents('tr').find('td').eq(2)[0].innerText); */
				$.get("../delOrder.action",{orderid:$(obj).parents('tr').find('td').eq(2)[0].innerText},function(data){
					/* console.log($(obj).parents('tr').find('td').eq(2)[0].innerText); */
					if(data=='删除成功！'){
						layer.msg(data, {
		                    icon: 1,
		                    time: 1000
		                });	
					}else{
						layer.msg(data, {
		                    icon: 2,
		                    time: 1000
		                });
					}
				})
            });
        }

        function delAll(argument) {
            /* var data = $(".layui-form-checked").not('.header').parents('tr').find('td'); */
            /* console.log(argument); */
			/* console.log(data.eq(2)[0].innerText); */
			layer.confirm('确认要删除吗？',
		            function(index) {
		                //捉到所有被选中的，发异步进行删除
		                layer.msg('删除成功', {
		                    icon: 1
		                });
		                layui.each($(".layui-form-checked").not('.header').parents('tr'),function(index,item){
		                	if($(item).attr("data-index")!=null){
		                		$.get("../delCheckRecord.action",{record_arr:$(item).find('td').eq(2)[0].innerText},function(data){ 
				    				/* console.log($(obj).parents('tr').find('td').eq(2)[0].innerText); */
				    				layer.msg('删除成功！', {
				                        icon: 1,
				                        time: 1000
				                    });	
				    			});
		                	}
		                });
		                $(".layui-form-checked").not('.header').parents('tr').remove();
		            });
            
        }

        
        layui.use('table', function(){
      		var table = layui.table;
      		//监听表格复选框选择
      		table.on('checkbox(demo)', function(obj){
        		console.log(obj);
      		}); 
        })
        </script>

</html>