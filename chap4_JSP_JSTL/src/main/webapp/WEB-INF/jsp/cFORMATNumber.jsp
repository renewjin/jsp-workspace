<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자값 넣기</title>
</head>
<body>
	<h1>format 태그 예제 : 숫자편</h1>
	<c:set var="price" value="150.75" />
	<fmt:formatNumber value="${price}" type="currency"/>
	
	<pre>
	uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
	날짜와 숫자를 쉽게 포맷팅 할 수 있도록 도와주는 태그
	날짜를 특정 형식으로 출력하거나, 숫자를 통화, 퍼센트 형식으로 변환할 수 있음
	숫자 포멧팅 태그
	fmt:formatNumber
	숫자를 특정 형식으로 변형할 때 사용
	currency : 숫자를 현재 위치한 지역에 맞춰 통화 기호가 자동으로 추가 $ ₩ €
	percent	 : 숫자를 퍼센트 형식으로 변환
	number	 : 숫자를 소수점 자리까지 조정하면서 표현할 수 있음
		maxFractionDigits : 지정한 소수점 자리 이하까지만 보여주기
		maxIntegerDigits : 최소 지정한 자리 수 이상 소수점에서 보여주기
	<c:set var="n" value="1234567.89" />
	<p>
		일반적인 숫자 : <fmt:formatNumber var="${n}" type="number" />
	</p>
	<p> 소수점 2자리까지 표현 : 
		<fmt:formatNumber var="${n}" type="number" maxFractionDigits="2"/>
		<fmt:formatNumber var="${n}" type="number" maxIntegerDigits="2"/>
	</p>
	</pre>
</body>
</html>