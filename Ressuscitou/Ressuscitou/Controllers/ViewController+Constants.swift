//
//  ViewController+Constants.swift
//  Ressuscitou
//
//  Created by Tiago Maia Lopes on 13/02/19.
//  Copyright © 2019 Tiago Maia Lopes. All rights reserved.
//

import UIKit

extension UIViewController {

    /// The segue identifiers used throughout the code.
    enum SegueIdentifiers {
        static let WarningControllerSegue = "Show warning controller"
        static let SongsControllerSegue = "Show songs controller"
        static let MenuControllerSegue = "Show menu"
        static let SongControllerSegue = "Show song"
        static let AudioHandlerControllerSegue = "Embed audio handler"
    }

    /// The theme colors used in the application.
    enum Colors {
        static let BaseRed = UIColor(red: 241/255, green: 0, blue: 17/255, alpha: 1)
        static let PreCathecumenateColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        static let LiturgicalColor = UIColor(red: 115/255, green: 213/255, blue: 241/255, alpha: 1)
        static let CathecumenateColor = UIColor(red: 161/255, green: 223/255, blue: 134/255, alpha: 1)
        static let ElectionColor = UIColor(red: 251/255, green: 202/255, blue: 138/255, alpha: 1)
    }

    /// The user info keys used in the controllers observing notification events.
    enum UserInfoKeys {
        static let Filter = "filter"
        static let SelectedCategoryIndexPath = "selected category"
        static let SelectedCategoryTitle = "selected category title"
    }
}

/// Adds the colors associated with each category.
extension SongMO.StageCategory {

    // MARK: Properties

    /// The color associated to the category.
    var color: UIColor {
        switch self {
        case .preCathecumenate:
            return UIViewController.Colors.PreCathecumenateColor

        case .liturgicalSongs:
            return UIViewController.Colors.LiturgicalColor

        case .cathecumenate:
            return UIViewController.Colors.CathecumenateColor

        case .election:
            return UIViewController.Colors.ElectionColor
        }
    }
}

/// Adds color capabilities to the model.
extension SongMO {

    // MARK: Properties

    var color: UIColor? {
        return stageCategory?.color
    }
}
