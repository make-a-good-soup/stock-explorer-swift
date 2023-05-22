import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 36)
            .foregroundColor(!isEnabled ? Asset.onPrimary.swiftUIColor : (configuration.isPressed ? Asset.primary.swiftUIColor : Asset.onPrimary.swiftUIColor))
            .font(Font.body)
            .padding(10)
            .background(
                !isEnabled ? Asset.primary.swiftUIColor.opacity(0.5) : (configuration.isPressed ? Asset.onPrimary.swiftUIColor : Asset.primary.swiftUIColor)
            )
            .cornerRadius(100)
    }
}
