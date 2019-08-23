<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面进入SweeBlog后台页面</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="../statics/css/font.css">
        <link rel="stylesheet" href="../statics/css/xadmin.css">
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
        <script src="../statics/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="../statics/js/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
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
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input" autocomplete="off" placeholder="开始日" name="start" id="start"></div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input" autocomplete="off" placeholder="截止日" name="end" id="end"></div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input keywords"></div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn likebtn" lay-submit="" lay-filter="sreach">
                                        <i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
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
    $(function(){
    	queryUser();
   }) 
   
   function queryUser(){
    	layui.use('table', function(){
      	  var table = layui.table;
      	  $.getJSON("../allUser.action",function(data){
      	  //展示已知数据
      	  table.render({
      	    elem: '#demo'
      	    ,cols: [[//标题栏
      	    		{type:'numbers' ,title:'编号'}
      	    		,{type:'checkbox'}
      	    		,{field:'user_id',title: 'id', width:80, sort: true}
      	      		,{field:'user_name',title: '用户名', width:120}
                      ,{field:'user_sex',title: '性别', width:80}
                      ,{field:'user_tel',title: '手机号码', width: 130}
                      ,{field:'user_money',title: '博客币', width: 80}
                      ,{field:'user_credit', title: '积分',sort: true,width:80}
                      ,{field:'user_register',title: '注册时间',sort: true,minWidth: 120}
                      ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:200}
      	    ]]
      	    ,data: data
      	    ,skin: 'line' //表格风格
      	    ,even: true
      	    ,page: true //是否显示分页
      	    ,limits: [5, 7, 10]
      	    ,limit: 10 //每页默认显示的数量
      	  });
      	});
      })
    }
   
   
   /* 模糊查询用户*/
   $(".likebtn").click(function(){
	   /* console.log($(".keywords").val()); */
	   console.log("模糊查询");
	   layui.use('table', function(){
    	  var table = layui.table;
    	  $.getJSON("../likeUser.action",{keyword:$(".keywords").val()},function(data){
    	  //展示已知数据
    	  table.render({
    	    elem: '#demo'
    	    ,cols: [[//标题栏
    	    		{type:'numbers' ,title:'编号'}
  	    			,{type:'checkbox'}
    	    		,{field:'user_id',title: 'id', width:80, sort: true}
    	      		,{field:'user_name',title: '用户名', width:120, edit: 'text'}
                    ,{field:'user_sex',title: '性别', width:80,templet: '#switchTpl'}
                    ,{field:'user_tel',title: '手机号码', edit: 'text', minWidth: 100}
                    ,{field:'user_money',title: '博客币', edit: 'text', minWidth: 100}
                    ,{field:'experience', title: '积分',sort: true}
                    ,{field:'user_register',title: '注册时间',sort: true,minWidth: 150}
                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
    	    ]]
    	    ,data: data
    	    ,skin: 'line' //表格风格
    	    ,even: true
    	    ,page: true //是否显示分页
    	    ,limits: [5, 7, 10]
    	    ,limit: 10 //每页默认显示的数量
    	  });
    	});
    })
   })
 </script>
 
 
 
  	<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script type="text/javascript">
	layui.use('table', function(){
  		var table = layui.table;
  		//监听表格复选框选择
  		/* table.on('checkbox(demo)', function(obj){
    		console.log(obj);
  		}); */
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    /*查看操作*/
    if(obj.event === 'detail'){
      /* layer.msg('ID：'+ data.user_id + ' 的查看操作'); */
      
      
      
      
    } else if(obj.event === 'del'){
    /*删除操作*/
    
      layer.confirm('真的删除行么', function(index){
    	  console.log(data.user_id);
           obj.del();
          layer.close(index); 
    	  
    	
    	
    	  }); 
    } else if(obj.event === 'edit'){
      /* layer.alert('编辑行：<br>'+ JSON.stringify(data)) */
      /*编辑操作*/
    	layer.open({
    		  type: 1 //Page层类型
    		  ,area: ['500px','400px']
    		  ,title: '用户'+data.user_name+'的信息修改'
    		  ,shade: 0.6 //遮罩透明度
    		  ,maxmin: true //允许全屏最小化
    		  ,anim: 1 //0-6的动画形式，-1不开启
    		  ,content: "<br /><form class='layui-form' action=''>  <div class='layui-form-item'>    <label class='layui-form-label'>用户ID</label>    <div class='layui-input-block' style='width:300px'>      <input type='text' name='user_id' required readonly='readonly' lay-verify='required' placeholder=''value="+data.user_id+" autocomplete='off' class='layui-input'></div></div><div class='layui-form-item'> 	<label class='layui-form-label'>用户名</label>    <div class='layui-input-block' style='width:300px'>      <input type='text' name='user_name' required   lay-verify='required' placeholder='' value="+data.user_name+" autocomplete='off' class='layui-input'></div></div><div class='layui-form-item'>   <label class='layui-form-label'>性别</label>   <div class='layui-input-block' style='width:300px'> <input type='radio' name='user_sex' value='男' title='男'><div class='layui-unselect layui-form-radio'><i class='layui-anim layui-icon'></i><div>男</div></div>      <input type='radio' name='user_sex' value='女' title='女' checked=''><div class='layui-unselect layui-form-radio layui-form-radioed'><i class='layui-anim layui-icon'></i><div>女</div></div></div></div><div class='layui-form-item'> 	<label class='layui-form-label'>博客币</label>    <div class='layui-input-block' style='width:300px'>      <input type='text' name='user_money' required  value="+data.user_money+"  lay-verify='required' placeholder='请输入标题' autocomplete='off' class='layui-input'>    </div></div>  <div class='layui-form-item'>    <div class='layui-input-block'>      <button class='layui-btn' lay-submit lay-filter='formDemo'>立即提交</button>      <button type='reset' class='layui-btn layui-btn-primary'>重置</button>    </div>  </div></form>"
    		}); 
      
      
    	layui.use('form', function(){
    		  var form = layui.form;
    		  
    		  //监听提交
    		  form.on('submit(formDemo)', function(data){
    			 //$.getJSON("../updateUser.action",{user:data.field},function(data1){
    			 $.ajax({
            //请求方式
            type : "GET",
            //请求的媒体类型
            contentType: "application/json;charset=UTF-8",
            //请求地址
            url : "../updateUser.action",
            //数据，json字符串
            data : data.field,
            //请求成功
            success : function(result) {
                console.log(result);
            },
            //请求失败，包含具体的错误信息
            error : function(e){
                console.log(e.status);
                console.log(e.responseText);
            }
        });
    			 //})
    		    /* layer.msg(JSON.stringify(data.field).); */
    			 /* console.log(data.field); */
    		    /* return false; */
    		  });
    		  form.render();
    		});
    	
    	
    }
    
  });
  
  
 /*  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  }); */
});
</script>
    <script type="text/html" id="toolbarDemo">
        <div class = "layui-btn-container" > 
            <button class = "layui-btn layui-btn-sm" lay-event = "getCheckData" > 获取选中行数据 </button>
            <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button > 
            <button class = "layui-btn layui-btn-sm" lay-event = "isAll" > 验证是否全选</button>
        </div > 
    </script>
    <script type="text/html" id="switchTpl">
        <!-- 这里的checked的状态只是演示 -->
        <input type = "checkbox" name = "sex" value = "{{d.id}}" lay-skin = "switch"lay-text = "女|男" lay-filter = "sexDemo" {{ d.id == 10003 ? 'checked': ''}} >
    </script>
    <script>layui.use('laydate',
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

        });</script>
    <script>
    layui.use('table',
        function() {
            var table = layui.table;

            //监听单元格编辑
            table.on('edit(test)',
            function(obj) {
                var value = obj.value //得到修改后的值
                ,
                data = obj.data //得到所在行所有键值
                ,
                field = obj.field; //得到字段
                layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
            });

            //头工具栏事件
            table.on('toolbar(test)',
            function(obj) {
                var checkStatus = table.checkStatus(obj.config.id);
                switch (obj.event) {
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
                };
            });
        });
    </script>
    <script>
    var _hmt = _hmt || []; (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</html>