# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Group.delete_all
# Group.create([
#   {
#     name: 'Bigfoot Marketing',
#     description: 'The Bigfoot Events marketing department.',
#     permissions: 'admin'
#   }
# ])

Format.delete_all
Format.create([
  { 
    name: '8.5 x 11',
    description: 'A standard letter-sized print. Good for handouts or small posters.',
    finish: 'Matte',
    printable: true
  },
  { 
    name: '8.5 x 11 (colored paper)',
    description: 'A standard letter-sized print. Good for handouts or small posters.',
    warning: 'Please specify color (we have many!)',
    finish: 'matte',
    printable: true
  },
  {
    name: '11 x 17', 
    description: 'A mid-size poster good for posting on boards.', 
    finish: 'matte', 
    printable: true
  },
  {
    name: '19 x 32 (A-Frame)',
    description: 'A bigger poster sized specifically for A-Frame boards.',
    finish: 'matte',
    printable: true
  },
  {
    name: 'Custom Size',
    description: 'Whatever size you need. Up to 36" x 72".',
    warning: 'Please specify dimensions.',
    finish: 'matte',
    printable: true
  },
  {
    name: 'Digital',
    description: 'A digital-only design for social media or other digital use.',
    warning: 'Please describe dimensions and requirements.',
    printable: false
  }
])