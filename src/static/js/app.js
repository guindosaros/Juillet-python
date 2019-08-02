$.ajax({
    url:  'list',
    type:  'get',
    dataType:  'json',
    success: function  (data) {
        let rows =  '';
        data.liste.forEach(room => {
        rows += `
        <tr>
            <td>${room.match}</td>
            <td>${room.equipe}</td>
            <td classe ="cote-line">${room.cote}</td>
            <td>
                <button class="btn btn-danger deleteBtn" data-id="${room.id}"><i class="fas fa-trash-alt"></i></button>
            </td>
        </tr>`;
    });
    $('#myTable > tbody').append(rows);
    $('.deleteBtn').each((i, elm) => {
        $(elm).on("click",  (e) => {
            deleteRoom($(elm))
        })
    })
}
});

function  deleteRoom(el){
    roomId  =  $(el).data('id')
    $.ajax({
        url:  `delete/${roomId}`,
        type:  'post',
        dataType:  'json',
        success:  function (data) {
            $(el).parents()[1].remove()
        }
    });
}

function recalculateCart()
{
  var subtotal = 0;
  $('.cotetatal').each(function () {
    subtotal += parseFloat($(this).children('.cote-line').text());
    console.log(subtotal)
  });
}
