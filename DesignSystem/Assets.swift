// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
    import AppKit
#elseif os(iOS)
    import UIKit
#elseif os(tvOS) || os(watchOS)
    import UIKit
#endif
#if canImport(SwiftUI)
    import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let black10 = ColorAsset(name: "Black10")
    internal static let black100 = ColorAsset(name: "Black100")
    internal static let black15 = ColorAsset(name: "Black15")
    internal static let black20 = ColorAsset(name: "Black20")
    internal static let black25 = ColorAsset(name: "Black25")
    internal static let black30 = ColorAsset(name: "Black30")
    internal static let black35 = ColorAsset(name: "Black35")
    internal static let black40 = ColorAsset(name: "Black40")
    internal static let black50 = ColorAsset(name: "Black50")
    internal static let black60 = ColorAsset(name: "Black60")
    internal static let black70 = ColorAsset(name: "Black70")
    internal static let black80 = ColorAsset(name: "Black80")
    internal static let black90 = ColorAsset(name: "Black90")
    internal static let blue10 = ColorAsset(name: "Blue10")
    internal static let blue100 = ColorAsset(name: "Blue100")
    internal static let blue20 = ColorAsset(name: "Blue20")
    internal static let blue30 = ColorAsset(name: "Blue30")
    internal static let blue40 = ColorAsset(name: "Blue40")
    internal static let blue50 = ColorAsset(name: "Blue50")
    internal static let blue60 = ColorAsset(name: "Blue60")
    internal static let blue70 = ColorAsset(name: "Blue70")
    internal static let blue80 = ColorAsset(name: "Blue80")
    internal static let blue90 = ColorAsset(name: "Blue90")
    internal static let green10 = ColorAsset(name: "Green10")
    internal static let green100 = ColorAsset(name: "Green100")
    internal static let green20 = ColorAsset(name: "Green20")
    internal static let green30 = ColorAsset(name: "Green30")
    internal static let green40 = ColorAsset(name: "Green40")
    internal static let green50 = ColorAsset(name: "Green50")
    internal static let green60 = ColorAsset(name: "Green60")
    internal static let green70 = ColorAsset(name: "Green70")
    internal static let green80 = ColorAsset(name: "Green80")
    internal static let green90 = ColorAsset(name: "Green90")
    internal static let red10 = ColorAsset(name: "Red10")
    internal static let red100 = ColorAsset(name: "Red100")
    internal static let red20 = ColorAsset(name: "Red20")
    internal static let red30 = ColorAsset(name: "Red30")
    internal static let red40 = ColorAsset(name: "Red40")
    internal static let red50 = ColorAsset(name: "Red50")
    internal static let red60 = ColorAsset(name: "Red60")
    internal static let red70 = ColorAsset(name: "Red70")
    internal static let red80 = ColorAsset(name: "Red80")
    internal static let red90 = ColorAsset(name: "Red90")
    internal static let yellow10 = ColorAsset(name: "Yellow10")
    internal static let yellow100 = ColorAsset(name: "Yellow100")
    internal static let yellow20 = ColorAsset(name: "Yellow20")
    internal static let yellow30 = ColorAsset(name: "Yellow30")
    internal static let yellow40 = ColorAsset(name: "Yellow40")
    internal static let yellow50 = ColorAsset(name: "Yellow50")
    internal static let yellow60 = ColorAsset(name: "Yellow60")
    internal static let yellow70 = ColorAsset(name: "Yellow70")
    internal static let yellow80 = ColorAsset(name: "Yellow80")
    internal static let yellow90 = ColorAsset(name: "Yellow90")
    internal static let onPrimary = ColorAsset(name: "OnPrimary")
    internal static let onPrimaryContainer = ColorAsset(name: "OnPrimaryContainer")
    internal static let primary = ColorAsset(name: "Primary")
    internal static let primaryContainer = ColorAsset(name: "PrimaryContainer")
    internal static let onSecondary = ColorAsset(name: "OnSecondary")
    internal static let onSecondaryContainer = ColorAsset(name: "OnSecondaryContainer")
    internal static let secondary = ColorAsset(name: "Secondary")
    internal static let secondaryContainer = ColorAsset(name: "SecondaryContainer")
}

// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
    internal fileprivate(set) var name: String

    #if os(macOS)
        internal typealias Color = NSColor
    #elseif os(iOS) || os(tvOS) || os(watchOS)
        internal typealias Color = UIColor
    #endif

    @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
    internal private(set) lazy var color: Color = {
        guard let color = Color(asset: self) else {
            fatalError("Unable to load color asset named \(name).")
        }
        return color
    }()

    #if os(iOS) || os(tvOS)
        @available(iOS 11.0, tvOS 11.0, *)
        internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
            let bundle = BundleToken.bundle
            guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
                fatalError("Unable to load color asset named \(name).")
            }
            return color
        }
    #endif

    #if canImport(SwiftUI)
        @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
        internal private(set) lazy var swiftUIColor: SwiftUI.Color = .init(asset: self)
    #endif

    fileprivate init(name: String) {
        self.name = name
    }
}

internal extension ColorAsset.Color {
    @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
    convenience init?(asset: ColorAsset) {
        let bundle = BundleToken.bundle
        #if os(iOS) || os(tvOS)
            self.init(named: asset.name, in: bundle, compatibleWith: nil)
        #elseif os(macOS)
            self.init(named: NSColor.Name(asset.name), bundle: bundle)
        #elseif os(watchOS)
            self.init(named: asset.name)
        #endif
    }
}

#if canImport(SwiftUI)
    @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
    internal extension SwiftUI.Color {
        init(asset: ColorAsset) {
            let bundle = BundleToken.bundle
            self.init(asset.name, bundle: bundle)
        }
    }
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
            return Bundle.module
        #else
            return Bundle(for: BundleToken.self)
        #endif
    }()
}

// swiftlint:enable convenience_type
