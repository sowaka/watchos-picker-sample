//
//  ColorPickerInterfaceController.swift
//  PickerSample
//
//  Created by Sowaka on 2015/07/24.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


class ColorPickerInterfaceController: WKInterfaceController {
    @IBOutlet var picker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        var items:[WKPickerItem] = []
        for i in 0..<10 {
            let image = PickerStyleKit.imageOfColorPicker(value: CGFloat(i))
            let item = WKPickerItem()
            item.contentImage = WKImage(image: image)
            items.append(item)
        }
        
        picker.setItems(items)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
