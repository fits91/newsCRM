$(document).ready(function () {

//    add user event
    $('#addUserForm').submit(function (event) {
        console.log("processed");
        var userLogin = $('#login_add').val();
        var userPass = $('#pwd_add').val();
        var userRole = $('#role_add').val();
        $('#addUser').modal('hide');
        document.forms.addUserForm.reset();

        $.ajax({
            url: $("#addUserForm").attr("action"),
            data: {login: userLogin,
                pass: userPass,
                role: userRole},
            type: 'GET',
            dataType: 'text',
            contentType: 'application/json',
            success: function (string) {
                $("#users").html(string);
            },
            error: function (getUsers) {
                $("#users").html('<H1>Error</H1>');
                console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
            }
        });
        event.preventDefault();
    });

//    add mews event
    $('#addNewsForm').submit(function (event) {
        var newsTitle = $('#title_add').val(); // работает
        var newsBody = $('#article').val();
        var newsDate = $('#datetimepicker2').datetimepicker({dateFormat: 'yyyy-mm-dd'}).val();
        var userLogin = $('#addNews').attr('userAdd');
        $('#addNews').modal('hide');
        document.forms.addNewsForm.reset();
        $.ajax({
            url: $("#addNewsForm").attr("action"),
            data: {title: newsTitle,
                body: newsBody,
                date: newsDate,
                login: userLogin},
            type: 'GET',
            dataType: 'text',
            contentType: 'application/json',
            success: function (string) {
                $("#news").html(string);
            },
            error: function (getUsers) {
                $("#news").html('<H1>Error</H1>');
                console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
            }
        });
        event.preventDefault();
    });

    //    remove user event
    $('#delUserForm').submit(function (event) {
        var userLogin = $("#delUserForm").attr("delUserLogin");
        $('#delUser').modal('hide');
        $.ajax({
            url: $("#delUserForm").attr("action"),
            data: {login: userLogin},
            type: 'GET',
            dataType: 'text',
            contentType: 'application/json',
            success: function (string) {
                $("#users").html(string);
                $('#delUserForm').reset();
            },
            error: function (getUsers) {
                $("#users").html('<H1>Error</H1>');
                console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
            }
        });
        event.preventDefault();
    });

    //    remove news event
    $('#delNewsForm').submit(function (event) {
        var newsID = $("#delNewsForm").attr("delNewsID");
        $('#delNews').modal('hide');
        $.ajax({
            url: $("#delNewsForm").attr("action"),
            data: {idNews: newsID},
            type: 'GET',
            dataType: 'text',
            contentType: 'application/json',
            success: function (string) {
                $("#news").html(string);
                $('#delNewsForm').reset();
            },
            error: function (getUsers) {
                $("#news").html('<H1>Error</H1>');
                console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
            }
        });
        event.preventDefault();
    });

});

// edit user function
function editUser(clicked_id) {
    var userLogin = $('#login_edit').val();
    var userRole = $('#role_edit').val();
    var userAvail = $('#avail_edit').val();
    console.log(userLogin + ' ' + userRole + '' + userAvail);
    $('#editUser').modal('hide');
    $.ajax({
        url: $("#editUserForm").attr("action"),
        data: {login: userLogin,
            role: userRole,
            avail: userAvail
        },
        type: 'GET',
        dataType: 'text',
        contentType: 'application/json',
        success: function (string) {
            $("#users").html(string);
            $('#editUserForm').reset();
        },
        error: function (getUsers) {
            $("#users").html('<H1>Error</H1>');
            console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
        }
    });
    event.preventDefault();
}

//  edit news function
function editNews(clicked_id) {
    var id = $("#editNewsForm").attr("editNewsID");
    var title = $('#title_edit').val();
    var body = $('#article_edit').val();
    var date = $('#datetimepicker2_edit').datetimepicker({dateFormat: 'yyyy-mm-dd'}).val();
    var userLogin = $('#editNewsForm').attr('userEdit');
    $('#editNews').modal('hide');
    $.ajax({
        url: $("#editNewsForm").attr("action"),
        data: {idNews: id,
            newsTitle: title,
            newsBody: body,
            login: userLogin,
            newsDate: date},
        type: 'GET',
        dataType: 'text',
        contentType: 'application/json',
        success: function (string) {
            $("#news").html(string);
            $('#editNewsForm').reset();
        },
        error: function (getUsers) {
            $("#news").html('<H1>Error</H1>');
            console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
        }
    });
    event.preventDefault();
}

// news modal window
function delNewsModal(clicked_id) {
    console.log(clicked_id);
    $("#delNewsForm").attr("delNewsID", clicked_id);
    $('#delNews').modal();
}

// remove user modal window
function delUserModal(clicked_id) {
    console.log(clicked_id);
    $("#delUserForm").attr("delUserLogin", clicked_id);
    $('#delUser').modal();
}

// edit user modal window
function editUserModal(clicked_id) {
    console.log(clicked_id);
    var userLogin = clicked_id;

    $.ajax({
        url: "admin/emuser.htm",
        data: {login: userLogin},
        type: 'GET',
        dataType: 'text',
        contentType: 'application/json',
        success: function (string) {
            $("#editusers").html(string);
            $('#editUser').modal();
        },
        error: function (getUsers) {
            $("#edituser").html('<H1>Error</H1>');
            console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
        }
    });
}

// edit news modal window
function editNewsModal(clicked_id) {
    console.log(clicked_id);
    var newsID = clicked_id;

    $.ajax({
        url: "moder/menews.htm",
        data: {idNews: newsID},
        type: 'GET',
        dataType: 'text',
        contentType: 'application/json',
        success: function (string) {
            $("#editnews").html(string);
            $('#editNews').modal();
        },
        error: function (getUsers) {
            $("#editnews").html('<H1>Error</H1>');
            console.info("error: " + getUsers.status + ' ' + getUsers.responseText);
        }
    });
}