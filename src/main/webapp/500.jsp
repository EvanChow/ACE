<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>500 Erro</title>

		<meta name="description" content="500 Error Page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- basic styles -->
		<jsp:include page="/ace/include.jsp"/>
	</head>

	<body>
			<div class="main-content">
				<div class="main-content-inner">
					
					<div class="page-content">
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="error-container">
									<div class="well">
										<h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="ace-icon fa fa-random"></i>
												500
											</span>
											Something Went Wrong
										</h1>

										<hr />
										<h3 class="lighter smaller">
											But we are working
											<i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
											on it!
										</h3>

										<div class="space"></div>

										<div>
											<h4 class="lighter smaller">Meanwhile, try one of the following:</h4>

											<ul class="list-unstyled spaced inline bigger-110 margin-15">
												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													Read the faq
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													Give us more info on how this specific error occurred!
												</li>
											</ul>
										</div>

										<hr />
										<div class="space"></div>

										<div class="center">
											<a href="javascript:history.back()" class="btn btn-grey">
												<i class="ace-icon fa fa-arrow-left"></i>
												Go Back
											</a>

											<a href="#" class="btn btn-primary">
												<i class="ace-icon fa fa-tachometer"></i>
												Dashboard
											</a>
										</div>
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->
			
			


		<!-- basic scripts -->

		<jsp:include page="/ace/inend.jsp"/>

		<!-- inline scripts related to this page -->
	</body>
</html>
