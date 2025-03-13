
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  .input_bg{
    background: lightgoldenrodyellow !important;
  }
</style>

<script>
  const jq5 = {
    init: function () {

      $('#id').focus(function () {
        $(this).addClass('input_bg');
      });

      $('#pwd').focus(function () {
        $(this).addClass('input_bg');
      });

      $('#pwdck').focus(function () {
        $(this).addClass('input_bg');
      });

      $('#name').focus(function () {
        $(this).addClass('input_bg');
      });

      $('#id').blur(function () {
        $(this).removeClass('input_bg');
      });

      $('#pwd').blur(function () {
        $(this).removeClass('input_bg');
      });

      $('#pwdck').blur(function () {
        $(this).removeClass('input_bg');
      });

      $('#name').blur(function () {
        $(this).removeClass('input_bg');
      });

      $('#register_btn').click(() => {
        this.check()
      });
    },

    check: function () {
      let id = $('#id').val();
      let pwd = $('#pwd').val();
      let pwdck = $('#pwdck').val();
      let name = $('#name').val();

      if (id == '' || id == null) {
        $('#msg').text('ID를 입력하세요.');
        $('#id').focus();
        return;
      }

      if (pwd == '' || pwd == null) {
        $('#msg').text('비밀번호를 입력하세요.');
        $('#pwd').focus();
        return;
      }

      if (pwdck == '' || pwdck == null) {
        $('#msg').text('비밀번호 확인을 입력하세요.');
        $('#pwdck').focus();
        return;
      }

      if (name == '' || name == null) {
        $('#msg').text('이름을 입력하세요.');
        $('#name').focus();
        return;
      }

      if(pwd != pwdck){
        $('#msg').text('비밀번호와 비밀번호 확인이 다릅니다.');
        $('#pwd').focus();
        return;
      }

      this.send();
    },
    send: function () {
      console.log('Register Implementation..........')
      $('#register_form').attr('method', 'post')
      $('#register_form').attr('action', '<c:url value="/jq/registerimpl"/> ');
      $('#register_form').submit()
    }
  }

  $().ready(function(){
    jq5.init();
  });

</script>

<div class="col-sm-10">
  <h2>jQuery5 Page</h2>

  <div class="row">
    <div class="col-sm-8">
      <form id ="register_form">
        <div class="form-group">
          <label for="id">ID:</label>
          <input type="text" name="id" class="form-control" placeholder="Enter ID" id="id">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" name="pwd" class="form-control" placeholder="Enter password" id="pwd">
        </div>
        <div class="form-group">
          <label for="pwd">Password check:</label>
          <input type="password" class="form-control" placeholder="Enter password Again" id="pwdck">
        </div>
        <div class="form-group">
          <label for="name">name:</label>
          <input type="text" name="name" class="form-control" placeholder="Enter name" id="name">
        </div>
      </form>

      <button id="register_btn" type="submit" class="btn btn-primary">REGISTER</button>

    </div>
    <div class="col-sm-4">
      <p id = "msg">회원가입을 위해서 ID, PWD, PWD check, 이름을 입력하세요.</p>
    </div>
  </div>

</div>
