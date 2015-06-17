<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:body>
        <div class="col s12">
            <div class="row">
                <!-- include the static page -->
                <jsp:include page="/templates/staticpages${include}.jsp" flush="true" />
            </div>
        </div>
    </jsp:body>
</t:basepage>
