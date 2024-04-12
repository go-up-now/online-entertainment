<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@include file="/common/taglib.jsp" %>
  <c:set var="x" value="${pageContext.request.contextPath}"></c:set>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>
        <dec:title></dec:title>
      </title>

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
      <link rel="stylesheet" href="<c:url value='/template/css/styles.css'></c:url>">
      <link rel="stylesheet" href="<c:url value='/template/admin/css/style.css'></c:url>">

      <!-- Stylesheets -->
      <!-- <link rel="stylesheet" href="<c:url value='/template/assets/css/docs.theme.min.css'></c:url>"> -->

      <!-- Owl Stylesheets -->
      <link rel="stylesheet" href="<c:url value='/template/assets/owlcarousel/assets/owl.carousel.min.css'></c:url>">
      <link rel="stylesheet"
        href="<c:url value='/template/assets/owlcarousel/assets/owl.theme.default.min.css'></c:url>">

      <!-- javascript -->
      <script src="<c:url value='/template/assets/vendors/jquery.min.js'></c:url>"></script>
      <script src="<c:url value='/template/assets/owlcarousel/owl.carousel.js'></c:url>"></script>

    </head>

    <body>
   
      <!-- header  -->
      <%@include file="/common/web/header.jsp" %>
        <!-- header  -->


        <!-- body  -->
        <dec:body></dec:body>
        <!-- body  -->


        <!-- footer  -->
        <%@include file="/common/web/footer.jsp" %>
          <!-- footer  -->

          <!-- vendors -->
          <script src="<c:url value='/template/assets/vendors/highlight.js'></c:url>"></script>
          <script src="<c:url value='/template/assets/js/app.js'></c:url>"></script>

          <script>
            $(document).ready(function () {
              var owl = $('.owl-carousel');
              owl.owlCarousel({
                items: 4,
                loop: true,
                margin: 10,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true
              });
            })
          </script>
    </body>

    </html>