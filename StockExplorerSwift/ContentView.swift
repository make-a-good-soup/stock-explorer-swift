import DesignSystem
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                WatchlistView()
            }.tabItem {
                Label("追蹤", systemImage: "star")
            }
            VStack {
                CommunityView()
            }.tabItem {
                Label("社群", systemImage: "star")
            }
            VStack {
                MyView()
            }.tabItem {
                Label("我的", systemImage: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
