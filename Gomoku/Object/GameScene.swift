//  Copyright © 2019 Subph. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    var boardNode: BoardNode = BoardNode()
    var halfSize: CGSize = CGSize()
    var boardSize: CGFloat = 0
    
    func settupBoard() {
        scaleMode = .resizeFill
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        halfSize = CGSize(width: size.width/2, height: size.height/2)
        boardSize = max(size.width, size.height)
        
        boardNode.removeFromParent()
        boardNode = BoardNode()
        boardNode.prepare(size: boardSize)
        boardNode.position = CGPoint(x: -boardNode.size/2, y: -boardNode.size/2)
        addChild(boardNode)
    }
    
}
