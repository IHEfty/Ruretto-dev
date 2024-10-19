import "times"
import "wheel"

var chars = "1234567890"
var n = ""

export fn(e, cm) {
	if includes(chars, e.rune) {
		n += string(e.rune) 
		go(fn(){
			times.sleep(times.second*2)
			n = ""
		})
	}
	else if e.code == 40 {
		a := int(n)
		if is_int(a) {
			if a >= 0 && a <= 36 {
				for i, w in wheel {
					if a == w.number {
						cm.i = i
					}
				}
			}
			n = ""
		}
	}
	else {
		n = ""
	}
}