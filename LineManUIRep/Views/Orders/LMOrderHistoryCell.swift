//
//  LMOrderHistoryCell.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 4/1/2568 BE.
//

import SwiftUI

struct LMOrderHistoryCell: View {
    let id = UUID()
    var body: some View {
            HStack(alignment: .top) {
                // Left - Icon
                ZStack {
                    Circle()
                        .fill(.gray.opacity(0.1))
                        .frame(width: 40)
                    
                    Image(systemName: "birthday.cake")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(LMColor.gradientGreen)
                }
                
                // Middle - Order Details
                VStack(alignment: .leading, spacing: 6) {
                    Text("12 Nov 24, 11:09")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "location.circle")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.red)
                        Text("The Pizza Company - Lotus Amatanakorn")
                            .font(.system(size: 12))
                            .foregroundColor(LMColor.fontSoftBlack)
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Image(systemName: "location.circle")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.green)
                        Text("Customer's address")
                            .font(.system(size: 12))
                            .foregroundColor(LMColor.fontSoftBlack)
                    }
                    
                    Text("Order completed")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
                
                Spacer()
                
                // Right - Price and Reorder
                VStack(alignment: .trailing, spacing: 8) {
                    Text("฿\(String(format: "%.2f", 123.45))")
                        .bold()
                        .foregroundColor(LMColor.fontSoftBlack)
                    
                    Spacer(minLength: 4)
                    
                    Button(action: {}) {
                        HStack(alignment: .center) {
                            Text("Reorder")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.green)
                            
                                .padding(.vertical, 4)
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.green)
                                .font(.system(size: 12))
                        }
                        .padding(.vertical, 2)
                        .padding(.horizontal, 8)
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(16)
                    }
                    .offset(y: -12)
                }
            }
            .padding(.top, 8)
        }
}

#Preview {
    let completedOrders: [LMOrderHistoryCell] = [
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
    ]
    
    List {
        ForEach(completedOrders, id: \.self.id) { order in
            order
        }
    }
    .listStyle(.plain)
}
