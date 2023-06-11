import DesignSystem
import SwiftUI

struct CommunityView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! 社群頁")
            Button("Secondary") {
                print("On Press Secondary Button")
            }.buttonStyle(SecondaryButtonStyle())
        }
    }
}

#Preview {
    CommunityView()
}
