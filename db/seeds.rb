lotr_1 = Movie.create(title: 'The Lord of the Rings: The Fellowship of the Ring', release_year: 2001)
lotr_2 = Movie.create(title: 'The Lord of the Rings: The Two Towers',             release_year: 2002)
lotr_3 = Movie.create(title: 'The Lord of the Rings: The Return of the King',     release_year: 2003)

Person.create(first_name: 'Peter',  last_name: 'Jackson', movies_as_director: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Peter',  last_name: 'Jackson', movies_as_producer: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Barrie', last_name: 'Osborne', movies_as_producer: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Fran',   last_name: 'Walsh',   movies_as_producer: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Tim',    last_name: 'Sanders', movies_as_producer: [lotr_1])

Person.create(first_name: 'Elijah',  last_name: 'Wood',     aliases: ['Frodo', 'Hobbit'],       movies_as_actor: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Ian',     last_name: 'McKellen', aliases: ['Gandalf', 'The Wizard'], movies_as_actor: [lotr_1, lotr_2, lotr_3])
Person.create(first_name: 'Orlando', last_name: 'Bloom',    aliases: ['Legolas', 'Elve'],       movies_as_actor: [lotr_1, lotr_2, lotr_3])

User.create(email: 'admin@admin.com', password: '4DM1N_W3B', password_confirmation: '4DM1N_W3B')