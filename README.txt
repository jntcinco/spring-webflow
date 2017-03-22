Author: Jose Noel T. Cinco
Date Develop: 01/25/2013

This is a multi-module maven based project using Spring Webflow. Also included on this project is the integration of ORM Frameworks like Hibernate which do the database configuration, and connection, while JPA do the persistence layer. 
Tiles is also used for templating and V17 Design for the design standard.

Notes:
--------------------------------------------------------------------------------------------------------

To run the application, go to the root directory of the project which is "ibm-ais" using the command line "cd ibm-ais". 
At the root project directory you need to execute maven command "mvn clean install" to download all the dependencies 
that are not yet installed on your local maven repository and "mvn eclipse:eclipse" so that you can import the project to
a specific IDE. (Note: downloading takes long) Then go to the specific webapp module using the command line "cd ibm-ais-webflow-webapp". It can also be run from the command line using command 'mvn jetty:run' and can be accessed using the url below.
 
spring webflow url: 'http://localhost:8080/ibm-ais-webflow-webapp/userflow.htm'

Additional Info:

these are the 2 modules in ibm-ais project:

ibm-ais-webflow-webapp   - Web application using spring webflow framework.
ibm-data-management 	 - This is where the model entities, DAO's, Services and Data Access related are implemented. And
			   this module is being used by "ibm-ais-springmvc-webapp" and "ibm-ais-webflow-webapp" modules.