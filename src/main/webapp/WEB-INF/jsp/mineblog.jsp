<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="博主页" />
	<title>个人博客页</title>	
	<link rel="stylesheet" href="mineblogcss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="mineblogcss/style.css"> <!-- Resource style -->
	<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	<!--[if IE]>
		<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	    function fanhui(){
	      window.location.href="${pageContext.request.contextPath}/blog.html";
	   
	    }
	</script>
</head>
<body>
	<div class="cd-articles">
		<article>
			<header>
				<img src="images/img-1.png" alt="article image">
				<h1>${requestScope.title }</h1>
			</header>
		      <p>${requestScope.text}</p>
			
			<!-- <p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti cum quibusdam eaque, autem porro fuga laudantium culpa beatae laboriosam quos.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa eaque error quos consequuntur totam, esse commodi magnam dignissimos explicabo modi. Laborum temporibus enim eius quidem eum voluptatum eligendi. Nemo fuga at provident accusantium tempore eligendi alias sed! Provident veritatis adipisci deserunt. Totam repudiandae ducimus nemo aperiam assumenda. Odio quos, quam quod illum reiciendis sapiente doloremque quasi deserunt alias provident! Labore voluptatibus excepturi, ipsum et sint nihil delectus enim, commodi quis!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore dicta praesentium dolor asperiores nesciunt quod sapiente est minus, architecto corrupti, excepturi hic ipsa, saepe dignissimos similique ullam repudiandae rem voluptate. Ipsa iusto, voluptate doloremque facere expedita, molestias omnis facilis. Adipisci voluptatum, quia alias aut sint totam facere porro aperiam repellat ipsa? Odio ut sint dicta magnam molestias maiores eos impedit natus iste quas perspiciatis voluptas autem, illum qui aperiam labore necessitatibus incidunt, placeat reiciendis facilis iusto reprehenderit. Ad, quisquam, voluptatibus!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero laborum omnis iure cumque veritatis reiciendis, optio ad. Praesentium, illum. Deleniti ab rem laboriosam numquam natus explicabo sit cumque provident maxime.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae modi facilis vel distinctio itaque ea, commodi a autem, amet explicabo harum libero vero earum doloremque officiis, dolorum beatae soluta officia dignissimos. Ad odit ab, error illo! Iure numquam recusandae unde dignissimos aspernatur quia neque, voluptatibus ea, iste eaque corporis doloribus.
			</p> -->
		<!-- </article>

		<article>
			<header>
				<img src="img/img-1.png" alt="article image">
				<h1>How ‘Star Wars’ Brought Kim Kardashian and Kanye West Together</h1>
			</header>

			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis maxime id, sunt, eum sed blanditiis aliquid! Minus assumenda tempore perspiciatis, numquam est aliquam, quis molestias enim consequuntur suscipit similique cumque ut natus facilis laboriosam quidem, nesciunt quasi doloribus tenetur. Quas doloremque suscipit, molestias odit, et quasi? Quas hic numquam, vitae?
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti cum quibusdam eaque, autem porro fuga laudantium culpa beatae laboriosam quos.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa eaque error quos consequuntur totam, esse commodi magnam dignissimos explicabo modi. Laborum temporibus enim eius quidem eum voluptatum eligendi. Nemo fuga at provident accusantium tempore eligendi alias sed! Provident veritatis adipisci deserunt. Totam repudiandae ducimus nemo aperiam assumenda. Odio quos, quam quod illum reiciendis sapiente doloremque quasi deserunt alias provident! Labore voluptatibus excepturi, ipsum et sint nihil delectus enim, commodi quis!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore dicta praesentium dolor asperiores nesciunt quod sapiente est minus, architecto corrupti, excepturi hic ipsa, saepe dignissimos similique ullam repudiandae rem voluptate. Ipsa iusto, voluptate doloremque facere expedita, molestias omnis facilis. Adipisci voluptatum, quia alias aut sint totam facere porro aperiam repellat ipsa? Odio ut sint dicta magnam molestias maiores eos impedit natus iste quas perspiciatis voluptas autem, illum qui aperiam labore necessitatibus incidunt, placeat reiciendis facilis iusto reprehenderit. Ad, quisquam, voluptatibus!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero laborum omnis iure cumque veritatis reiciendis, optio ad. Praesentium, illum. Deleniti ab rem laboriosam numquam natus explicabo sit cumque provident maxime.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae modi facilis vel distinctio itaque ea, commodi a autem, amet explicabo harum libero vero earum doloremque officiis, dolorum beatae soluta officia dignissimos. Ad odit ab, error illo! Iure numquam recusandae unde dignissimos aspernatur quia neque, voluptatibus ea, iste eaque corporis doloribus.
			</p>
		</article>

		<article>
			<header>
				<img src="img/img-1.png" alt="article image">
				<h1>How Audiences Reacted to the Star Wars: The Force Awakens Premiere</h1>
			</header>

			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis maxime id, sunt, eum sed blanditiis aliquid! Minus assumenda tempore perspiciatis, numquam est aliquam, quis molestias enim consequuntur suscipit similique cumque ut natus facilis laboriosam quidem, nesciunt quasi doloribus tenetur. Quas doloremque suscipit, molestias odit, et quasi? Quas hic numquam, vitae?
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti cum quibusdam eaque, autem porro fuga laudantium culpa beatae laboriosam quos.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa eaque error quos consequuntur totam, esse commodi magnam dignissimos explicabo modi. Laborum temporibus enim eius quidem eum voluptatum eligendi. Nemo fuga at provident accusantium tempore eligendi alias sed! Provident veritatis adipisci deserunt. Totam repudiandae ducimus nemo aperiam assumenda. Odio quos, quam quod illum reiciendis sapiente doloremque quasi deserunt alias provident! Labore voluptatibus excepturi, ipsum et sint nihil delectus enim, commodi quis!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore dicta praesentium dolor asperiores nesciunt quod sapiente est minus, architecto corrupti, excepturi hic ipsa, saepe dignissimos similique ullam repudiandae rem voluptate. Ipsa iusto, voluptate doloremque facere expedita, molestias omnis facilis. Adipisci voluptatum, quia alias aut sint totam facere porro aperiam repellat ipsa? Odio ut sint dicta magnam molestias maiores eos impedit natus iste quas perspiciatis voluptas autem, illum qui aperiam labore necessitatibus incidunt, placeat reiciendis facilis iusto reprehenderit. Ad, quisquam, voluptatibus!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero laborum omnis iure cumque veritatis reiciendis, optio ad. Praesentium, illum. Deleniti ab rem laboriosam numquam natus explicabo sit cumque provident maxime.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae modi facilis vel distinctio itaque ea, commodi a autem, amet explicabo harum libero vero earum doloremque officiis, dolorum beatae soluta officia dignissimos. Ad odit ab, error illo! Iure numquam recusandae unde dignissimos aspernatur quia neque, voluptatibus ea, iste eaque corporis doloribus.
			</p>
		</article>

		<article>
			<header>
				<img src="img/img-1.png" alt="article image">
				<h1>The Ultimate Star Wars Dictionary for Dummies</h1>
			</header>

			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis maxime id, sunt, eum sed blanditiis aliquid! Minus assumenda tempore perspiciatis, numquam est aliquam, quis molestias enim consequuntur suscipit similique cumque ut natus facilis laboriosam quidem, nesciunt quasi doloribus tenetur. Quas doloremque suscipit, molestias odit, et quasi? Quas hic numquam, vitae?
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti cum quibusdam eaque, autem porro fuga laudantium culpa beatae laboriosam quos.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa eaque error quos consequuntur totam, esse commodi magnam dignissimos explicabo modi. Laborum temporibus enim eius quidem eum voluptatum eligendi. Nemo fuga at provident accusantium tempore eligendi alias sed! Provident veritatis adipisci deserunt. Totam repudiandae ducimus nemo aperiam assumenda. Odio quos, quam quod illum reiciendis sapiente doloremque quasi deserunt alias provident! Labore voluptatibus excepturi, ipsum et sint nihil delectus enim, commodi quis!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore dicta praesentium dolor asperiores nesciunt quod sapiente est minus, architecto corrupti, excepturi hic ipsa, saepe dignissimos similique ullam repudiandae rem voluptate. Ipsa iusto, voluptate doloremque facere expedita, molestias omnis facilis. Adipisci voluptatum, quia alias aut sint totam facere porro aperiam repellat ipsa? Odio ut sint dicta magnam molestias maiores eos impedit natus iste quas perspiciatis voluptas autem, illum qui aperiam labore necessitatibus incidunt, placeat reiciendis facilis iusto reprehenderit. Ad, quisquam, voluptatibus!
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero laborum omnis iure cumque veritatis reiciendis, optio ad. Praesentium, illum. Deleniti ab rem laboriosam numquam natus explicabo sit cumque provident maxime.
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae modi facilis vel distinctio itaque ea, commodi a autem, amet explicabo harum libero vero earum doloremque officiis, dolorum beatae soluta officia dignissimos. Ad odit ab, error illo! Iure numquam recusandae unde dignissimos aspernatur quia neque, voluptatibus ea, iste eaque corporis doloribus.
			</p>
		</article> -->

		<aside class="cd-read-more">
			<ul>
				<li>
					<a href="javascript:fanhui()">
					    <em>${requestScope.title}</em>
						<b>博主  by ${requestScope.name}</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

			<!-- 	<li>
					<a href="how-star-wars-brought-kim-and-kanye.html">
						<em>How ‘Star Wars’ Brought Kim and Kanye</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

				<li>
					<a href="how-audiences-reacted-to-the-star-wars.html">
						<em>How Audiences Reacted to the Star Wars</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

				<li>
					<a href="the-ultimate-star-wars-dictionary.html">
						<em>The Ultimate Star Wars Dictionary</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li> -->
			</ul>
		</aside> <!-- .cd-read-more -->
	</div> <!-- .cd-articles -->

	
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	
</body>
</html>