//
//  NibLoadable.swift
//  NodeStore
//
//  Created by 林小鹏 on 2022/5/5.
//
import UIKit

public protocol NibLoadable {
}

public extension NibLoadable where Self: UIView {
    // 在协议里面不允许定义class 只能定义static
    func loadFromNib(_ nibname: String? = nil) -> Self { // Self (大写) 当前类对象
        // self(小写) 当前对象
        let loadName = nibname == nil ? "\(self)" : nibname!

        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
    }
}
