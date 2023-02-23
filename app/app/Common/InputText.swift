import SwiftUI

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

struct IconTextField: View {
    let systemImageName: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: systemImageName)
                .foregroundColor(.gray)
            TextField(placeholder, text: $text)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}
