
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  button {
    margin-top: 30px;
  }
</style>

<script>
  const jq6 = {
    init:function(){

      $('#submit_btn').click(() => {
        this.check()
      });

    },
    check:function(){
      let selectedTeam = $("input[name='optradio']:checked").val(); // 선택된 라디오 버튼 값 가져오기

      if (!selectedTeam) {
        alert("팀을 선택해주세요.");
        return;
      }

      this.send();
    },
    send:function(){
      console.log('Select Implementation..........')
      $('#select_form').attr('method','post')
      $('#select_form').attr('action','<c:url value="/jq/selectimpl"/> ');
      $('#select_form').submit()
    }
  }
  $().ready(function(){
    jq6.init();
  });

</script>

<div class="col-sm-10">
  <h2>jQuery6 Page</h2>
  <br>

  <div class="container">
    <h2>최고의 조 고르기</h2>  <br>
    <form id="select_form" action="/action_page.php">
      <div class="form-check-inline">
        <label class="form-check-label" for="radio1">
          <input type="radio" class="form-check-input" id="radio1" name="optradio" value="team1">1조
        </label>
      </div>
      <div class="form-check-inline">
        <label class="form-check-label" for="radio2">
          <input type="radio" class="form-check-input" id="radio2" name="optradio" value="team2">★2조★
        </label>
      </div>
      <div class="form-check-inline">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" id="radio3" name="optradio" value="team3">3조
        </label>
      </div>
    </form>

    <button type="submit" id="submit_btn" class="btn btn-warning">제출하기</button>

  </div>
</div>
