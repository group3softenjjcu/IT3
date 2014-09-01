

$(document).ready(function () {
    $("[id$=btngmaillogout]").click(function (e) {
        e.preventDefault();
        setInterval(function () {
            window.open('http://accounts.google.com/logout', '_blank');
        }, 5000);
    });
});
