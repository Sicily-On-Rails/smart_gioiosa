# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
pois = Poi.create(
  [
    {
      name: "Chiesa del Convento",
      latitude: 38.173646,
      longitude: 14.897284 

    },
    {
      name: "Grotta del Tono",
      latitude: 38.1758309,
      longitude: 14.8955204
    },
    {
      name: "Sentiero naturalistico Capo Calavà",
      latitude: 38.185,
      longitude: 14.912389
    },
    {
      name: "Museo di arte sacra",
      latitude: 38.175833,
      longitude: 14.89755
    }
  ])
