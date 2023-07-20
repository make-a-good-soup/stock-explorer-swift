import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 36)
            .foregroundColor(Color(.onPrimary))
            .font(Font.body)
            .padding(10)
            .background(
                !isEnabled ? Color(.primary).opacity(0.5) : (configuration.isPressed ? Color(.onPrimaryContainer) : Color(.primary))
            )
            .cornerRadius(100)
    }
}
