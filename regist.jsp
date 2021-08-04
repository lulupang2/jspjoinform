<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html, body {
	width: 100vw;
	margin: auto;
}
.container { margin-top:30px}
</style>
<link rel="shortcut icon" href="#">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--favicon 404 숏컷제거,Bootstrap5 적용 -->
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script language="javascript">

	function goPopup() {
		var pop = window.open("./popup/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {
		document.register.addr1.value = roadAddrPart1;
		document.register.addr2.value = addrDetail;
		document.register.zipcode.value = zipNo;
	}
</script>
<body>
	<div class="container">
		<form action="regist_ok.jsp" name="register" id="form" method="post">
			<fieldset>
				<h3>회원가입</h3>
			</fieldset>
			<div class="mb-3 row">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">아이디</span> <input name="id"
						class="form-control">
					<button class="btn btn-primary input-group-text" style="width: 30%">중복검사</button>
				</div>
			</div>
			<div class="mb-3 row">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">비밀번호</span> <input name="passwd"
						type="password" class="form-control">
				</div>
			</div>

			<div class="mb-3 row">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">생년월일</span> <input id="ssn" name="ssn"
						class="form-control">
				</div>
			</div>

			<div class="mb-3 row">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">전자우편</span> <input id="email" name="email"
						class="form-control"> <span class="input-group-text">@</span>
					<input id="email2" name="email2" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">

				<div class="input-group mb-3" id="gender">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">성별</span>
					<div class="form-control" style="border: 0">

						<input type="radio" name="gender" value="남" id="male"> 남자
						<input type="radio" name="gender" value="여" id="female">
						여자
					</div>
				</div>
			</div>
			<div class="mb-3 row">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">취미</span>
					<div class="form-control" style="border: 0">
						<input name="hobby" type="checkbox" value="게임"> 게임 <input
							name="hobby" type="checkbox" value="공부"> 공부 <input
							name="hobby" type="checkbox" value="등산"> 등산 <input
							name="hobby" type="checkbox" value="스포츠"> 스포츠 <input
							name="hobby" type="checkbox" value="피아노"> 피아노
					</div>
				</div>
			</div>
			<div class="mb-3 row">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">우편번호</span> <input name="zipcode" id="zipcode"
						class="form-control" readonly="readonly"
						placeholder="도로명 주소 검색을 눌러주시요"> <input type="button"
						class="btn btn-primary input-group-text" onClick="goPopup()"
						style="width: 30%;" value=" 주소 검색">

				</div>
			</div>
			<div class="mb-3 row">
				<div class="input-group mb-3">

					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">주소</span> <input name="addr1"
						class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<div class="input-group mb-3">

					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">상세주소</span> <input name="addr2"
						class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<div class="input-group mb-3">

					<span class="input-group-text" id="basic-addon3"
						style="width: 15%;">자기소개</span>
					<textarea rows="5" cols="20" name="profile" class="form-control"></textarea>
				</div>
			</div>
			<div class="mb-3 row" style="margin: 0;">
				<label for="submit" class="col-sm-2 col-form-label"></label>
<div class="btn-group" role="group" aria-label="Basic example">					<input type="submit" id="submi" class="btn btn-primary"
						style="width: 35%; margin-right: 20px; float: left;"> <input
						type="reset" class="btn btn-primary"
						style="width: 35%; float: right;">
				</div>
			</div>
		</form>
	</div>
</body>
</html>