// Largely inspired (copied) from the Dart `args` package.
// See https://github.com/dart-lang/args

module clap

import strings

struct Usage {
	flags []Flag
mut:
	current_column int = 0
	new_lines_needed int = 0
	builder strings.Builder = strings.new_builder(100)
}

fn (mut u Usage) generate(cmd &Command) string {
	u.builder.write_string(cmd.description)

	for flag in u.flags {
		if flag.hide {
			continue
		} else {
			eprintln('Flag ${flag.name} found!')
		}
	}

	return u.builder.str()
}