import DesignSystem
import SwiftUI

struct MyView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! 我的頁")
            Button("Primary") {
                print("On Press Primary Button")
            }.buttonStyle(PrimaryButtonStyle()).disabled(true)
        }
    }
}

#Preview {
    MyView()
}
