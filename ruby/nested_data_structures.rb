# 5.4 Nested Data Structures
# 
# Release # 2 Design and Build a Nested Data Structure
# ====================================== 
classroom = {
	classroom_furniture: {
		"sofas" => "2",
		"desks" => {
			"total_desks" => '16',
			"front_row_student_desk" =>'5',
			"middle_row_student_desk" => '5',
			"back_row_student_desk" => '5',
			"teachers_desk" => '1'
		},
		"blackboard" => "1",
		"wall_artwork" => [
			"Art submitted by students",
			"Attendance sheet",
			"Student graffiti"
		]
	},
	desk_contents: { 
		'teachers_desk' => [
			'grading pens',
			'answer keys',
			'seating assignments',
			'course sylasbus'
		],
		'front-row-student_desk' => [
			'neatly organized',
			'ten sharpened pencils',
			'filled-out note cards',
			'practice tests'
		],
		'middle-row-student_desk' => [
			'somewhat organized',
			'five sharpened pencils',
			'blank note-cards',
			'cell phone'
	
		],
		'back-row-student_desk' => [
			'disorganized',
			'pencil sharpener',
			'two pens',
			'several sheets of paper filled with doodles'
		]	
	}
}

puts "All of the classroom furniture: ".upcase
p classroom[:classroom_furniture]


puts "Total # of desks: ".upcase
p classroom[:classroom_furniture]["desks"]["total_desks"]

puts "# of teacher desks: ".upcase
p classroom[:classroom_furniture]["desks"]["teachers_desk"]

puts "# of front row desks: ".upcase
p classroom[:classroom_furniture]["desks"]["front_row_student_desk"]

puts "# of middle row desks: ".upcase
p classroom[:classroom_furniture]["desks"]["middle_row_student_desk"]

puts "# of back row desks: ".upcase
p classroom[:classroom_furniture]["desks"]["back_row_student_desk"]


puts "Wall Artwork: ".upcase
p classroom[:classroom_furniture]["wall_artwork"]
puts "Artwork Reversed ".upcase
p classroom[:classroom_furniture]["wall_artwork"].reverse

puts "Teachers desk contents: ".upcase
p classroom[:desk_contents]['teachers_desk'] 
puts "Teachers desk contents after deleting answer key! ".upcase
classroom[:desk_contents]['teachers_desk'].delete("answer keys")
p classroom[:desk_contents]['teachers_desk']

puts "Writing Utensils ".upcase
puts "Front Row Desks: ".upcase
p classroom[:desk_contents]['front-row-student_desk'][1].upcase
puts "Middle Row Desks: ".upcase
p classroom[:desk_contents]['middle-row-student_desk'][1].swapcase
puts "Back Row Desks: ".upcase
p classroom[:desk_contents]['back-row-student_desk'][2].upcase

