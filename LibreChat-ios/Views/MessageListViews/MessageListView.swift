//
//  MessageListView.swift
//  LibreChat-ios
//
//  Created by Jordan Chap on 18.03.2026.
//

import SwiftUI
import Textual

struct MessageListView: View {
    let messages: [UIMessage]
    let streamingText: String

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                if messages.isEmpty && streamingText.isEmpty {
                    EmptyDiscussionView()
                } else {
                    ForEach(messages) { message in
                        MessageBubble(message: message)
                    }

                    if !streamingText.isEmpty {
                        StructuredText(markdown: streamingText)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
        .defaultScrollAnchor(.bottom)
        .animation(.default, value: streamingText)
    }
}
