//
//  BaeminOneView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/15/23.
//

import SwiftUI

struct BaeminOneView: View {
    var body: some View {
//        GeometryReader(content: { geometry in
            VStack {
                // Header
                HStack {
                    Text("알뜰・한집배달")
                        .font(.system(size: 20, weight: .bold))
                        .padding(.trailing, 8.0)
                    Text("배민1")
                        .font(.system(size: 16, weight: .medium))
                    Text("원하는 대로 골라 주문!")
                        .font(.system(size: 14, weight: .regular))
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    })
                    .padding(.leading, 25.0)
                    
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                // button Stack
                VStack {
                    // button top line
                    HStack {
                        BaeminOneButton(baeminOneButtonImage: "주문1", baeminOneButtonText: "알뜰배달")
                        BaeminOneButton(baeminOneButtonImage: "주문2", baeminOneButtonText: "돈까스・회")
                        BaeminOneButton(baeminOneButtonImage: "주문3", baeminOneButtonText: "피자")
                        BaeminOneButton(baeminOneButtonImage: "주문4", baeminOneButtonText: "중식")
                        BaeminOneButton(baeminOneButtonImage: "주문5", baeminOneButtonText: "치킨")

                    }
                    .padding(.horizontal, 10.0)
                    
                    // button bottom line
                    HStack {
                        BaeminOneButton(baeminOneButtonImage: "주문6", baeminOneButtonText: "버거")
                        BaeminOneButton(baeminOneButtonImage: "주문7", baeminOneButtonText: "분식")
                        BaeminOneButton(baeminOneButtonImage: "주문8", baeminOneButtonText: "디저트")
                        BaeminOneButton(baeminOneButtonImage: "주문9", baeminOneButtonText: "족발・보쌈")
                        BaeminOneButton(baeminOneButtonImage: "주문10", baeminOneButtonText: "전체보기")

                    }
                    .padding(.horizontal, 10.0)
                }

            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(Color.white)
    }
}

#Preview {
    BaeminOneView()
}
