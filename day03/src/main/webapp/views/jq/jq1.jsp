
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  #count {
    color: tomato;
    background: lightgoldenrodyellow;
    font-size: 65px;
    text-align: center;
  }
  #btn {
    text-align: center;
  }
  #btnup{
      font-size: 100px;
      background: yellow;
    }
    #btndown{
      font-size: 100px;
      color: #aaaaaa;
      background: brown;
    }
</style>

<script>
    const jq1 = {
        init:function(){
            $('#h5').text('Replay Text');
            $('#btnup').click(()=>{
              let txt = $('#count').text();
              let num = Number(txt) + 1;
              $('#count').text(num);
            });
            $('#btndown').click(()=>{
              let txt = $('#count').text();
              let num = Number(txt) - 1;
              $('#count').text(num);
            });
        }
    }
    $().ready(function(){
      jq1.init();
    });

</script>

<div class="col-sm-10">
  <h2>jQuery1 Page</h2>
  <h3 id="count">10</h3>
  <h5 id = "h5">제이쿼리 page 첫번째입니다.</h5>
  <p id="btn">
    <button id="btnup">UP</button>
    <button id="btndown">Down</button>
  </p>
</div>
