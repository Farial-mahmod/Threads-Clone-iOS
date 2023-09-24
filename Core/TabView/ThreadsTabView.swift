import SwiftUI

struct ThreadsTabView : View {

@State private bar selectedTab = 0

var body: some View {

TabView(selection: $selectedTab){

// 0
FeedView().tabItem {
	Image(systemName: selectedTab == 0 ? “house.fill” : “house”)
	.environment(\.symbolVariants, selectedTab == 0 ? .fill : none)
}.onAppear{
selectedTab = 0
}.tag(0)

// 1
ExploreView().tabItem {
Image(systemName: “magnifyingglass”)
}.onAppear{
selectedTab = 1
}.tag(1)

//2
CreateThreadView().tabItem {
mage(systemName: “plus”)
}.onAppear{
selectedTab = 2
}.tag(2)

// 3
ActivityView().tabItem{
Image(systemName: selectedTab == 3 ? “heart.fill” : “heart”)
.environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
}.onAppear{
selectedTab = 3
}.tag(3)

// 4
ActivityView().tabItem {
Image(systemName: selectedTab == 4 ? “person.fill” : “person”)
.enviroment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
}.onAppear {
selectedTab = 4
}.tag(4)

}.tint(.black)
}
}
