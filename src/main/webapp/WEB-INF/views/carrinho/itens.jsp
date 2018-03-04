<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!doctype html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/230/assets/favicon.png?4111664977241997176" type="image/png"/>
	<link href="https://plus.google.com/108540024862647200608" rel="publisher">
<title>Seu carrinho de compras</title>
	
</head>
<body>
	<header role="banner" class="cabecalhoPrincipal container">
	

	<div id="navegacaoCabecalho" class="cabecalhoPrincipal-navegacao">
		

		<a tabindex="3" href="${s:mvcUrl('CCC#itens').build() }" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
			<svg width="60px" height="24px" viewBox="0 0 60 24" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
				<title id="sacolaLabel">
					Você tem (${carrinhoCompras.quantidade }) itens na sacola.
				</title>
				<g fill="none" fill-rule="evenodd" stroke="#FBFAF9" stroke-linecap="square" stroke-width="2">
					<path d="m47.550692,23l-18,0l0,-17l18,0l0,17z"/>
						<path d="m34.550692,9l0,-4c0,-2.2 1.8,-4 4,-4s4,1.8 4,4l0,4"/>
				</g>
				<g>
					<circle cy="14.681157" cx="13.148581" r="9" role="presentation" fill="#FFF"/>
					<text text-decoration="none" text-anchor="middle" x="13.148581" y="19" class="sacola-contador">2</text>
				</g>
			 </svg>
		</a>
<label>Você tem (${carrinhoCompras.quantidade }) itens na sacola.</label>
		

	</div>
</header>


	<main>
		

		<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carrinhoCompras.itens }" var="item">
				<tr>
					<td class="formularioDoCarrinho-item">
						<a href="/products/livro-soa-webservices">
							<img class="formularioDoCarrinho-item-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/soa-webservices-featured_small.png?v=1411567532" />
						</a>
					</td>
					<td class="formularioDoCarrinho-item">
						<h2 class="formularioDoCarrinho-item-titulo">${item.produto.titulo }</h2>
					</td>
					<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco }</td>
					<td class="formularioDoCarrinho-item">
						<input class="formularioDoCarrinho-item-quantidade"
							   type="number"
							   min="0"
							   id="quantidade"
							   name="quantidade"
							   value="${carrinhoCompras.getQuantidade(item) }">
					</td>
					<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="Preço unitário: R$29,90">
					${carrinhoCompras.getTotal(item) }</td>
					
					<td class="formularioDoCarrinho-item">
						
						<form action="${s:mvcUrl('CCC#remover').arg(0,item.produto.id).arg(1,item.tipoPreco).build() }" method="post">
						  <input type="image"
							 src="http:////cdn.shopify.com/s/files/1/0155/7645/t/230/assets/trash.png?4111664977241997176" 
							alt="Excluir" title="Excluir" />
						</form>
					</td>
				</tr>
			</c:forEach>
			
			
			
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
				<td colspan="3">
				   <form action="${s:mvcUrl('PC#finalizar').build() }" method="post">
						<input class="checkout" type="submit"
						 name="checkout" value="Finalizar compra" id="checkout" />
					</form>
				</td>
				
				<td class="formularioDoCarrinho-rodape-item">
					${carrinhoCompras.total }
				</td>
			
			</tr>
		</tfoot>
	</table>

	
</section>


<a href="/sitevendas/produtos">Voltar para a lista.</a>
	
	</main>
	


	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/230/assets/trackExternalLinks.js?4111664977241997176"></script>
	
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/230/assets/userreport.js?4111664977241997176"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/230/assets/discount.js?4111664977241997176"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/230/assets/menu.js?4111664977241997176"></script>
</body>
</html>
