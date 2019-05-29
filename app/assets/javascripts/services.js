$(function () {
    attachClickHandler();
})

const attachClickHandler = () => {
    $('#services').on('click', (e) => {
        e.preventDefault();
        history.pushState(null, null, 'services')
        fetch('/services.json')
            .then(resp => resp.json())
            .then(data => {
                $('#show').html('')
                data.forEach(service => {
                    let newService = new Service(service)
                    let serviceHTML = newService.formatList()
                    $('#show').append(serviceHTML)
                })
            })
    })
    $(document).on('click', ".servDesc", function (e) {
        e.preventDefault();
        let id = $(this).attr('data-id')

        fetch(`/services/${id}.json`)
            .then(resp => resp.json())
            .then(data => {
                $('#show').html('')
                let newService = new Service(data)
                let serviceHTML = newService.formatShow()
                $('#show').append(serviceHTML)
            })
    })
}

class Service {
    constructor(service) {
        this.id = service.id
        this.name = service.name
        this.description = service.description
    }
}

Service.prototype.formatList = function () {
    let list =
        ` <a href= "/services/${this.id}" data-id="${this.id}" class="servDesc"><h3 >${this.name}</h3></a>`
    return list
}

Service.prototype.formatShow = function () {
    let desc =
        ` <h2>${this.name}</h2><br>
    <h3>${this.description}</h3>`
    return desc
}

