<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body { font-family: sans-serif; text-align: center; }
        table { margin: 0 auto; border-collapse: collapse; }
        td { padding: 8px; }
        button { padding: 8px 16px; margin-top: 20px; }
    </style>
    <script>
        function validateForm() {
            const id = document.getElementById("id").value.trim();
            const pw = document.getElementById("pw").value.trim();
            const pwCheck = document.getElementById("pwCheck").value.trim();
            const name = document.getElementById("name").value.trim();
            const phone = document.getElementById("phone").value.trim();

            if (id === "" || pw === "" || name === "" || phone === "") {
                alert("필수 항목을 모두 입력해주세요.");
                return false;
            }

            if (pw !== pwCheck) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }

            alert("회원가입이 완료되었습니다.");
            return true;
        }
    </script>
</head>
<body>

<h2>회원가입 폼</h2>

<form action="/register" method="post" onsubmit="return validateForm();">
    <table border="1">
        <tr>
            <td>아이디 *</td>
            <td><input type="text" name="id" id="id" /></td>
        </tr>
        <tr>
            <td>비밀번호 *</td>
            <td><input type="password" name="pw" id="pw" /></td>
        </tr>
        <tr>
            <td>비밀번호 확인</td>
            <td><input type="password" id="pwCheck" /></td>
        </tr>
        <tr>
            <td>이름 *</td>
            <td><input type="text" name="name" id="name" /></td>
        </tr>
        <tr>
            <td>생년월일</td>
            <td><input type="text" name="birth" id="birth" placeholder="예: 2000-01-01" /></td>
        </tr>
        <tr>
            <td>전화번호 *</td>
            <td><input type="text" name="phone" id="phone" /></td>
        </tr>
    </table>

    <button type="submit">회원가입</button>
</form>

</body>
</html>