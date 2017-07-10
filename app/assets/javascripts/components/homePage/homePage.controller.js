
HomeController.$inject = ['HomeService'];

function HomeController(HomeService) {
  const vm = this;

  vm.notes = [];
  

  activate();

  function activate(){
    loadAllNotes();
  }

  function loadAllNotes(){
    HomeService
      .loadNotes()
      .then(function resolve(response){
        // console.log(response.data);
        vm.notes = response.data;
        console.log(vm.notes);
      });
  }
}


angular
  .module('notesApp')
  .controller('HomeController', HomeController);

