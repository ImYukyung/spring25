<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  #result {
    border: 2px solid salmon;
    width: 500px;
    margin-top: 30px;
    margin-bottom: 30px;
  }
  button{
    margin: 30px 5px 5px;
  }
</style>

<script>
  const jq3 = {
    init:function (){
      $('#append').click(()=>{
        $('#result').append(`
          <div class="card bg-primary text-white">
            <div class="card-body">Append card</div>
          </div>

        `);
      });
      $('#prepend').click(()=>{
        $('#result').prepend(`
            <div class="card bg-success text-white">
                <div class="card-body">Prepend card</div>
            </div>
        `);
      });
      $('#after').click(()=>{
        $('#result').after('<h4>After....</h4>')
      });
      $('#before').click(()=>{
        $('#result').before('<h4>Before....</h4>')
      });
      $('remove').click(()=>{
        $('#result').toggle();
      });
      $('#empty').click(()=>{
        $('#result').empty();
      });
    }
  }
  $(function(){
    jq3.init();
  });
</script>

<div class="col-sm-10">
  <h2>jQuery3 Page</h2>
  <button id="append" type="button" class="btn btn-primary">Append</button>
  <button id="prepend" type="button" class="btn btn-danger">Prepend</button>
  <button id="after" type="button" class="btn btn-secondary">After</button>
  <button id="before" type="button" class="btn btn-success">Before</button>
  <button id="remove" type="button" class="btn btn-warning">Remove</button>
  <button id="empty" type="button" class="btn btn-dark">Empty</button>

  <div id="result"></div>

</div>
