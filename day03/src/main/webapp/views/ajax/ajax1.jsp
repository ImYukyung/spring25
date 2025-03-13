<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  const ajax1 = {
    init: function () {
      $('#get_btn').click(()=>{
        this.getData();
      })
    },
    getData: function () {
      $.ajax({
        url:'<c:url value="/getwt"/>',
        success:(result)=>{
          this.display(result);
        },
        error:()=>{}
      });
    },
    display: function (result) {
      $('#hi').text(result.hi);
      $('#low').text(result.low);
      $('#location').text(result.location);
    }

  }
  $(function () {
    ajax1.init();
  });
</script>

<div class="col-sm-10">
  <h2>ajax1 Page</h2>
  <button id="get_btn">Get Data</button>
  <h5>아작스1이지롱</h5>

  <h3 id ="hi"></h3>
  <h3 id ="low"></h3>
  <h3 id ="location"></h3>

</div>
