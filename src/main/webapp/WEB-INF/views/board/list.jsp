<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<c:import url="/WEB-INF/views/templates/header.jsp"></c:import>

<title>board list</title>

<style>
  .pagination .page-link {
    padding: 0.5rem 1rem;      /* 기본보다 약간 큼 */
    font-size: 1.05rem;        /* 기본보다 살짝 큼 */
  }
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">	

		<c:import url="/WEB-INF/views/templates/sidebar.jsp"></c:import>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
				

			<!-- Main Content -->
			<div id="content">
			
				<c:import url="/WEB-INF/views/templates/topbar.jsp"></c:import>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					
					<!-- 본문 들어갈 contents 내용 -->
					<!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">${kind}</h1>                    

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach items="${list}" var="vo">
                                    		<tr>
                                    			<td>${vo.boardNum }</td>
                                    			<td>${vo.boardTitle }</td>
                                    			<td>${vo.userName }</td>
                                    			<td>${vo.boardDate }</td>
                                    			<td>${vo.boardHit }</td>
                                    		</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
				
					<!-- 페이지 검색바 + 페이지네이션 한 줄 -->
					<div id="div-wrapper" class="d-flex justify-content-between align-items-center flex-wrap mb-3">
					
					  <!-- div1: 왼쪽 검색바 -->
					  <div id="div1" class="text-start" style="width:30%;">
					    <form class="form-inline my-2">
					      <div class="input-group">
					        <input type="text" class="form-control border small" placeholder="Search for..."
					               aria-label="Search" aria-describedby="basic-addon2">
					        <div class="input-group-append">
					          <button class="btn btn-primary" type="button">
					            <i class="fas fa-search fa-sm"></i>
					          </button>
					        </div>
					      </div>
					    </form>
					  </div>
					
					  <!-- div2: 가운데 페이지네이션 -->
					  <div id="div2" class="d-flex justify-content-center" style="width:30%; ">
					    <nav aria-label="Page navigation example" >
					      <ul class="pagination mb-0" >
					        <li class="page-item">
					          <a class="page-link" href="#" aria-label="Previous">
					            <span aria-hidden="true">&laquo;</span>
					          </a>
					        </li>
					        <li class="page-item"><a class="page-link" href="#">1</a></li>
					        <li class="page-item"><a class="page-link" href="#">2</a></li>
					        <li class="page-item"><a class="page-link" href="#">3</a></li>
					        <li class="page-item">
					          <a class="page-link" href="#" aria-label="Next">
					            <span aria-hidden="true">&raquo;</span>
					          </a>
					        </li>
					      </ul>
					    </nav>
					  </div>
					
					  <!-- div3: 오른쪽 공간 (빈 공간, 나중에 뭔가 추가할 수도 있음) -->
					  <div id="div3"  style="width:30%;">
					    <!-- 여긴 비워두었지만 동일한 너비 유지됨 -->
					  </div>
					
					</div>
					
				
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->			

			<c:import url="/WEB-INF/views/templates/footer.jsp"></c:import>
	
		</div>
		<!-- End of Content Wrapper -->

		
	</div>
	<!-- End of Page Wrapper -->
	
	<!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    
    
    
    <c:import url="/WEB-INF/views/templates/foot.jsp"></c:import>

</body>
</html>