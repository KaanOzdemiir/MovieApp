//
//  UITableView+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

public protocol TableViewReusableCellProtocol {
    static var cellIdentifier: String { get }
    static var nib: UINib { get }
}

public extension TableViewReusableCellProtocol where Self: UITableViewCell {
    static var cellIdentifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }
}

extension UITableViewCell: TableViewReusableCellProtocol { }

public extension UITableView {
    func register<C: TableViewReusableCellProtocol>(cell: C.Type) {
        self.register(C.nib, forCellReuseIdentifier: C.cellIdentifier)
    }
    
    func dequeue<C: TableViewReusableCellProtocol>(cell: C.Type, indexPath: IndexPath) -> C {
        self.dequeueReusableCell(withIdentifier: C.cellIdentifier, for: indexPath) as! C
    }
}
