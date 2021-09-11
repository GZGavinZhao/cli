module clap

pub type ArgResult = []f64 | []int | []string | bool | f64 | int | string

pub struct Flag {
pub:
	name        string [required]
	abbr        string
	description string
	negatable   bool
	hide bool
pub mut:
	options      []ArgResult
	options_help map[string]string
	value        ArgResult
}

// parse parses the flag.
fn (mut f Flag) parse(flag string, input string) {
}
