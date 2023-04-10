module main

import time

fn task_void(id int, duration int) {
	println('task ${id} begin')
	time.sleep(duration * time.millisecond)
	task_str := 'task ${id} end'
	println(task_str)

	// return task_str
}

fn task(id int, duration int) string {
	println('task ${id} begin')
	time.sleep(duration * time.millisecond)
	task_str := 'task ${id} end'
	println(task_str)

	return task_str
}

fn main() {
	mut threads := []thread{}
	threads << spawn task_void(1, 1000)
	println('${threads.str()}')
	threads.wait()
	println('done')

	mut threads_str := []thread string{}
	threads_str << spawn task(1, 2000)
	threads_str << spawn task(2, 3000)
	threads_str.wait()
	println('done')
	println('${threads.str()}')
}
