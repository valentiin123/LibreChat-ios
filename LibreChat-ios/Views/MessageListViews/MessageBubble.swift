//
//  MessageBubble.swift
//  LibreChat-ios
//
//  Created by Jordan Chap on 18.03.2026.
//

import SwiftUI
import Textual

struct MessageBubble: View {
    let message: UIMessage

    private var isUser: Bool { message.role == .user }

    var body: some View {
        if isUser {
            Text(message.text)
                .padding()
                .background(
                    AnyShapeStyle(.tint),
                    in: .rect(cornerRadius: 16)
                )
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
        } else {
            StructuredText(markdown: message.text)
                .padding(.horizontal)
        }
    }
}

#Preview {
    List {
        MessageBubble(message:
            UIMessage(from: SDMessage(id: UUID(), role: "user", text: "je suis un test je suis un test je suis un test je suis un test", createdAt: .now, discussion: nil))
        )
        .listRowSeparator(.hidden)

        MessageBubble(message:
            UIMessage(from: SDMessage(id: UUID(), role: "assistant", text: "# Test", createdAt: .now, discussion: nil))
        )
        .listRowSeparator(.hidden)
    }
    .listStyle(.plain)
}
