angular
  .module('notesApp')
  .service('HomeService', HomeService);

HomeService.$inject = ['$http'];

function HomeService($http) {
  const self = this;


  self.message = 'Hello World!';
  self.loadNotes = loadNotes;

  function loadNotes(notes){
      return $http.get('/api/notes');
  }

}
