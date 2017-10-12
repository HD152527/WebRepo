$(document).ready(function () {
    $('#SigninForm').submit(function (event) {
        // submit이 자동으로 되는 기능 막기
        event.preventDefault();

        // id, pwd를 가져오기
//                document.getElementById("id").value
        var id = $('#id').val();
        var pwd = $('#pwd').val();
        console.log(id, pwd);
        // 서버로 post 전송 (ajax)
        $.post("http://httpbin.org/post",
            { "id" : id , "pwd" : pwd },
            function (data) {
//                    alert(data.form.id + '님 로그인 되었습니다.');
                var myModal = $('#inModal');
                myModal.modal();


                myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다.');
            });
    });
});



$(document).ready(function () {
    $('#SignUpForm').submit(function (event) {
        // submit이 자동으로 되는 기능 막기
        event.preventDefault();

        // id, pwd를 가져오기
//                document.getElementById("id").value
        // 서버로 post 전송 (ajax)

        var myModal = $('#upModal');
        myModal.modal();
    });
});


$(document).ready(function () {
    $('#register').submit(function (event) {
        event.preventDefault();

        console.log(1234);

        var id = $('#name').val();
        var pwd = $('#pwd2').val();
        console.log(id, pwd);

        var myModal = $('#upModalresult');

        myModal.modal();
        myModal.find('.modal-body').text(id + '님 회원가입 되었습니다.');
        $('#upModal').modal('hide');
    });
});