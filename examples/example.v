import clap

fn main() {
	flag := clap.Flag{3}	
	println(flag.value)
}