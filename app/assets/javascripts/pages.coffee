jQuery ->
  if $('#sortable').length > 0
    #this makes each td equal width- not what we want
    #table_width = $('#sortable').width()
    #cells = $('.table').find('tr')[0].cells.length
    #desired_width = table_width / cells + 'px'
    #$('.table td').css('width', desired_width)

    #this ALMOST works
    #$('td').each ->
    #  $(this).css 'width', $(this).width() + 'px'
    #  return



    book_id = $("#sortable").data('book-id');

    $('#sortable').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        page_id = ui.item.data('item-id')
        # console.log(page_id)
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page

        $.ajax(
          type: 'POST'
          url: '/books/'+book_id+'/pages/update_row_order'
          dataType: 'json'
          data: { page: {book_id: book_id, id: page_id, row_order_position: position } }
      )
  )
