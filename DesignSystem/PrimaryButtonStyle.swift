import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 36)
            .foregroundColor(configuration.isPressed ? Asset.primary.swiftUIColor : Asset.onPrimary.swiftUIColor)
            .font(Font.body)
            .padding(10)
            .background(
                configuration.isPressed ? Asset.onPrimary.swiftUIColor : Asset.primary.swiftUIColor
            )
            .cornerRadius(100)
    }
}
