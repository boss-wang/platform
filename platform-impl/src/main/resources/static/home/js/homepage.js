$(function () {
   var vm = new Vue({
       el:'#home-nav',
       data:{

       },
       methods:{

       }
   });
});
function addUser()
{
    $('#homePage').load('user/addUser.html');
}
function showUsers()
{
    $('#homePage').load('user/showUsers.html');
}
function addClient()
{
    $('#homePage').load('client/addClient.html');
}
function showClient()
{
    $('#homePage').load('client/showClients.html');
}

var home = {
    updateUserId : null,
    updateClientId:null,
    clientDetailId:null
};