import "fs"
import "os"
import "path"

var user_dir = path.join(os.getenv("appdata"), "Rūretto")
var user_file = path.join(user_dir, "userdata.dat")
if !fs.exists(user_dir) {
	fs.mkdir(user_dir)
}

fs.writefile(user_file, `{"betting_scale":1,"betting_chips":[],"points":1}`)
