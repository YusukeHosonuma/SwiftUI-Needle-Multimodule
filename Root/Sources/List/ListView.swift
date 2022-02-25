//
//  ListView.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import SwiftUI
import Core
import Domain

public struct ListView<DetailBuilder: DetailBuildable>: View {
    private let detailBuilder: DetailBuilder
    
    @ObservedObject var viewModel: ListViewModel
    
    public init(caveAPI: CaveAPI, detailBuilder: DetailBuilder) {
        self.viewModel = ListViewModel(caveAPI: caveAPI)
        self.detailBuilder = detailBuilder
    }
    
    public var body: some View {
        NavigationView {
            List(viewModel.items, id: \.self) { item in
                NavigationLink(destination: detailBuilder.makeView(item)) {
                    Text(item.title)
                }
            }
            .navigationBarTitle("CAVEシュー")
        }
        .task {
            await viewModel.onAppear()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    private class EmptyDetailBuilder: DetailBuildable {
        func makeView(_ input: Item) -> some View {
            EmptyView()
        }
    }
    
    private class CaveAPIMock: CaveAPI {
        func fetch() async -> [Item] {
            [
                Item(title: "怒首領蜂", message: "どどんぱち！"),
                Item(title: "怒首領蜂大復活", message: "いよいよもって死ぬがよい。そしてさようなら。"),
            ]
        }
    }
    
    static var previews: some View {
        ListView(caveAPI: CaveAPIMock(), detailBuilder: EmptyDetailBuilder())
    }
}
