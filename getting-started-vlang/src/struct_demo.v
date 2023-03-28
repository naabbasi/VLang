struct Person {
	gkey i64 [required]
	first_name string
	last_name string
}

fn (p Person) get_person() {
	println('Values in person ${p.gkey}, ${p.first_name}, ${p.last_name}')
}

struct StructEmbedding {
	temp bool
}

struct UseStructEmbedding {
	StructEmbedding
	temp1 int
}
