function AddUsernameToQuery() {
    var username = $('#username').val();
    if (username !== null && username !== "") {
        window.location.href = window.location.origin + window.location.pathname + '?username=' + username;
    }
}