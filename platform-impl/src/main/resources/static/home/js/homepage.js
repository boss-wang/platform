$(function () {
   var vm = new Vue({
       el:'#home-nav',
       data:{

       },
       methods:{

       }
   });
});
function addUser(){
    $('#homePage').load('./user/addUser.html');
};
function showUsers() {
    $('#homePage').load('./user/showUsers.html');
}