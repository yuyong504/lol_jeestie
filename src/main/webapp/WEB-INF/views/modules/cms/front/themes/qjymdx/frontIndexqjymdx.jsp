<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
	
<!DOCTYPE html>
<html>
<head>
	<title>首页${ctxStaticTheme}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
	<link href="${ctxStaticTheme}/style.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStaticTheme}/script.js" type="text/javascript"></script>
</head>
<body>
    <div class="hero-unit" style="padding-bottom:35px;margin:10px 0;">
      <c:set var="article" value="${fnc:getArticle('2')}"/>
      <h1>${fns:abbr(article.title,28)}</h1><p></p>
      <p>${fns:abbr(fns:replaceHtml(article.articleData.content),260)}</p>
      <p><a href="${article.url}" class="btn btn-primary btn-large">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a></p>
    </div>
    <div class="row">
      <div class="span4">
        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>英雄介绍</h4>
		<ul>
		<c:forEach items="${fnc:getArticleList(site.id, '4f435673257f409db5b561a9de776ed7', 8, '')}" var="article"><!-- 8 是显示的条数 2 是   cms_category 中的 id 4f435673257f409db5b561a9de776ed7-->
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach>
		</ul>
      </div>
      <div class="span4">
        <h4> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>英雄联盟讨论专区</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '78a61afe4e714f9f867a0ee74dda2b7c', 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>英雄联盟攻略</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '英雄联盟攻略', 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
    </div>
</body>
</html>