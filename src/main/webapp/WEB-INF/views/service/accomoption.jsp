<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div>
		<ul>
			<li><a href="${cp }/accommain">숙소서비스</a></li>
			<li><a href="${cp }/tourmain">투어서비스</a></li>
		</ul>
	</div>
	<div>
		<table>
			<tr>
				<th>옵션</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.accom_rooms_option }</td>
					<td><a href="${cp }/accomoptionupdate?accom_option_number=${vo.accom_option_number }">수정</a></td>
					<td><a href="${cp }/accomoptiondelete?accom_service_number=${accom_service_number }&accom_option_number=${vo.accom_option_number }">삭제</a></td>
				</tr> 
			</c:forEach>
		</table>
	</div>
	<div>
		<c:if test="${pu.startPageNum>1 }">
			<a href="${cp }/accomoption?accom_service_number=${accom_service_number }&pageNum=${pu.startPageNum-1}"><span style='color:gray'>[이전]</span></a>
		</c:if>
		<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
			<c:choose>
				<c:when test="${i==pu.pageNum }">
					<a href="${cp }/accomoption?accom_service_number=${accom_service_number }&pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
				</c:when>
				<c:otherwise>
					<a href="${cp }/accomoption?accom_service_number=${accom_service_number }&pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${pu.totalPageCount>pu.endPageNum }">
			<a href="${cp }/accomoption?accom_service_number=${accom_service_number }&pageNum=${pu.endPageNum+1}"><span style='color:gray'>[다음]</span></a>
		</c:if>
	</div>
	<div>
		<a href="${cp }/accomoptioninsert?accom_service_number=${accom_service_number }">옵션추가</a>
	</div>
</div>