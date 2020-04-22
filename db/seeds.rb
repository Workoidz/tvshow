# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Channel.destroy_all

Channel.create! [

	{channel_name:"zee TV"},
	{channel_name:"Mtv"},
	{channel_name:"Start TV"}

]


Show.create! [

	{show_name:"amazing masti", show_timing:Time.now, duration: 30, channel_id: Channel.first.id},
	{show_name:"HUM log", show_timing:Time.now, duration: 30, channel_id: Channel.first.id},
	{show_name:"Bay watch", show_timing:Time.now, duration: 30, channel_id: Channel.second.id},
	{show_name:"TV world", show_timing:Time.now, duration: 30, channel_id: Channel.second.id},
	{show_name:"BIGBOSS", show_timing:Time.now, duration: 30, channel_id: Channel.last.id},
	{show_name:"Adventure", show_timing:Time.now, duration: 30, channel_id: Channel.last.id}

]