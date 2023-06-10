import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 36)
            .foregroundColor(configuration.isPressed ? Asset.onPrimary.swiftUIColor : Asset.primary.swiftUIColor.opacity(isEnabled ? 1 : 0.5))
            .font(Font.body)
            .padding(10)
            .background(
                configuration.isPressed ? Asset.onPrimaryContainer.swiftUIColor : Asset.onPrimary.swiftUIColor.opacity(isEnabled ? 1 : 0.5)
            )
            .cornerRadius(100)
    }
}
