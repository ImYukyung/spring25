<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  const jq2 = {
    init:function(){
      // 버튼을 클릭하면 getData를 호출 한다.
      // 버튼에 이벤트를 붙인다

      $('#aclick').click(()=>{
        this.getData()
      });
    },

    getData:function(){
      const data = [
        {rank:Math.floor(Math.random()*10), title:'미국주식', updown:'up'},
        {rank:Math.floor(Math.random()*10), title:'날씨', updown:'up'},
        {rank:Math.floor(Math.random()*10), title:'미세먼지', updown:'down'},
        {rank:Math.floor(Math.random()*10), title:'봄', updown:'up'},
        {rank:Math.floor(Math.random()*10), title:'점심식사', updown:'down'}
      ];

      this.display(data);
    },
    display:function(data){
      let result = '';

      for(var a of data){
        result += '<h4>';
        result += a.rank+' '+a.title+' '+a.updown;
        result += '</h4>';
      }
      document.querySelector('#result').innerHTML = result;
    }
  }

  $().ready(function (){
    jq2.init();
  });
</script>

<div class="col-sm-10">
  <h2>jQuery2 Page</h2>

  <button type="button" class="btn btn-primary" id="aclick">GET DATA</button>
  <div id="result"></div>

</div>
