<!-- JSTL(JSP Standard Tag Library) 언어란?
액션 태그나 표현 언어(EL)를 사용하더라도 조건식이나 반복문에서는 여전히 자바코드를 사용하고 있다.
그래서 JSP페이지에서 자주 사용하는 자바코드를 대체하기 위해서 만든 코드.

< JSTL 사용하기 위해서 >
1. https://tomcat.apache.org/download-taglibs.cgi 로 접속하여 JAR파일을 다운받아
	WEB-INF안의 lib폴더에 넣는다.

 -->


<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 2. taglib 선언 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 1. c:out value="출력값(필수)" default="변수가 null일 경우 대체 출력값"
		escapeXml="true"일때 value값 쓰여진대로 그대로 출력 
		escapeXml="false"일때 특수문자로 출력

 -->
<h2>escapeXml 변환하기</h2>

<pre>
<!-- escapeXml="true"이면 &lt; 그대로 화면에 출력 -->
  <c:out  value="&lt;" escapeXml="true" /> <!-- "&lt;"출력 -->
  <c:out  value="&lt;" escapeXml="false" /><!-- "<" 출력 -->
 
  <c:out  value="&gt;" escapeXml="true" /> <!-- &gt;출력 -->
  <c:out  value="&gt;" escapeXml="false" /> <!-- > 출력 -->
 
  <c:out  value="&amp;" escapeXml="true" /><!-- &amp;출력 -->
  <c:out  value="&amp;" escapeXml="false" /><!-- & 출력 -->

  <c:out  value="&#039;" escapeXml="true" /><!-- &#039;출력 -->
  <c:out  value="&#039;" escapeXml="false" /><!-- ' 출력 -->
 
  <c:out  value="&#034;" escapeXml="true" /><!-- &#034;출력 -->
  <c:out  value="&#034;" escapeXml="false" /><!-- " 출력 -->
</pre>

	<hr>
	
<!-- 2. 변수 선언
c:set 
var="변수명" value="변수에 저장할 값"
 -->
	<c:set var="test" value="Hi~! Hello~!"  /><br>
	<c:out value="Hi~! Hello~!" /><!-- 그냥 출력 --><br>
	<c:out value="${test }" /> <!-- 변수명 사용시 --><br>
	<%-- 오류 <c:out value="<%=test %>" /> => <c:out value="out.println(test)" />  --%>
	
	<hr>
	
<!-- 3. 변수 삭제 c:set을 통해 정의된 변수를 삭제할 때 사용 -->
	<c:remove var="test" />
	<c:out value="test 변수 삭제 확인 = ${test }" /> 
	
	<hr>
	
	<c:set var="foo"  value="hello" scope="session"/>
	삭제 전 foo =<c:out value="${foo }" /> <br>
	 <c:remove var="foo" />
	삭제 후 foo =<c:out value="${foo }" /> <br>
	
	<hr>
	
<!-- 4. 예외처리 : 예외가 발생하면 예외객체를 변수 e가 잡아서 처리 
c:catch  -->
	<c:catch var="e">
		<%=2/0 %>	
	</c:catch>
	
	예외 객체 : <c:out value="${e }" /> <!-- java.lang.ArithmeticException: / by zero -->
	<hr>
	
<%--  5. c:if 
		test="${조건식}" 
		var="조건 결과를 저장할 변수이름" 
		scope="조건 결과를 저장할 변수의 범위(언제까지 사용가능하냐) 4가지 중 하나" 
		※ else 구문 없음  --%>
	<c:if test="${1+2 == 3}">
		1 + 2 는 3이다.
	</c:if>		
	<c:if test="${1+2 != 3}"><!-- else구문이 없으므로 하나 더 추가해서 대신 잡아줘야함 -->
		1 + 2 는 3이 아니다.
	</c:if>
	
	<br>
	
	<c:if test="${10%2 == 0}">
		짝수이다.
	</c:if>
	<c:if test="${10%2 != 0}">
		홀수이다.
	</c:if>
	
	<br>
	
	<c:if test="${(10 == 100) && (20==20)}"> <!-- && 대신 and도 사용가능 -->
		참이다.
	</c:if>
	<c:if test="${(10 != 100) || (20!=20)}"> <!-- || 대신 or도 사용가능 -->
		거짓이다.
	</c:if>
		
	<br>
		
	<!-- test 속성의 결과를 result변수이름으로 session영역에 저장함.
		 동일 세션의 다른 페이지에서 결과를 result변수로 찾아 공유 할 수 있다.
	 -->	
	<c:set var="name" value="홍길동"/>
	<c:if test="${name eq '홍길동' }" var="result" scope="session">
		<c:out value="${result }"/>	
	</c:if>
	
	<hr>
	
<!-- 6. c:choose 태그 switch~case와 비슷 
c:choose 	== switch
c:when 		== case
c:otherwise == default
-->
<!-- 예1 -->
	<c:choose>
	 <c:when test="${name eq '이순신' }">이순신 장군님 환영합니다.</c:when>
	 <c:when test="${name eq '홍길동' }">홍길동 도적님 환영합니다.</c:when>
	 <c:otherwise>이름이 뭐에요?</c:otherwise>
	</c:choose>
	
	<hr/>
	
	<!-- 예2 : c:choose를 사용하여 if~else문처럼 구현할 수 있다. -->
	<c:choose>
		<c:when test="${5+10 == 50}">5+10은 50이다.</c:when>
		<c:otherwise>5+10은 50이 아니다.</c:otherwise>
	</c:choose>
	
	<hr/>
	
	<!-- 예3 -->
	<c:set var="a" value="256" scope="session"/>
	<c:set var="result2" value="${a % 3 }" scope="session"/>
	
	<%-- ${result2 == 1 || result2 == 2} == ${result2 != 0} --%>
	<c:choose>
		<c:when test="${result2 == 1 || result2 == 2}"> ${a }은/는 3의 배수가 아니다.</c:when>
		<c:otherwise> ${a }은/는 3의 배수다.</c:otherwise> 
	</c:choose> --%>

	<hr/>
	
<!-- 7. 반복문
	c:forEach 
	var="반복문이 돌아갈때 현재 반복중인 값을 저장할 변수이름(필수)"
	items="반복할 객체이름(필수)" Correction 객체(List 등)
	begin="반복 시작index"(정의되지 않을 경우 기본값 0부터 시작)
	end="반복 종료되는 index"(기본값은 마지막 index자동 ※객체를 참조할 때만)
	step="반복할 때마다 건너뛸 index"(i++ 같은 조건)
	varStatus="반복 상태를 알 수 있는 변수" - index : items에서 정의한 항목을 가리키는 index번호, 0부터 시작
									  - count : 몇 번째 반복인지 나타냄. 1부터 시작
									  - first : 첫번째 반복이면 true, 아니면 false
									  - last : 마지막 반복이면 true, 아니면 false
 -->	
 
 	<!-- 예1.  0~30 사이의 값 중 3씩 증가하는 정수를 출력 varStatus="loop"에서 loop는 그냥 변수 이름이다. -->
 	<c:forEach var="fEach" begin="0" end="30" step="3" varStatus="loop"> 
 		<p>반복횟수 : 변수값 = ${loop.count} : ${fEach}</p>
 	</c:forEach>
	
	<hr/>
	
	<!-- 예2. 이름 목록을 가진 ArrayList 객체를 출력 -->
	<%@page import="java.util.ArrayList"%>
	<%
	List<String> nameList = new ArrayList<String>(Arrays.asList("홍길동","이순신","킹세종"));
	request.setAttribute("nameList2", nameList);
	%>
	
	<!-- 긴이름(nameList2) 그대로 사용 -->
	<c:forEach var="name" items="${nameList2 }" varStatus="status">
		<p>
		반복횟수 ${status.count } : ${name } <br/>
		반복횟수 ${status.index } : ${name } <br/>
		첫번째 반복 ${status.count } : ${name } <br/>
		마지막 반복 ${status.count } : ${name } <br/>
 		</p>
	
	</c:forEach>
	
	<hr/>
	속성명<br/>
	<!-- 긴 이름(속성명nameList2)을 짧은 이름으로 줄여 사용할때 변수를 새로 선언하여 사용한다.  
		※ EL언어로 쓴다 -->
	<c:set var="list" value="${nameList2}" />
	<c:forEach var="name" items="${list }" varStatus="status">
		<p>
		반복횟수 ${status.count } : ${name } <br/>
		반복횟수 ${status.index } : ${name } <br/>
		첫번째 반복 ${status.count } : ${name } <br/>
		마지막 반복 ${status.count } : ${name } <br/>
 		</p>
	
	</c:forEach>
	
	<hr/>
	참조변수명<br/>
	<!-- 긴 이름(참조변수 nameList)을 짧은 이름으로 줄여 사용할때 변수를 새로 선언하여 사용한다. 
		※※ 반드시 참조변수는 표현식 사용 -->
	<c:set var="list" value="<%=nameList %>" />
	<c:forEach var="name" items="${list }" varStatus="status">
		<p>
		반복횟수 ${status.count } : ${name } <br/>
		반복횟수 ${status.index } : ${name } <br/>
		첫번째 반복 ${status.count } : ${name } <br/>
		마지막 반복 ${status.count } : ${name } <br/>
 		</p>
	
	</c:forEach>

	<hr/>
<!-- 8. 토큰을 이용한 반복문 : 문자열을 특정기호로 잘라내어 반복하는 반복문(StringTokenizer)
c:forTokens
items="잘라낼 문자열"
delims="잘라낼 기준이 되는 기호"
var="잘라낸것을 저장할 변수이름"
 -->
	<c:forTokens var="fruit" items="사과,포도,바나나" delims=",">
		<li>과일 : ${fruit }</li>
	</c:forTokens>
	
	<hr/>
	
	<c:set var="name" value="홍길동, 고길동, 김길동" />
	<c:forTokens var="split_name" items="${name }" delims=", ">
		<li>이름 : ${split_name }</li>
	</c:forTokens>
	
	
	
	





	
</body>
</html>
