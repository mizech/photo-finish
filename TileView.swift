import SwiftUI

struct TileView: View {
	var titleSize: Double
	var offset: CGSize
	var image: Image?
	
    var body: some View {
		if let image {
			image.resizable()
				.frame(
					width: titleSize,
					height: titleSize
				)
				.offset(offset)
		} else {
			Color.clear
		}
    }
}

#Preview {
	TileView(titleSize: 60, offset: .zero, image: Image(systemName: "star"))
}
