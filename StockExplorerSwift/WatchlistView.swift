import DesignSystem
import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! 追蹤頁")
            Button("Primary") {
                print("On Press Primary Button")
            }.buttonStyle(PrimaryButtonStyle())
        }
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
