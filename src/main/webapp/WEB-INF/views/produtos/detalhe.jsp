<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${produto.titulo }</title>
</head>
<body class="produto">
	<div >
		<nav>
			<ul class="clearfix">
				<li>
					<a href="/sitevendas/carrinho" rel="nofollow">Seu carrinho(${carrinhoCompras.quantidade })</a>
				</li>
			</ul>
		</nav>
	</div>
	<h1>${produto.id }</h1>
	<h1 >Titulo: ${produto.titulo }</h1>
	<p>Descrição: <br> ${produto.descricao }</p>
	<section class="buy-options clearfix">
		<form action='<c:url value="/carrinho/add" />' method="post" class="container">
		<ul id="variants" class="clearfix">
			<input type="hidder" value="${produto.id }" name="produtoId"/>
			<c:forEach items="${produto.precos }" var="preco">
				<li class="buy-option" itemprop="offers" itemscope>
					<input type="radio" name="tipoPreco" class="variant-radio" id="tipoPreco" value="${preco.tipo }" checked />
					<label itemprop="category" class="variant-label">
						${preco.tipo }
					</label>
					<small class="compare-at-price">R$ 39,90</small>
					<p class="variant-price" itemprop="price">${preco.valor }</p>
				</li>
			</c:forEach>
		</ul>
		<button type="submit" class="submit-image icon-basket-all" alt="Compre agora" 
		title="Compre agora'${produto.titulo }'!">Compre agora</button>
		</form>
	</section>
	<p>Número de Páginas: ${produto.paginas }</p>
	<p>
	Data: <fmt:formatDate pattern="dd/MM/yyyy" value="${produto.data.time }"/>
	</p>
	
</body>
</html>