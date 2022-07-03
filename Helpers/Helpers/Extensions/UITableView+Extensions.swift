//
//  UITableView+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

public protocol CollectionViewReusableCellProtocol {
    static var cellIdentifier: String { get }
    static var nib: UINib { get }
}

public extension CollectionViewReusableCellProtocol where Self: UICollectionViewCell {
    static var cellIdentifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }
}

extension UICollectionViewCell: CollectionViewReusableCellProtocol { }

public extension UICollectionView {
    func register<C: CollectionViewReusableCellProtocol>(cell: C.Type) {
        self.register(C.nib, forCellWithReuseIdentifier: C.cellIdentifier)
    }
    
    func dequeue<C: CollectionViewReusableCellProtocol>(cell: C.Type, indexPath: IndexPath) -> C {
        // swiftlint:disable force_cast
        self.dequeueReusableCell(withReuseIdentifier: C.cellIdentifier, for: indexPath) as! C
        // swiftlint:enable force_cast
    }
}
