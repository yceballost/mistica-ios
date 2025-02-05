//
//  VivoColorPalette.swift
//
//  Made with ❤️ by Novum
//
//  Copyright © Telefonica. All rights reserved.
//

import UIKit

struct VivoColors: Colors {
    // BACKGROUNDS
    let appBarBackground = VivoColorPalette.white | VivoColorPalette.darkModeGrey
    let background = VivoColorPalette.white | VivoColorPalette.darkModeBlack
    let backgroundContainer = VivoColorPalette.white | VivoColorPalette.darkModeGrey
    let backgroundBrand = VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack
    let backgroundOverlay = VivoColorPalette.grey6.withAlphaComponent(0.6) | VivoColorPalette.darkModeGrey.withAlphaComponent(0.8)
    let backgroundSkeleton = VivoColorPalette.grey1 | VivoColorPalette.darkModeGrey6
    let backgroundSkeletonInverse = VivoColorPalette.white | VivoColorPalette.darkModeGrey6
    let navigationBarBackground = VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack
    let backgroundAlternative = VivoColorPalette.grey1 | VivoColorPalette.darkModeGrey
    let backgroundFeedbackBottom = VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack
    let skeletonWave = VivoColorPalette.grey2 | VivoColorPalette.grey5

    // BORDERS
    let borderLight = VivoColorPalette.grey1 | VivoColorPalette.darkModeBlack
    let border = VivoColorPalette.grey3 | VivoColorPalette.darkModeGrey
    let borderDark = VivoColorPalette.grey5
    let borderSelected = VivoColorPalette.vivoPurple

    // BUTTONS
    let buttonDangerBackground = VivoColorPalette.pepper
    let buttonDangerBackgroundSelected = VivoColorPalette.pepperDark
    let buttonDangerBackgroundHover = VivoColorPalette.pepperDark

    let buttonLinkBackgroundSelected = VivoColorPalette.vivoPurpleLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    let buttonLinkBackgroundSelectedInverse = VivoColorPalette.white.withAlphaComponent(0.2) | VivoColorPalette.white.withAlphaComponent(0.05)

    let buttonPrimaryBackground = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight80
    let buttonPrimaryBackgroundInverse = VivoColorPalette.white | VivoColorPalette.vivoPurpleLight80
    let buttonPrimaryBackgroundSelected = VivoColorPalette.vivoPurpleDark
    let buttonPrimaryBackgroundHover = VivoColorPalette.vivoPurpleDark
    let buttonPrimaryBackgroundSelectedInverse = VivoColorPalette.vivoPurpleLight50 | VivoColorPalette.vivoPurpleDark

    let buttonSecondaryBackground = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight80
    let buttonSecondaryBackgroundSelected = VivoColorPalette.vivoPurpleDark
    let buttonSecondaryBorderInverse = VivoColorPalette.white | VivoColorPalette.vivoPurpleLight80
    let buttonSecondaryBorderSelectedInverse = VivoColorPalette.vivoPurpleLight50 | VivoColorPalette.vivoPurpleDark

    let textButtonPrimary = VivoColorPalette.white | VivoColorPalette.grey2
    let textButtonPrimaryInverse = VivoColorPalette.vivoPurple | VivoColorPalette.grey2
    let textButtonPrimaryInverseSelected = VivoColorPalette.vivoPurple | VivoColorPalette.grey2

    let textButtonSecondary = VivoColorPalette.vivoPurple | VivoColorPalette.grey2
    let textButtonSecondarySelected = VivoColorPalette.vivoPurpleDark | VivoColorPalette.grey4
    let textButtonSecondaryInverse = VivoColorPalette.white | VivoColorPalette.grey2
    let textButtonSecondaryInverseSelected = VivoColorPalette.white | VivoColorPalette.grey4

    let textLink = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight50
    let textLinkInverse = VivoColorPalette.white | VivoColorPalette.vivoPurpleLight50
    let textLinkDanger = VivoColorPalette.pepper
    let textLinkSnackbar = VivoColorPalette.vivoPurpleLight50

    // CONTROLS
    let control = VivoColorPalette.grey3 | VivoColorPalette.darkModeGrey6
    let controlActivated = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight80
    let controlError = VivoColorPalette.pepper
    let loadingBar = VivoColorPalette.pink | VivoColorPalette.vivoPurpleLight80
    let loadingBarBackground = VivoColorPalette.pepperLight30 | VivoColorPalette.darkModeGrey6

    // DIVIDERS
    let divider = VivoColorPalette.grey2 | VivoColorPalette.white.withAlphaComponent(0.05)
    let dividerInverse = VivoColorPalette.white | VivoColorPalette.white.withAlphaComponent(0.05)
    let navigationBarDivider = VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack

    // FEEDBACKS
    let badge = VivoColorPalette.pepperDark
    let feedbackErrorBackground = VivoColorPalette.pepper
    let feedbackInfoBackground = VivoColorPalette.grey6

    // GLOBAL
    let brand = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight80
    let brandHigh = VivoColorPalette.vivoPurpleDark | VivoColorPalette.white.withAlphaComponent(0.05)
    let inverse = VivoColorPalette.white | VivoColorPalette.grey2
    let neutralHigh = VivoColorPalette.grey6 | VivoColorPalette.grey2
    let neutralMedium = VivoColorPalette.grey5
    let neutralLow = VivoColorPalette.grey1 | VivoColorPalette.darkModeGrey6
    let promo = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight80
    let highlight = VivoColorPalette.pink

    let textPrimary = VivoColorPalette.grey6 | VivoColorPalette.grey2
    let textPrimaryInverse = VivoColorPalette.white | VivoColorPalette.grey2
    let textSecondary = VivoColorPalette.grey5 | VivoColorPalette.grey4
    let textSecondaryInverse = VivoColorPalette.white | VivoColorPalette.grey4

    // STATES
    let error = VivoColorPalette.pepper
    let success = VivoColorPalette.vivoGreen
    let warning = VivoColorPalette.orange

    // BARS TEXTS
    let textNavigationBarPrimary = VivoColorPalette.white | VivoColorPalette.grey2
    let textNavigationBarSecondary = VivoColorPalette.vivoPurpleLight50 | VivoColorPalette.grey4
    let textNavigationSearchBarHint = VivoColorPalette.vivoPurpleLight50 | VivoColorPalette.grey4
    let textNavigationSearchBarText = VivoColorPalette.white | VivoColorPalette.grey2
    let textAppBar = VivoColorPalette.grey4 | VivoColorPalette.grey5
    let textAppBarSelected = VivoColorPalette.vivoPurple | VivoColorPalette.grey2

    // GRADIENTS
    let backgroundBrandGradient = [
        VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack,
        VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack,
        VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack,
        VivoColorPalette.vivoPurple | VivoColorPalette.darkModeBlack
    ]

    // TAGS
    var successLow = VivoColorPalette.vivoGreenLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    var warningLow = VivoColorPalette.orangeLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    var errorLow = VivoColorPalette.pepperLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    var promoLow = VivoColorPalette.vivoPurpleLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    var brandLow = VivoColorPalette.vivoPurpleLight10 | VivoColorPalette.white.withAlphaComponent(0.05)
    var successHigh = VivoColorPalette.vivoGreenDark | VivoColorPalette.vivoGreenLight30
    var warningHigh = VivoColorPalette.orangeDark | VivoColorPalette.orangeLight40
    var errorHigh = VivoColorPalette.pepperDark80 | VivoColorPalette.pepperLight40
    var promoHigh = VivoColorPalette.vivoPurple | VivoColorPalette.vivoPurpleLight50
}

public enum VivoColorPalette {
    public static let vivoPurple = UIColor(hex: "#660099")!
    public static let vivoPurpleDark = UIColor(hex: "#461E5F")!
    public static let vivoPurpleLight10 = UIColor(hex: "#EFE5F4")!
    public static let vivoPurpleLight20 = UIColor(hex: "#E0CCEB")!
    public static let vivoPurpleLight50 = UIColor(hex: "#B280CC")!
    public static let vivoPurpleLight80 = UIColor(hex: "#8433AD")!
    public static let vivoPurpleLight90 = UIColor(hex: "#751AA3")!

    public static let vivoGreen = UIColor(hex: "#99CC33")!
    public static let vivoGreen25 = UIColor(hex: "#D6EBAD")!
    public static let vivoGreenDark = UIColor(hex: "#225C3D")!
    public static let vivoGreenLight10 = UIColor(hex: "#EDF8E8")!
    public static let vivoGreenLight30 = UIColor(hex: "#91AE9E")!

    public static let vivoBlue = UIColor(hex: "#00ABDB")!

    public static let orange = UIColor(hex: "#FF9900")!
    public static let orange25 = UIColor(hex: "#FFD699")!
    public static let orangeDark = UIColor(hex: "#972A1D")!
    public static let orangeLight10 = UIColor(hex: "#FFEFE1")!
    public static let orangeLight40 = UIColor(hex: "#FFB84C")!

    public static let pink = UIColor(hex: "#EB3D7D")!

    public static let pepper = UIColor(hex: "#CC1F59")!
    public static let pepperDark = UIColor(hex: "#B71D63")!
    public static let pepperDark80 = UIColor(hex: "#8F2052")!
    public static let pepperLight10 = UIColor(hex: "#FCE4EF")!
    public static let pepperLight30 = UIColor(hex: "#F7B1CB")!
    public static let pepperLight40 = UIColor(hex: "#DB628B")!

    public static let grey1 = UIColor(hex: "#F6F6F6")!
    public static let grey2 = UIColor(hex: "#EEEEEE")!
    public static let grey3 = UIColor(hex: "#DDDDDD")!
    public static let grey4 = UIColor(hex: "#999999")!
    public static let grey5 = UIColor(hex: "#666666")!
    public static let grey6 = UIColor(hex: "#000000")!
    public static let white = UIColor(hex: "#FFFFFF")!

    public static let darkModeBlack = UIColor(hex: "#191919")!
    public static let darkModeGrey = UIColor(hex: "#242424")!
    public static let darkModeGrey6 = UIColor(hex: "#313235")!
}
