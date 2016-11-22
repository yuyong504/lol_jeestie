<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${category.description}" />
	<meta name="keywords" content="${category.keywords}" />
	<style>
		#champion_list{margin:0 auto;overflow:hidden;padding:20px 0 0;width:644px;}
		#champion_list li{color:#0080b9;float:left;height:110px;text-align:center;width:92px;}
		#champion_list .lol_champion{}#champion_list .lol_champion:hover img{border:1px solid #000000;background:#007ab1;}
		#champion_list .lol_champion img{width:78px;height:78px;padding:1px;background:#006699;border:1px solid #000000;}
		#champion_list .champion_name{height:22px;line-height:22px;}
		#champion_list .champion_search_text{display:none;}
	</style>
</head>
<body>
	<div class="row">
	   <div class="span2">
	   	 <h4>栏目列表</h4>
		 <ol>
		 	<cms:frontCategoryList categoryList="${categoryList}"/>
		 </ol>
	   </div>
	   <div class="span10">
		 <ul class="breadcrumb">
		    <cms:frontCurrentPosition category="${category}"/>
		 </ul>
	   </div>
       <div class="span10">
		  <h4>${category.name}</h4>
		  <ul id="champion_list">
		  <c:if test="${category.module eq 'article'}">
			<c:forEach items="${page.list}" var="article">
			<li class="boy_tag mage_tag jungle_tag" style="top: 0px; left: 0px; display: list-item;">
                        <a target="_blank" href="${article.url}" class="lol_champion"><img class="champion_icon" src="${article.image}"></a>
                        <div class="champion_name">${article.title}</div>
				<!--  <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,96)}</a></li> -->
			</c:forEach>
		  </c:if>
		</ul>
  	  </div>
   </div>
</body>
</html>