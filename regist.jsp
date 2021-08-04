<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
@font-face {
    font-family: 'nex';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
    font-weight: 900;
    font-style: normal;
}

html, body {

	width: 100vw;
	margin: auto;
	
	
}
.input-group-text {
float: right;
text-align: right;
padding: 0px; 
}

.container {
	margin-top: 30px;
	font-family: 'nex';
}
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
		register.addr1.value = roadAddrPart1;
		register.addr2.value = addrDetail;
		register.zipcode.value = zipNo;
	}

	function idcheck() {
		const id = document.getElementById("id").value;
		console.log(id)
		if (id == "") {
			alert("아이디를 입력해주세요")
			register.id.focus();
			return false;
		}
		window.open('idcheck.jsp?id=' + id, '_blank',
				'width=320,hegiht=280, left=50, top=0');
	}
	
	function sendform() {
		register.submit();
		
	}
</script>
<body>
	<div class="container">
		<form action="regist_ok.jsp" name="register" id="register"
			method="post">
			<fieldset>
				<h3 class="text-center">회원가입</h3>
			</fieldset>
			<div class="mb-2 row">
				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">아이디</span> <input name="id"
						class="form-control" id="id"> <input type="button"
						class="btn btn-primary input-group-text" style="width: 30%"
						onclick="idcheck(id)" value="중복검사">
				</div>
			</div>
			<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">비밀번호</span> <input name="passwd"
						type="password" class="form-control">
				</div>
			</div>
						<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">비밀번호확인</span> <input name="passwd2"
						type="password" class="form-control">
				</div>
			</div>

			<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">생년월일</span> <input id="ssn" name="ssn"
						class="form-control">
				</div>
			</div>

			<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">전자우편</span> <input id="email" name="email"
						class="form-control"> <span class="input-group-text">@</span>
					<input id="email2" name="email2" class="form-control">
				</div>
			</div>
			<div class="mb-2 row">

				<div class="input-group mb-2" id="gender">
					<span class="input-group-text" 
						style="width: 18%;">성별</span>
					<div class="form-control" style="border: 0">

						<input class="form-check-input" type="radio" name="gender"
							value="남" id="male"> 남자 <input class="form-check-input"
							type="radio" name="gender" value="여" id="female"> 여자
					</div>
				</div>
			</div>
			<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">취미</span>
					<div class="form-control" style="border: 0">
						<input class="form-check-input" name="hobby" type="checkbox"
							value="게임"> 게임 <input class="form-check-input"
							name="hobby" type="checkbox" value="공부"> 공부 <input
							class="form-check-input" name="hobby" type="checkbox" value="등산">
						등산 <input class="form-check-input" name="hobby" type="checkbox"
							value="스포츠"> 스포츠 <input class="form-check-input"
							name="hobby" type="checkbox" value="피아노"> 피아노
					</div>
				</div>
			</div>
			<div class="mb-2 row">

				<div class="input-group mb-2">
					<span class="input-group-text" 
						style="width: 18%;">우편번호</span> <input name="zipcode" id="zipcode"
						class="form-control" readonly="readonly"
						placeholder="도로명 주소 검색을 눌러주시요"> <input type="button"
						class="btn btn-primary input-group-text" onClick="goPopup()"
						style="width: 30%;" value=" 주소 검색">

				</div>
			</div>
			<div class="mb-2 row">
				<div class="input-group mb-2">

					<span class="input-group-text" 
						style="width: 18%;">주소</span> <input name="addr1"
						class="form-control">
				</div>
			</div>
			<div class="mb-2 row">
				<div class="input-group mb-2">

					<span class="input-group-text" 
						style="width: 18%;">상세주소</span> <input name="addr2"
						class="form-control">
				</div>
			</div>
			<div class="mb-2 row">
				<div class="input-group mb-2">

					<span class="input-group-text" 
						style="width: 18%;">자기소개</span>
					<textarea rows="5" cols="20" name="profile" class="form-control"></textarea>
				</div>
			</div>
			<div class="mb-2 row" style="margin: 0;">
				<label for="submit" class="col-sm-2 col-form-label"></label>
				<div class="btn-group" role="group" aria-label="Basic example">
					<input type="button" id="submi" class="btn btn-primary" name="submi"
						style="width: 35%; margin-right: 20px; float: left;" onclick="sendform()" value="전송"> <input
						type="reset" class="btn btn-primary"
						style="width: 35%; float: right;">
				</div>
			</div>
		</form>
	</div>

</body>

</html>