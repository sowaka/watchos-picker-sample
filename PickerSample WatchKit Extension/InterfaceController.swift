//
//  InterfaceController.swift
//  PickerSample WatchKit Extension
//
//  Created by Sowaka on 2015/07/24.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var table: WKInterfaceTable!
    var items:[String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        items.append("Color Picker")
        
        table.setNumberOfRows(items.count, withRowType: "ItemRow")
        for i in 0..<items.count {
            let row = table.rowControllerAtIndex(i) as! ItemRow
            row.label.setText(items[0])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        switch rowIndex {
        case 0:
            pushControllerWithName("ColorPicker", context: nil)
        default:
            break
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
