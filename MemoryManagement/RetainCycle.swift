import Foundation
import UIKit

class Window {
 weak var rootView: View?
 var onRotate: (() -> ())? = nil
}

var window: Window? = Window()

var view: View? = View(window: window)

//产生循环引用
window?.onRotate = {
 print("We now also need to update the view: \(String(describing: view))")
}

//指向window的弱引用变量，避免循环引用
window?.onRotate = { [weak view] in
 print("We now also need to update the view: \(String(describing: view))")
}
