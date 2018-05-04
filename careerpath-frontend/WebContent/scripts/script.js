angular.module('patternfly.filters').controller('ViewCtrl', ['$scope',
  function ($scope) {
    $scope.filterPanelModel = [
      {
        id: 'keyword',
        title:  'Keyword',
        placeholder: 'Filter by Keyword',
        filterType: 'input',
        values: []
      },
      {
        id: 'category1',
        title:  'Category One',
        filterType: 'checkbox',
        values: [
          {
            id: 'val1',
            title: 'Value 1',
            value: 'Value 1',
            selected: false
          },
          {
            id: 'val2',
            title: 'Value 2',
            value: 'Value 2',
            selected: false
          },
          {
            id: 'val3',
            title: 'Value 3',
            value: 'Value 3',
            selected: false
          }
        ]
      },
      {
        id: 'category2',
        title:  'Category Two',
        filterType: 'checkbox',
        values: [
          {
            id: 'val1',
            title: 'Value 1',
            value: 'Value 1',
            selected: false
          },
          {
            id: 'val2',
            title: 'Value 2',
            value: 'Value 2',
            selected: false
          },
          {
            id: 'val3',
            title: 'Value 3',
            value: 'Value 3',
            selected: false
          }
        ]
      }
    ];
 
    $scope.filtersText = '';
 
    $scope.allItems = [
      {
        id: "1",
        keyword: "Foo",
        categoryOne: "Value 1",
        categoryTwo: "Value 1"
      },
      {
        id: "2",
        keyword: "Bar",
        categoryOne: "Value 2",
        categoryTwo: "Value 1"
      },
      {
        id: "3",
        keyword: "Foo",
        categoryOne: "Value 3",
        categoryTwo: "Value 1"
      },
      {
        id: "4",
        keyword: "Bar",
        categoryOne: "Value 1",
        categoryTwo: "Value 2"
      },
      {
        id: "5",
        keyword: "Foo",
        categoryOne: "Value 2",
        categoryTwo: "Value 2"
      },
      {
        id: "6",
        keyword: "Bar",
        categoryOne: "Value 3",
        categoryTwo: "Value 2"
      },
      {
        id: "7",
        keyword: "Foo",
        categoryOne: "Value 1",
        categoryTwo: "Value 3"
      },
      {
        id: "8",
        keyword: "Bar",
        categoryOne: "Value 2",
        categoryTwo: "Value 3"
      },
      {
        id: "9",
        keyword: "Foo",
        categoryOne: "Value 3",
        categoryTwo: "Value 3"
      }
    ];
    $scope.items = $scope.allItems;
 
    // called when filter cleared by hitting 'x' in filter results tag, or 'Clear All Filters' link
    var onFilterChange = function (appliedFilters, changedFilterId, changedFilterValue) {
      if (angular.isDefined(changedFilterId) && angular.isDefined(changedFilterValue)) {
        updateFilterPanelModel(changedFilterId, changedFilterValue);
      } else {
        // the 'Clear All Filters' link was clicked
        resetFilterPanelModel();
      }
      // filter items
      filterItems(appliedFilters);
    };
 
    $scope.filterConfig = {
      resultsLabel: "Items",
      resultsCount: $scope.items.length,
      totalCount: $scope.allItems.length,
      appliedFilters: [],
      onFilterChange: onFilterChange
    };
 
    // called when filter is changed in the filter panel
    $scope.filterChanged = function() {
      applyFilters();
    };
 
    $scope.onKeywordKeyPress = function(keyEvent) {
      if (keyEvent.which === 13 && $scope.filterPanelModel[0].value.length > 0) {
        var currentKeyword = $scope.filterPanelModel[0].value;
        if(!keywordFilterExists(currentKeyword)) {
          // store new keywoard filter value in values array
          $scope.filterPanelModel[0].values.push(currentKeyword);
          applyFilters();
        }
        // remove the keyword value to show placeholder text
        delete $scope.filterPanelModel[0].value;
      }
    };
 
    var keywordFilterExists = function (keyword) {
      return _.some( $scope.filterPanelModel[0].values, function(existingKeyword) {
        // case sensitive
        //   return keyword === existingKeyword;
        // case insensitive:
        return keyword.toLowerCase() === existingKeyword.toLowerCase();
      });
    }
 
    var applyFilters = function () {
      var newAppliedFilters = [];
      _.forEach($scope.filterPanelModel, function(filter) {
        var filterValues = [];
        if (angular.isDefined(filter.values) && filter.values.length > 0) {
          if(filter.filterType === "checkbox") {
            // the values of the selected checkboxes are stored in a single new appliedFilter
            _.forEach(filter.values, function(value) {
              if(value.selected) {
                filterValues.push(value.value)
              }
            });
            if (filterValues.length > 0) {
              newAppliedFilters.push( createAppliedFilter (filter, filterValues) );
            }
          } else {
            // each keyword value gets a new appliedFilter
            _.forEach(filter.values, function(value) {
              filterValues = [value];
              newAppliedFilters.push( createAppliedFilter (filter, filterValues) );
            });
          }
        }
      });
 
      // sets the filter result tags
      $scope.filterConfig.appliedFilters = newAppliedFilters;
      // filter items
      filterItems($scope.filterConfig.appliedFilters);
    };
 
    var createAppliedFilter = function(filter, values) {
      return {
                id: filter.id,
                title: filter.title,
                values: values
             };
    };
 
    var updateFilterPanelModel = function (changedFilterId, changedFilterValue) {
      var changedFilter = _.find($scope.filterPanelModel, function(f) { return f.id === changedFilterId});
      if(changedFilter.filterType === "checkbox") {
         // unselect the checkbox
         _.find(changedFilter.values, function(v) {return v.value == changedFilterValue}).selected = false;
      } else {
         // remove keyword from values array
         _.remove(changedFilter.values, function(v) {return v == changedFilterValue});
      }
    };
 
    var resetFilterPanelModel = function () {
      _.forEach($scope.filterPanelModel, function(filter) {
        if (angular.isDefined(filter.values) && filter.values.length > 0) {
          if(filter.filterType === "checkbox") {
            // unselect all checkboxes
            filter.values.forEach(function (value) {
              value.selected = false;
            });
          } else {
            // clear all keyword filter values
            filter.values = [];
          }
        }
      });
    };
 
    var filterItems = function (filters) {
      $scope.items = [];
      if (filters && filters.length > 0) {
       _.forEach($scope.allItems, function(item) {
          if (matchesFilters(item, filters)) {
            $scope.items.push(item);
          }
        });
      } else {
        $scope.items = $scope.allItems;
      }
      $scope.filterConfig.resultsCount = $scope.items.length;
    };
 
    var matchesFilters = function (item, filters) {
      var matches = true;
 
      _.forEach(filters, function(filter) {
          if (!matchesFilter(item, filter)) {
            matches = false;
            return false;
          }
      });
      return matches;
    };
 
    var matchesFilter = function (item, filter) {
      var match = true;
 
      if (filter.id === 'keyword') {
        var re = new RegExp(filter.values[0], 'i');
        match = item.keyword.match(re) !== null;
      } else if (filter.id === 'category1') {
        // values are OR'ed
        _.forEach(filter.values, function(value) {
          match = item.categoryOne === value;
          return !match;
        });
      } else if (filter.id === 'category2') {
        // values are OR'ed
        _.forEach(filter.values, function(value) {
          match = item.categoryTwo === value;
          return !match;
        });
      }
      return match;
    };
  }
]);