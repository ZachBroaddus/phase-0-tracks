instrument_store = {
	percussion_room: {
		room_num: 3,
		drums: ["yamaha", "dw", "pearl"],
		cymbals: ["zildjian", "sabian", "paiste"]
	},
	guitar_room: {
		room_num: 5,
		guitars: ["fender", "gibson", "martin"],
		amps: ["orange", "mesa", "vox"]
	},
	keyboard_room: {
		room_num: 6,
		keyboards: ["korg", "moog", "roland"],
		pianos: ["yamaha", "baldwin", "steinway"]
	}
}

p instrument_store[:guitar_room][:amps][0]
p instrument_store[:keyboard_room][:room_num]
p instrument_store[:percussion_room][:drums]
p instrument_store[:percussion_room][:cymbals][1]
p instrument_store[:guitar_room][:guitars]