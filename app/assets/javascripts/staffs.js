$(function () {
    addEventHandler();
})
const addEventHandler = () => {
    $('#new_staff').on('submit', function (e) {
        e.preventDefault();
        const serial = $(this).serialize()
        $.post('/staffs', serial).done(function (data) {
            $('#show').html('')
            $('#show').append(`<h2> New Staff: ${data.name},  Bio: ${data.bio} </h2>`)
        })
    })
    $('#appts').on('click', function (e) {
        e.preventDefault();
        $.get('/staffs')
            .success(function (json) {
                json.forEach(function (staff) {
                    let $appts = staff.appointments
                    $appts.forEach(function (appt) {
                        let apptDate = new Date(appt.date)
                        let dateFormat = apptDate.toLocaleDateString()
                        let apptTime = new Date(appt.time)
                        let timeFormat = apptTime.toLocaleTimeString()
                        $('.staffAppt').append(`<ul><li><h3>${staff.name}</h3><p>${dateFormat}  at  ${timeFormat}</li></ul></p>`)

                    })
                })
            })

    })

}

