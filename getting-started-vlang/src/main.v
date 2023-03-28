module main

import os

import mymodules { add_xy }
import mymodules.submodule { sub_xy }

import pdf_generator { generate }

fn main() {
	println('Hello, World!')
	println(add(1, 2))
	dynamic_array()
	check_os_pkg()
	println('Multiple values: ${giveme_three_values()}')
	person := Person{
		gkey: 0
		first_name: 'Noman'
		last_name: 'Ali'
	}

	println('Person gkey: ${person}')
	person.get_person()

	println('Struct Embedding: ${StructEmbedding{ temp: true }}')
	println('Use Embedding: ${UseStructEmbedding{
		temp1: 1
		temp: false
	}}')

	person_as_param(person)
	generate()

	println(add_xy(2, 3)) // expected: 5
	println(sub_xy(10, 7)) // expected: 3
}

fn add(n1 i64, n2 i64) i64 {
	return n1 + n2
}

fn dynamic_array() []int {
	mut arr := [1, 2, 3, 4]
	println('Mutable array: ${arr}')
	arr << 5

	for a in arr {
		println('Mutable array: ${a}')
	}

	println('Length of array: ${arr.len}')
	return arr
}

fn giveme_three_values() (string, i64, bool) {
	return 'Noman Ali', 1, true
}

fn check_os_pkg() []string {
	disk1_files := os.ls('/disk1') or { panic('Unable to get list of dirs at given path') }

	for file in disk1_files {
		println(file)
	}

	return disk1_files
}

fn person_as_param(p Person) {
	println("Don't try to pass person as param ${p.first_name} ${p.last_name}")
}
