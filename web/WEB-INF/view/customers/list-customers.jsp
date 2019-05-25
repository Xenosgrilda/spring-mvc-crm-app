
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../templates/header.jsp" />

        <h1 class="page-title">Customers</h1>
        <hr />

        <div class="app-container">
        <c:forEach var="customer" items="${customers}">
                <div class="customer">
                        <div class="customer-header">
                                <button class="btn btn-dropdown">
                                        <i class="fas fa-caret-down"></i>
                                </button>
                                <div class="customer-name">
                                        <b>${customer.firstName} </b>${customer.lastName}
                                </div>

                                <div class="customer-buttons">
                                        <button class="btn btn-edit">
                                                <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <button class="btn btn-delete">
                                                <i class="fas fa-trash-alt"></i>
                                        </button>
                                </div>
                        </div>
                        <div class="customer-body">
                                <div class="customer-body-content">
                                        Email: ${customer.email}
                                </div>
                        </div>
                </div>
        </c:forEach>
        </div>

        <a href="${pageContext.request.contextPath}/customer/add-customer-form" class="customer-add-btn">
            <img src="https://ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/btw_ic_speeddial_white_24dp_2x.png" alt="+" />
        </a>

        <script src="${pageContext.request.contextPath}/resources/static/js/customer.js"></script>
<jsp:include page="../templates/footer.jsp" />

<%--
JSTL é o acrônimo de JavaServer Pages Standard Template Library, o qual podemos usar para recuperar dados de forma
transparente usando como componente básico da JEE o qual é muito usado na programação pura,
como costumo chamar quando programamos diretamente e tão somente no JSP (Java Server Pages).

https://www.devmedia.com.br/introducao-jstl-java/23582

The absolute uri: [http://java.sun.com/jsp/jstl/core] cannot be resolved in either web.xml or the jar files deployed with this application
To fix this error just import the 2 files from Tomcat 9.0\webapps\examples\WEB-INF\lib to project
--%>

<%--<c:forEach var="customer" items="${customers}">--%>
<%--    <tr>--%>
<%--        <td>${customer.firstName}</td>--%>
<%--        <td>${customer.lastName}</td>--%>
<%--        <td>${customer.email}</td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>