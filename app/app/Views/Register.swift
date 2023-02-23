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
            Text("Register")
                  .bold()
                  .padding([.vertical])
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .foregroundColor(isDark ? Color.purple : Color.blue)
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Submit") {
                
            }
            .font(.headline)
            .padding()
            .foregroundColor(isDark ? .white : .white)
            .background(isDark ? Color.purple : Color.blue)
            .cornerRadius(5)
            .shadow(radius: 5)
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

