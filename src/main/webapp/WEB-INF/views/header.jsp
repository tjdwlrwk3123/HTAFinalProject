<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="display:inline-block;">
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: #4E61FF; height: 9%;">
                <div class="navbar-header">
                    <a href="${cp }/" class="navbar-brand easysLogo" align="center"><img src="/tour/resources/mainimg/흰글씨인가봄.png" style="width:30%;margin-top: 3px;margin-left: 10%;"></a>
                </div>
                <div style="border-radius: 15px 15px; background-color: white;height:50%; width:22%;display:inline-block; margin-top: 10px; ">
                 <div style="margin-top: 5px;">
                  <label style="margin-left:10px;"><i class="fas fa-search" style="color:#4E61FF"></i></label>  
                  <input type="text" style="width:80%; height:100%;border: none; background-color: white;color: black">
                  </div>
                  
                </div>
                <div style="margin-left:3%; width:22%;display: inline-block">
                    <div style="margin-left :10%;">
                     <a href ="${cp }/accomlist"><i class="fas fa-hotel" style="color:white"></i>
                     <span style="color: white; margin-left: 3%">숙박</span></a>
                     <a href="${cp }/tourSelect?tourType=0" style="margin-left: 10%;"><i class="fas fa-torii-gate" style="color:white"></i>
                     <span style="color: white; margin-left: 3%">투어</span></a>
                    </div>
                </div>
                
                <div style="margin-right::3%; width:22%;display: inline-block">
                    <div style="margin-left :8%;">
                     	<c:choose>
							<c:when test="${empty sessionScope.user_id }">
								<a href ="${cp }/userlogin">
									<span style="color:white; margin-left: 3%">로그인</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href ="${cp }/logout">
									<span style="color:white; margin-left: 3%">로그아웃</span>
								</a>
							</c:otherwise>
						</c:choose>
                     	<c:choose>
							<c:when test="${empty sessionScope.user_id }">
								<a href ="${cp }/userterms">
									<span style="color:white; margin-left: 3%">회원가입</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href ="${cp }/userinfopage">
									<span style="color:white; margin-left: 3%">마이페이지</span>
								</a>
							</c:otherwise>
						</c:choose>
                     <a href="#" style="margin-left: 10%;">
                     	<span style="color: white; margin-left: 3%">고객센터</span>
                     </a>
                    </div>
                </div>
               
                <div class="collapse navbar-collapse navbar-ex1-collapse" style="display: block;">
                    
                </div>
            </nav>
</div>