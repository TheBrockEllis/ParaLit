$(".books.edit").ready(function(){

  $(".sortable").rowSorter({
    handler: ".sorter",
    onDragStart: function(tbody, row, old_index) {
      // find the table
      // if options.tbody is true, this param will be tbody element
      // otherwise it will be table element
      var table = tbody.tagName === "TBODY" ? tbody.parentNode : tbody;

      // old_index is zero-based index of row in tbody (or table if tbody not exists)
      //console.log(old_index);
    },

    // if new_index === old_index, this function won't be called.
    onDrop: function(tbody, row, new_index, old_index) {

      //http://www.sitepoint.com/use-html5-data-attributes/
      var page_id = row.dataset.pageId;
      //alert('Page id is ' + page_id);

      // old_index is stored index of row in table/tbody before start the dragging.
      // new_index is index of row in table/tbody after the row has been dragged.
      //console.log(new_index, old_index);
      updatePages(page_id, new_index);
    },

    // if new_index === old_index, this function will be called.
    onDragEnd: function(tbody, row, current_index) {
      console.log('Dragging the ' + current_index + '. row canceled.');
    }
  });

  function updatePages(page_id, new_index){
    console.log(page_id);
    console.log(new_index);
  }

});



