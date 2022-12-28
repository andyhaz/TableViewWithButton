//
//  ViewController.swift
//  TableViewWithButton
//
//  Created by andyhaz on 12/20/22.
//

import Cocoa

protocol tableDelegate:AnyObject{
    func tableEvent(texrData:String)
}

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource,tableDelegate {
    
    @IBOutlet var tableView: NSTableView!
    
    let data = ["first","second"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //
        tableView.register(myTableView.nib(), forIdentifier: NSUserInterfaceItemIdentifier(rawValue: myTableView.identifier) )
        
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func numberOfRows(in tableView: NSTableView) -> Int {
        return data.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let cellData = data[row]
        guard let userCell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "myTableView"), owner: self) as? myTableView else { return nil }
        
        userCell.configer(title:cellData)
        
        userCell.delegate = self
        
        return userCell
    }
    
  /*  func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
      //  let cellData = data[row]
        
        guard let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: myTableView.identifier) , owner: self) as? NSTableCellView else { return nil }
        /*
         guard let cell = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as? NSTableCellView else { return nil }
         */
        if (tableColumn?.identifier)!.rawValue == "cellName" {
             // cell.textField?.stringValue = cellData
           // cell.configer(cellData)
              
        }

        return cell
    }*/
    /*
     func tableView( tableView: NSTableView, cellForRowat indexPath:IndexPath){
        let cell = tableView.dequeueReusableCell(withIdenteifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }*/
    func tableEvent(texrData:String){
        print("tableEvent:\(texrData)")
    }
}
