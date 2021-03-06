<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário de cadastro de produtos</title>
</head>
<body>
<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST" commandName="produto">

		<div>
			<label>Titulo</label>
			<form:input path="titulo"/>
			<form:errors path="titulo"/>
		</div>
		<div>
			<label>Descrição</label>
			<form:textarea path="descricao" rows="10" cols="20"/>
			<form:errors path="descricao"/>
		</div>
	    <div>
	    	<label>Paginas</label>
	    	<form:input path="paginas"/>
	    	<form:errors path="paginas"/>
	    </div>
	    <div>
	    	<label>Data</label>
	    	<form:input path="data"/>
	    	<form:errors path="data"/>
	    </div>
	    
	    <c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
		    <div>
		    	<label>${tipoPreco }</label>
		    	<form:input path="precos[${status.index }].valor"/>
		    	<form:hidden path="precos[${status.index }].tipo" value="${tipoPreco }"/>
		    </div>
	    </c:forEach>
	    <button type="submit">Cadastrar</button>
	
</form:form>
</body>
</html>