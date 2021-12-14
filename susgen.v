/*  susgen
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

/* Imports */
import os
import rand

/* Main function */
fn main() {
	// Command list
	commands := ["red", "green", "blue", "cyan", "yellow", "pink", "black", "white", "rand", "help", "amogus"]

	// Exit if the args list has 1 element; 'susgen'
	if !(os.args.len > 1) {
		println("You need to pass a color/command like this: `susgen red`")
		exit(1)
	}

	// Exit if user passed an invalid command
	if !(os.args[1] in commands) {
		println(os.args[1] + " is not a valid color/command.")
		exit(1)
	}

	/* Commands */
	if os.args[1] == "red" { // Red
		println("Generating sus color..")
		red   := rand.int_in_range(100, 255)
		green := rand.int_in_range(20, 40)
		blue  := rand.int_in_range(20, 40)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "green" { // Green
		println("Generating sus color..")
		red   := rand.int_in_range(20, 40)
		green := rand.int_in_range(100, 255)
		blue  := rand.int_in_range(20, 40)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "blue" { // Blue
		println("Generating sus color..")
		red   := rand.int_in_range(20, 40)
		green := rand.int_in_range(20, 40)
		blue  := rand.int_in_range(100, 255)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "cyan" { // Cyan
		println("Generating sus color..")
		red   := rand.int_in_range(20, 40)
		green := rand.int_in_range(100, 255)
		blue  := rand.int_in_range(100, 255)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "yellow" { // Yellow
		println("Generating sus color..")
		red   := rand.int_in_range(100, 255)
		green := rand.int_in_range(100, 255)
		blue  := rand.int_in_range(20, 40)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "pink" { // Pink
		println("Generating sus color..")
		red   := rand.int_in_range(100, 255)
		green := rand.int_in_range(20, 40)
		blue  := rand.int_in_range(100, 255)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "black" { // Black
		println("Generating sus color..")
		red   := rand.int_in_range(16, 99)
		green := red
		blue  := red
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "white" { // White
		println("Generating sus color..")
		red   := rand.int_in_range(156, 239)
		green := red
		blue  := red
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "rand" { // Random sus color
		println("Generating sus color..")
		red   := rand.int_in_range(0, 255)
		green := rand.int_in_range(0, 255)
		blue  := rand.int_in_range(0, 255)
		println("#" + red.hex() + green.hex() + blue.hex())
	}
	else if os.args[1] == "help" { // List commands
		for color in commands {
			println("* " + color)
		}
	}
	else if os.args[1] == "amogus" { // Sus link
		println("very sus link:\nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ")
	}
}