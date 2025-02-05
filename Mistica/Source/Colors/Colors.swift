//
//  Colors.swift
//
//  Made with ❤️ by Novum
//
//  Copyright © Telefonica. All rights reserved.
//

import UIKit

protocol Colors {
    // BACKGROUNDS
    var appBarBackground: UIColor { get }
    var background: UIColor { get }
    var backgroundContainer: UIColor { get }
    var backgroundAlternative: UIColor { get }
    var backgroundBrand: UIColor { get }
    var backgroundFeedbackBottom: UIColor { get }
    var backgroundOverlay: UIColor { get }
    var backgroundSkeleton: UIColor { get }
    var backgroundSkeletonInverse: UIColor { get }
    var navigationBarBackground: UIColor { get }
    var skeletonWave: UIColor { get }

    // BORDERS
    var border: UIColor { get }
    var borderDark: UIColor { get }
    var borderLight: UIColor { get }
    var borderSelected: UIColor { get }

    // BORDERS
    var buttonDangerBackground: UIColor { get }
    var buttonDangerBackgroundSelected: UIColor { get }
    var buttonLinkBackgroundSelected: UIColor { get }
    var buttonLinkBackgroundSelectedInverse: UIColor { get }
    var buttonPrimaryBackground: UIColor { get }
    var buttonPrimaryBackgroundInverse: UIColor { get }
    var buttonPrimaryBackgroundSelected: UIColor { get }
    var buttonPrimaryBackgroundSelectedInverse: UIColor { get }
    var buttonSecondaryBackground: UIColor { get }
    var buttonSecondaryBackgroundSelected: UIColor { get }
    var buttonSecondaryBorderInverse: UIColor { get }
    var buttonSecondaryBorderSelectedInverse: UIColor { get }

    var textButtonPrimary: UIColor { get }
    var textButtonPrimaryInverse: UIColor { get }
    var textButtonPrimaryInverseSelected: UIColor { get }
    var textButtonSecondary: UIColor { get }
    var textButtonSecondarySelected: UIColor { get }
    var textButtonSecondaryInverse: UIColor { get }
    var textButtonSecondaryInverseSelected: UIColor { get }
    var textLink: UIColor { get }
    var textLinkInverse: UIColor { get }
    var textLinkDanger: UIColor { get }
    var textLinkSnackbar: UIColor { get }

    // CONTROLS
    var control: UIColor { get }
    var controlActivated: UIColor { get }
    var controlError: UIColor { get }
    var loadingBar: UIColor { get }
    var loadingBarBackground: UIColor { get }

    // DIVIDERS
    var divider: UIColor { get }
    var dividerInverse: UIColor { get }
    var navigationBarDivider: UIColor { get }

    // FEEDBACKS
    var badge: UIColor { get }
    var feedbackErrorBackground: UIColor { get }
    var feedbackInfoBackground: UIColor { get }

    // GLOBAL
    var brand: UIColor { get }
    var brandHigh: UIColor { get }
    var inverse: UIColor { get }
    var neutralHigh: UIColor { get }
    var neutralLow: UIColor { get }
    var neutralMedium: UIColor { get }
    var promo: UIColor { get }
    var highlight: UIColor { get }

    var textPrimary: UIColor { get }
    var textPrimaryInverse: UIColor { get }
    var textSecondary: UIColor { get }
    var textSecondaryInverse: UIColor { get }

    // STATES
    var error: UIColor { get }
    var success: UIColor { get }
    var warning: UIColor { get }

    // BARS TEXTS
    var textNavigationBarPrimary: UIColor { get }
    var textNavigationBarSecondary: UIColor { get }
    var textNavigationSearchBarHint: UIColor { get }
    var textNavigationSearchBarText: UIColor { get }
    var textAppBar: UIColor { get }
    var textAppBarSelected: UIColor { get }

    // GRADIENTS
    var backgroundBrandGradient: [UIColor] { get }

    // TAGS
    var promoLow: UIColor { get }
    var brandLow: UIColor { get }
    var successLow: UIColor { get }
    var warningLow: UIColor { get }
    var errorLow: UIColor { get }
    var promoHigh: UIColor { get }
    var successHigh: UIColor { get }
    var warningHigh: UIColor { get }
    var errorHigh: UIColor { get }
}
