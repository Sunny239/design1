<%@page import="jdk.management.resource.internal.TotalResourceContext"%>
<%@page import="com.cart.entity.CartItem"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cart.service.Cart,com.cart.entity.CartItem"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Checkout</title>
<link href="/design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/design/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="/design/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="/design/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/design/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="/design/js/simpleCart.min.js"> </script>
<script src="/design/js/cart.js"></script>
<!-- slide -->
<style>
	p.p_num {
    width: 78px;
    height: 24px;
    border-top: solid 1px #d0d0d0;
    position: relative;
    border-bottom: solid 1px #d0d0d0;
    margin-top: -3px;
}
 
span.sy_minus,span.sy_plus {
    width: 15px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    display: block;
    position: absolute;
    top: 0px;
    font-size: 14px;
    border: solid 1px #d0d0d0;
    background: #ebebeb;
    cursor: pointer;
    border-top: none;
    border-bottom: none;
}
 
span.sy_minus {
    left: 0px;
}
 
span.sy_plus {
    right: 0px;
}
 
input.sy_num {
    width: 44px;
    height: 18px;
    line-height: 24px;
    text-align: center;
    position: absolute;
    top: 0px;
    left: 17px;
}
 
</style>
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
		<div class="col-md-4 world">
					
				</div>
				<div class="col-md-4 logo">
					<a href="/design/index.jsp"><img src="/design/images/logo.png" alt=""></a>	
				</div>
		
			<div class="col-md-4 header-left">		
					<p class="log"><a href="/design/login.jsp"  >登录</a>
						<span>or</span><a  href="/design/register.jsp"  >注册</a></p>
					<div class="cart box_1">
						<a href="/design/checkout.jsp">
						<h3> <div class="total">
							<span class="simpleCart_total"></span></div>
							<img src="/design/images/cart.png" alt=""/></h3>
						</a>
						<p><a href="/design/checkout.jsp" class="simpleCart_empty">查看购物车</a></p>

					</div>
					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="col-md-2 number">
					<span><i class="glyphicon glyphicon-phone"></i>085 596 234</span>
				</div>
	<div class="col-md-8 h_menu4">
				<ul class="memenu skyblue">
					  <li class=" grid"><a  href="/design/index.jsp">Home</a></li>	
				      <li><a  href="#">Men</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>All Clothing</h4>
									<ul>
										<li><a href="products.html">Shirts</a></li>
										<li><a href="products.html">Sports Wear</a></li>
										<li><a href="products.html">Shorts</a></li>
										<li><a href="products.html">Suits & Blazers</a></li>
										<li><a href="products.html">Formal Shirts</a></li>
										<li><a href="products.html">Sweatpants</a></li>
										<li><a href="products.html">Swimwear</a></li>
										<li><a href="products.html">Trousers & Chinos</a></li>
										<li><a href="products.html">T-Shirts</a></li>
										<li><a href="products.html">Underwear & Socks</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Footwear</h4>
									<ul>
										<li><a href="products.html">Formal Shoes</a></li>
										<li><a href="products.html">Boots</a></li>
										<li><a href="products.html">Sports Shoes</a></li>
										<li><a href="products.html">Casual Shoes</a></li>
										<li><a href="products.html">Running Shoes</a></li>
										<li><a href="products.html">Sneakers</a></li>
										<li><a href="products.html">Loafers</a></li>
										<li><a href="products.html">Slippers</a></li>
										<li><a href="products.html">Sandals</a></li>
										<li><a href="products.html">Flip-flops</a></li>
									
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a  href="#">	Women</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>All Clothing</h4>
									<ul>
										<li><a href="products.html">Shirts & Tops</a></li>
										<li><a href="products.html">Sports Wear</a></li>
										<li><a href="products.html">Kurtas & Kurties</a></li>
										<li><a href="products.html">Suits & Blazers</a></li>
										<li><a href="products.html">Sarees</a></li>
										<li><a href="products.html">Sweatpants</a></li>
										<li><a href="products.html">Swimwear</a></li>
										<li><a href="products.html">Night-Suits</a></li>
										<li><a href="products.html">T-Shirts</a></li>
										<li><a href="products.html">Jeans</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Footwear</h4>
									<ul>
										<li><a href="products.html">Heels</a></li>
										<li><a href="products.html">Flats</a></li>
										<li><a href="products.html">Sports Shoes</a></li>
										<li><a href="products.html">Casual Shoes</a></li>
										<li><a href="products.html">Running Shoes</a></li>
										<li><a href="products.html">Wedges</a></li>
										<li><a href="products.html">Boots</a></li>
										<li><a href="products.html">Pumps</a></li>
										<li><a href="products.html">Slippers</a></li>
										<li><a href="products.html">Flip-flops</a></li>
									
									</ul>
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>
				<li><a  href="/design/typo.jsp">Blog</a></li>				
				<li><a class="color6" href="/design/contact.jsp">Conact</a></li>
			  </ul> 
			</div>
				<div class="col-md-2 search">		
			<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a>
		</div>
		<div class="clearfix"> </div>
			<!---pop-up-box---->
					  <script type="text/javascript" src="/design/js/modernizr.custom.min.js"></script>    
					<link href="/design/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="/design/js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
				<div class="search-top">
						<div class="login">
							<input type="submit" value="">
							<input type="text" value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">		
						</div>
						<p>	Shopping</p>
					</div>				
				</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>			
	<!---->		
		</div>
	</div>
</div>

<!--//header-->
<!---->
<div class="container">
	<div class="check-out">
		<h1>Checkout</h1>
		<%
			Cart c = (Cart)session.getAttribute("cart");
			if(c==null){%>
				<h4 class="title">购物车是空的</h4>
				<p class="cart">您的购物车中没有商品<br>点击<a href="/design/index.jsp"> 这里</a> 继续购物</p>
			<%}else{
				int totaoprice = 0;
				Iterator i = c.container.values().iterator();%>
				<table ><tr><th>
				</th><th>商品</th><th>数量</th><th>单价</th><th>详情</th><th>总价</th><th>操作</th></tr>
				<% while(i.hasNext()){
					CartItem ci = (CartItem)i.next();%>
					<tr>
						<td><input type="checkbox" name="cartcheckbox" onclick="selectSingle()"></td>
						<td class="ring-in">
						<a href="/design/single.jsp" class="at-in"><img src="/design/images/ce.jpg" class="img-responsive" alt=""></a>
						<div class="sed">
							<h5><%=ci.getProduct().getName() %></h5>
							<p>(At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium) </p>
						
						</div>
						<div class="clearfix"> </div></td>
						<td>
						<p class="p_num">
							<a href="${ctx }/cart/jian?productId=<%=ci.getProduct().getId()%>"><span class="sy_minus" id="sy_minus_gid1">-</span></a>
				            <input class="sy_num" id="sy_num_gid1"  type="text" name="number1" value="<%=ci.getCount() %>" /> 
				            <a href="${ctx }/cart/jia?productId=<%=ci.getProduct().getId()%>"><span class="sy_plus" id="sy_plus_gid1">+</span></a>
				        </p>
				        </td>		
						<td><%=ci.getProduct().getPrice() %></td>
						<td><%=ci.getProduct().getDescription()%></td>
						<td><%=ci.getProduct().getPrice()*ci.getCount() %></td>
						<td><a href="${ctx }/cart/del?productId=<%=ci.getProduct().getId()%>"><img src="/design/images/laji.jpg" width="15px" height="20px"/></a></td>
						<%
							totaoprice +=ci.getProduct().getPrice()*ci.getCount();
						%>
				  </tr>	  
						
				<%}
					out.print("<tr><td colspan='5'></td><td>合计:"+totaoprice+"<td></tr>");
				%> 
				<tr><td><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />全选</td>
					
					<td colspan="3"></td>					
					
				</tr>
				<tr><td><a href="${ctx }/cart/delall"><img src="/design/images/del.jpg" width="98px" height="25px"/></a></td>
					<td colspan="4"></td><td colspan="2"><a href="#" class=" to-buy" >购买</a></td>
				</tr>
				
				</table>
			<% } %>
				
			
	
	<div class="clearfix"> </div>
    </div>
</div>
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="footer-top">
			<div class="col-md-4 top-footer1">
				<h2>Newsletter</h2>
					<form>
						<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<input type="submit" value="SUBSCRIBE">
					</form>
			</div>
			<div class="clearfix"> </div>	
		</div>	
	</div>
	<div class="footer-bottom">
		<div class="container">
				<div class="col-md-3 footer-bottom-cate">
					<h6>Categories</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate">
					<h6>Feature Projects</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate">
					<h6>Top Brands</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate cate-bottom">
					<h6>Our Address</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 6985792466</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
	</div>
</div>

<!--//footer-->
</body>
</html>