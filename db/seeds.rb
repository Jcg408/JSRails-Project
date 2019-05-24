# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Client.create(name: 'Clark Kent', email: 'clark@krypton.com', password: 'superman')
    Client.create(name: 'Lois Lane', email: 'lois@dailyplanet.com', password: 'reporter')
    Client.create(name: 'Betty Boop', email: 'bboop@talkartoon.com', password: 'boopadoo')
    Client.create(name: 'Bugs Bunny', email: 'bugs@looneytunes.com', password: 'whatsupdoc')
    Client.create(name: 'Jessica Rabbit', email: 'jess@rabbit.com', password: 'hellostranger')
    Client.create(name: 'Rebecca Sunnybrook', email: 'sunnygirl@me.com', password: 'becky123')

    Staff.create(name: 'Max', bio: 'Spa owner and master barber for 30 years')
    Staff.create(name: 'Roberto', bio: 'Hair Professional Artist, specializes in hair color formulation and application')
    Staff.create(name: 'Lulabeth', bio: 'Lulabeth has 20 years experience in hair styling and cuts.')
    Staff.create(name: 'Jackson', bio: 'L Oreal professional colorist with an extensive modeling clientele.')
    Staff.create(name: 'Rebecca', bio: 'Rebecca is an award winning professional Nail Artist.')
    Staff.create(name: 'Lindsey', bio: ' Nail design and expert manicurist/pedicurist')
    Staff.create(name: 'Megan', bio: ' Hair stylist specializing in special occassions such as weddings, formal affairs')
    Staff.create(name: 'Jake', bio: ' Massage therapist, tanning specialist')
    Staff.create(name: 'Olga', bio: 'Esthetician, facials, massage therapy and aromatherapy')

    Service.create(name: 'Barber', description: 'Full service professional barber service includes traditional cuts as well as Fades, Undercuts, Pompadours, Quiffs, and others. Hot towel shaves, Beard trims, Mustache trims and Mustache waxing.')
    Service.create(name: 'Hair Color', description: 'We use ammonia free hair color. Highlight techniques: foil, frosting, chunking and lowlights. We specialize in color correction. ')
    Service.create(name: 'Hair Cut', description: 'Popular cuts include Lob Pixie, Jawline Bob, Curtain Bangs, Layered Wisp. Let us help you decide on a style that suits you. All hair types are welcome!') 
    Service.create(name: 'Hair Style', description: 'Special occassions require special attention to your appearance. Coiffure for weddings, proms, formal affairs, anniversaries, or just to try something different.')
    Service.create(name: 'Facial', description: 'This purifying treatment consists of steaming, exfoliating, and an intense deeper cleaning of clogged pores. The skin is gently massaged, then a therapist selected mask is applied. Beneficial for all skin types.')
    Service.create(name: 'Body Exfoliation', description: 'Enjoy a body scrub with chamomile and gentle buffing grains that sweeps away dull surface cells, leaving even sensitive skin types feeling smooth, refreshed and hydrated.')
    Service.create(name: 'Full Body Massage', description: 'A basic relaxing full body massage which may include a variety of massage strokes such as rolling, kneading, and percussion to help the body improve circulation')
    Service.create(name: 'Neck/Shoulder Massage', description: 'A relaxing yet stimulating way to relieve the stress buildup. Warm essential oil rub and massage.')
    Service.create(name: 'Nail Design', description: 'Award winning nail designs include customized designs as well as Artist Choice. Innovative use of colors and materials to create a one-of-a-kind design.' )
    Service.create(name: 'Manicure', description: 'Soak, scrub, hand massage and nail color included with all manicures. Basic manicure, dip powder, gel polish, full set tips')
    Service.create(name: 'Pedicure', description: 'Soak, scrub, foot massage and nail color included with all pedicures. Antifungal treatment available with advance notice')
    Service.create(name: 'Waxing', description: 'Professional waxing treatment that uses wax that is skin temperature and elastic, eliminating much of the pain associated with this procedure. ')
    Service.create(name: 'Tanning Bed', description: 'Get a radiant, sun-kissed glow in our state of the art tanning facility. Tanning beds and stand-up equipment include amenities including high-pressure adjustable facial tanners and shoulder tanners. ')
    Service.create(name: 'Tanning Spray', description: 'VersaSpa Pro Sunless skin care system provides a Premium spray tanning experience with 3 spray nozzles for even coverage. Contains a unique blend of marine algae to moisturize, oxygenate and detoxify for skin rejuvenation. The open booth provides a warm environment with heated dry passes with each spray pass.')
    
    
    
    