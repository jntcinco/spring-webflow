<%@include file="../layouts/include.jsp" %>
		<!-- LEADSPACE_BEGIN -->
		<div id="ibm-access-cntr" role="main">
			<div class="ibm-alternate" id="ibm-leadspace-head">
				<div id="ibm-leadspace-body">
					<h1>IBM Project Template</h1>
				</div>
			</div>
			<div id="ibm-pcon">
				<!-- CONTENT_BEGIN -->
				<div id="ibm-content">
					<!-- CONTENT_BODY -->
					<div id="ibm-content-body">
						<div id="ibm-content-main">
							<div class="ibm-columns">
								<div class="ibm-col-6-4">
									<div class="ibm-container">
										<div class="ibm-container-body">
											<!-- DATA TABLE START -->
											<table border="0" cellpadding="0" cellspacing="0" class="ibm-data-table" summary="Data table example">
												<caption><em>User Master List</em></caption>
												<thead>
													<tr>
														<th scope="col">First Name</th>
														<th scope="col">Last Name</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="user" items="${users}">
														<c:url var="editUri" value="/userflow.htm">
															<c:param name="id" value="${user.id}"/>
														</c:url>
														<tr>
															<th class="ibm-table-row" scope="row"><c:out value="${user.firstName}"/></th>
															<td><c:out value="${user.lastName}"/></td>
															<td>
																<a href="<c:out value="${editUri}"/>">Edit</a> 
																| 
																<a href="<c:out value="${flowExecutionUrl}&id=${user.id}&_eventId=deleteUser"/>">Delete</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<!-- DATA TABLE END -->
										</div>
									</div>
								</div>
								<div class="ibm-col-6-2">
									<div class="ibm-container ibm-alternate ibm-video">
										<div class="ibm-container-body">
											<ul class="ibm-link-list ibm-rule">
												<li><a class="ibm-external-link" href="<c:url value="/userflow.htm"/>">Create User</a></li>
												<li><a class="ibm-external-link" href="${flowExecutionUrl}&_eventId=viewUser">View User</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- FEATURES_BEGIN -->
						<div id="ibm-content-sidebar">
							<div id="ibm-contact-module">
								<!--IBM Contact Module-->
							</div>
							%%sidebarspace%%
						</div>
						<!-- FEATURES_END -->
						<!-- CONTENT_BODY_END -->
					</div>
				</div>
				<!-- CONTENT_END -->
				<!-- NAVIGATION_BEGIN -->

				<!-- NAVIGATION_END -->
			</div>
		</div>
		<!-- LEADSPACE_END -->