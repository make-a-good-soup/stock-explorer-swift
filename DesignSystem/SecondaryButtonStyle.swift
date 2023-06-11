import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 36)
            .foregroundColor(configuration.isPressed ? Color(.onPrimary) : Color(.primary))
            .font(Font.body)
            .padding(10)
            .background(
                configuration.isPressed ? Color(.onPrimaryContainer) : Color(.onPrimary).opacity(isEnabled ? 1 : 0.5)
            )
            .cornerRadius(100)
    }
}
