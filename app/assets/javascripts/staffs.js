$(function () {
    addEventHandler();
})
const addEventHandler = () => {
    $('#new_staff').on('submit', function(e) {
        e.preventDefault();
        const serial = $(this).serialize()
        $.post('/staffs', serial).done(function(data) {
            $('#show').html('')
            $('#show').append(`<h2> New Staff: ${data.name},  Bio: ${data.bio} </h2>`)
        })
    })
    $('#appts').on('click', function(e) {
        e.preventDefault();
        $.get('/staffs')
        .success(function(json) {
            json.forEach(function(staff) {
                $('.staffAppt').append(`<li> ${staff.name} - ${staff.appointments}</li>`)
             console.log(staff)
            })
        })
          
    })
}      

