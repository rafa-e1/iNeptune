//
//  TopView.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct TopView: View {
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color("mainColor")
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
            
            CustomSearchBar(searchText: $searchText)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
        }
    }
}

struct CustomSearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("mainColor"))
                
                TextField("찾는 맛집 이름이 뭐예요?", text: $searchText)
                    .padding(.vertical, 5)
                    .background(Color.white)
                    .cornerRadius(10)
            }
        }
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        .foregroundColor(.secondary)
        .background(Color.white)
    }
}

#Preview {
    TopView()
}
