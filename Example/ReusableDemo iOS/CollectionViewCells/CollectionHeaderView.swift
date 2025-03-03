//
//  CollectionHeaderView.swift
//  ReusableDemo
//
//  Created by Olivier Halligon on 20/01/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit
import Reusable

/**
 * This view is loaded from a NIB, and is the XIB file's
 * root view (and not the File's Owner). => it is `NibLoadable`
 *
 * It is also reusable and has a `reuseIdentifier` (as it's a CollectionViewCell
 * and it uses the CollectionView recycling mechanism) => it is `Reusable`
 *
 * That's why it's annotated with the `NibReusable` protocol,
 * Which in fact is just a convenience typealias that combines
 * `NibLoadable` & `Reusable` protocols.
 */
final class CollectionHeaderView: UICollectionReusableView, BundledSelf, NibReusable {
  @IBOutlet private weak var titleLabel: UILabel! {
    didSet { update() }
  }
  var title: String? {
    didSet { update() }
  }
  private func update() {
    titleLabel?.text = title
  }
}
