<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-sm-10">
  <h2>Login Page</h2>
    <div class="row">
      <div class="col-sm-6">
        <form>
          <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" class="form-control" placeholder="Enter ID" id="id">
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd">
          </div>

          <button type="submit" class="btn btn-primary">LOGIN</button>
        </form>
      </div>
      <div class="col-sm-6">
        <p>우측에 추가 설명을 입력하세요.</p>
      </div>
    </div>
</div>
