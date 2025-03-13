<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--Center Page--%>

<script>
  const ajaxCenter = {
    init:function (){
      this.getTime();
      setInterval(()=>{this.getTime()}, 1000);
    },
    getTime: function (){
      $.ajax({
        // http://127.0.0.1/gettime
        url:'<c:url value="/gettime"/>',
        success: (result)=>{
          this.display(result);
      },
        error:()=>{
          $('#time').html('접속 오류입니다. 고객센터에 연락하세요.')
        }
      });
    },
    display:function (result){
      $('#time').html(result);
    },
  }
  $(function(){
    ajaxCenter.init()
  });

</script>

<div class="col-sm-10">
  <h2>Ajax Center</h2>
  <h5 id = "time">Title description, Mar 10, 2025</h5>

</div>