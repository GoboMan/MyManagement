//
//  Category.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct SettingCategory: View {
    let alertTitle: String = "Confirmation"
    @State private var isEditing = false
    @State private var showConfirmationDialog: Bool = false
    @State private var categoryToDelete: String?
    @State private var categories: [String] = [
        "work",
        "study",
        "workout",
        "free",
        "read",
        "friendship"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                }
                .onDelete(perform: confirmDelete(at:))
                .onMove(perform: move)
            }
            .navigationBarTitle("Category")
            .navigationBarItems(
                trailing: EditButton()
            )
        }
        .confirmationDialog(
            alertTitle,
            isPresented: $showConfirmationDialog,
            titleVisibility: .visible
        ) {
            Button(role: .destructive) {
                deleteConfirmedCategory()
            } label: {
                Text("Delete")
            }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Are you sure you want to delete '\(categoryToDelete ?? "")'? If you confirm this, you cannot see any result of '\(categoryToDelete ?? "")'")
        }
    }
    func addItem() {
        categories.append("new category")
    }
    
    func confirmDelete(at offsets: IndexSet) {
        if let index = offsets.first {
            categoryToDelete = categories[index]
            showConfirmationDialog = true
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        categories.move(fromOffsets: source, toOffset: destination)
    }
    func deleteConfirmedCategory() {
        if let category = categoryToDelete, let index = categories.firstIndex(of: category) {
            categories.remove(at: index)
            categoryToDelete = nil  // 確認後にリセット
        }
    }
}

#Preview {
    SettingCategory()
}
