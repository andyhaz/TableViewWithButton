//
//  myTableView.swift
//  TableViewWithButton
//
//  Created by andyhaz on 12/22/22.
//

import Cocoa

class myTableView: NSTableCellView {
    
    var buttonTitle:String = ""

    static let identifier = "myTableView"
    
    static func nib() -> NSNib {
        return NSNib(nibNamed: "myTableView",
                     bundle: nil)!
    }
    
    @IBOutlet var button: NSButton!
    
    @IBAction func button(_ sender: Any) {
     print(buttonTitle)
    }
    
     func configer(title:String){
         buttonTitle = title
         button.title = buttonTitle
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
  /*  override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        // Drawing code here.
    }*/
    
}
