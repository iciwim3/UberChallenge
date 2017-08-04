//: Uber Challenge!!! "Ok it's late...imma UBER to yo' crib I cannot wait!"

import Foundation

class UIColor { // 2.2.8.1.1
    var hexNumber: String // 2.2.8.1.2
    
    init(hexNumber hex: String) { // 2.2.8.1.3
        hexNumber = hex
    }
}

class UIImage { // 2.2.8.2.1
    var localFileName: String
    var width: Int = 500
    var height: Int = 500  // 2.2.8.2.2
    
    init(named name: String) {  // 2.2.8.2.3
        localFileName = name
    }
}

class UIView { // 2.2.8.3.1
    var x: Int
    var y: Int
    var width: Int
    var height: Int
    var backgroundColor: UIColor = UIColor(hexNumber: "#ffffff") // 2.2.8.3.2
    var subViews: [UIView] = [UIView]() // 2.2.8.3.3
    
    init(x: Int, y: Int, width: Int, height: Int) { // 2.2.8.3.4
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    func add(subView: UIView) { // 2.2.8.3.5
        self.subViews.insert(subView, at: 0)
    }
    
    func set(backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
    }
    
    func set(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func set(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class UIImageView: UIView { // 2.2.8.4.1
    var image: UIImage
    
    init(image: UIImage) { // 2.2.8.4.2
        self.image = image
        
        super.init(x: 0, y: 0, width: image.width, height: image.height) // 2.2.8.4.3
    }
}

class UILabel: UIView { // 2.2.8.5.1
    var text: String // 2.2.8.5.2
    
    init(text: String, width: Int, height: Int) { // 2.2.8.5.3
        self.text = text
        
        super.init(x: 0, y: 0, width: width, height: height)
    }
}

class UIButton: UIView { // 2.2.8.6.1
    var title: String
    
    init(title: String, width: Int, height: Int) { // 2.2.8.6.2
        self.title = title
        
        super.init(x: 0, y: 0, width: width, height: height) // 2.2.8.6.3
    }
}

// Create the app UI

let mainView = UIView(x: 0, y: 0, width: 375, height: 667)
mainView.set(backgroundColor: UIColor(hexNumber: "#35h5394"))

// Create an imageView and add it to the mainView
let videoShootImage = UIImage(named: "4am")
let videoImageView = UIImageView(image: videoShootImage)
mainView.add(subView: videoImageView)
videoImageView.x = 24
videoImageView.y = 24
videoImageView.set(width: 240, height: 250)

print(mainView.subViews)

// Create label with sample text
let sampleText = "Ok you popped up on me by surprise! You see, I never took you for the popping type! Damn, it's 4am so please believe the hype!!!"
let textLabel = UILabel(text: sampleText, width: 240, height: 228)
mainView.add(subView: textLabel)

print(mainView.subViews)

let button = UIButton(title: "Drop a pin", width: 240, height: 38)
button.set(x: 14, y: 19)
mainView.add(subView: button)

print(mainView.subViews)

