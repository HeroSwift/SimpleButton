
import UIKit

public class SimpleButton: UIButton {
    
    public var onPress: (() -> Void)?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addTarget(self, action: #selector(self.touchUpInside), for: .touchUpInside)
    }
    
    public func setBackgroundColor(color: UIColor, for state: UIControlState) {
        if let image = makeImage(color: color) {
            setBackgroundImage(UIImage(cgImage: image), for: state)
        }
    }
    
    private func makeImage(color: UIColor) -> CGImage? {
        
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: frame.size)
        
        UIGraphicsBeginImageContext(rect.size)
        
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        let image = context?.makeImage()
        
        UIGraphicsEndImageContext()
        
        return image
        
    }
    
    @objc private func touchUpInside() {
        onPress?()
    }
    
}
