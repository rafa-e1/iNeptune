//
//  SwiftUIView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/15/23.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("MainColor"))
            TextField("마라샹궈? 쭈꾸미? 낙곱새?", text: $searchText)
                .font(.system(size: 20))
                .padding(5)
        }
        .padding(EdgeInsets(top: 15, leading: 8, bottom: 15, trailing: 8))

        .frame(height: 40)
        .background(Color.white)
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 12, trailing: 10))

    }
}

#Preview {
    SearchBar()
}
