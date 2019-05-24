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
        console.log(this)
        $.get('/staffs')
        .success(function(json) {
            const $ol = $('.staffAppt')
            $ol.html('')
            console.log($ol)
            json.forEach(function(staff) {
                $ol.append(`<li> ${staff.name} - ${staff.appointments}</li>`)
            })
        })
          
    })
}      

