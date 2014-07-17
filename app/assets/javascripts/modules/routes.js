angular.module('RoutesConfigMD', [])
    .constant('RoutesConfig',
      { 
        routes : [
                  {
                    url : '/dashboard', 
                    templateUrl: 'partials/idea-list.html',
                    controller: 'ideasListCtrl'
                  },
                  {
                    url : '/ideas/category/:c', 
                    templateUrl: 'partials/idea-list.html',
                    controller: 'ideasListCtrl'
                  },
                  {
                    url : '/ideas/tags/:tag', 
                    templateUrl: 'partials/idea-list.html',
                    controller: 'ideasListCtrl'
                  },
                  {
                    url : '/ideas/new', 
                    templateUrl: 'partials/idea-form.html',
                    controller: 'ideasSaveCtrl'
                  },
                  {
                    url : '/ideas/:id', 
                    templateUrl: 'partials/idea-show.html',
                    controller: 'ideaShowCtrl'
                  },
                  {
                    url : '/find/friends', 
                    templateUrl: 'partials/find-friends.html',
                    controller: 'findFriendsCtrl'
                  },
                  {
                    url : '/notifications', 
                    templateUrl: 'partials/activity-list.html',
                    controller: 'activityCtrl'
                  },
                  {
                    url : '/profile', 
                    templateUrl: 'partials/profile.html',
                    controller: 'profileCtrl'
                  },
                  {
                    url : '/search', 
                    templateUrl: 'partials/search.html',
                    controller: 'searchCtrl'
                  }],
        defaultRoute : '/dashboard'
      
}
);
    