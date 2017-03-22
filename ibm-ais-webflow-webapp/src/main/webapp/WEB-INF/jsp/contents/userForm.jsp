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
										<center><h2>User Form</h2></center>
										<div class="ibm-container-body">
											<!-- Single Column Form -->
											<form:form modelAttribute="user" class="ibm-column-form ibm-styled-form">
												<form:hidden path="id"/>
												<p>
													<form:label path="firstName">First name:<span class="ibm-required">*</span></form:label>
													<span><form:input path="firstName" size="40" value="" type="text"/></span>
												</p>
												<p>
													<form:label path="lastName">Last name:<span class="ibm-required">*</span></form:label>
													<span><form:input path="lastName" size="40" value="" type="text"/></span>
												</p>
												<div class="ibm-columns">
													<div class="ibm-col-6-1">
														<p><input value="Save" name="_eventId_save" class="ibm-btn-pri" type="submit"></p>
													</div>
												</div>
											</form:form>
											<!-- FORM_END -->
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