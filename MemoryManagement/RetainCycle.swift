import Foundation

class Shop {
    var str: String
    var myBlock: ((String) -> ())
    
    init() {
        
    }
    
}

//解决循环引用的三种方法

//1
let shop: Shop = Shop()
weak var weakShop: Shop? = shop

weakShop?.myBlock = {
    print("")
    
}

