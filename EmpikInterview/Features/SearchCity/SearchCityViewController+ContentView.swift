//
//  SearchCityViewController+ContentView.swift
//  EmpikInterview
//
//  Created by Jacek Grygiel on 18/09/2024.
//

import Foundation
import UIKit

extension SearchCityViewController.ContentView {
    private enum Const {
        // define any view-related constants here
    }
}

extension SearchCityViewController {
    final class ContentView: UIView {
        private let titleLabel = UILabel()

        let tableView = UITableView()

        private lazy var stackView = UIStackView(arrangedSubviews: [titleLabel, tableView])

        init() {
            super.init(frame: .zero)
            addSubviews()
            setupSubviews()
            setupLayout()
        }

        @available(*, unavailable)
        required init?(coder: NSCoder) { nil }
    }
}

extension SearchCityViewController.ContentView {
    private func addSubviews() {
        addSubview(stackView)
    }

    private func setupSubviews() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
