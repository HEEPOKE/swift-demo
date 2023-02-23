import SwiftUI

struct Register: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    var body: some View {
        let isDark = colorScheme == .dark
        
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Register") {
             
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5)
        }
        .padding()
        .background(isDark ? Color.black : Color.white)
        .foregroundColor(isDark ? Color.white : Color.black)
    }
}




struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
