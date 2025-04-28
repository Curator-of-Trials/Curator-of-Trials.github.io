import Foundation
import Ignite

struct Reviews: StaticPage {
    struct CustomerReview: Decodable {
        var name: String
        var text: String
    }

    @Environment(\.decode) var decode

    var title = "Reviews"

    var body: some HTML {
        Group {
            Text("REVIEWS")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            if let reviews = decode("reviews.json", as: [CustomerReview].self) {
                Grid {
                    ForEach(reviews) { review in
                        Card {
                            review.text
                        } footer: {
                            review.name
                        }
                        .margin(.top, 20)
                    }
                }
                .columns(4)
            }
        }
        .frame(width: .percent(.init(90)))
    }
}
