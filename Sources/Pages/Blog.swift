import Foundation
import Ignite

struct Blog: StaticPage {
    @Environment(\.articles) var articles
    var title = "Blog"

    var body: some HTML {
        Group {
            Text("OUR BLOG")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("Each month we write a new blog post covering tips, techniques, and other advice for dog owners.")
                .font(.lead)

            Grid {
                ForEach(articles.all) { article in
                    ArticlePreview(for: article)
                        .margin(.top, 20)
                }
            }
            .columns(2)
        }
        .frame(width: .percent(.init(90)))
    }
}
