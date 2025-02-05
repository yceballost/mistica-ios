//
//  UICatalogFilterViewController.swift
//
//  Made with ❤️ by Novum
//
//  Copyright © Telefonica. All rights reserved.
//

import Mistica
import UIKit

private extension Segment {
    static let seeAll = Segment(id: UUID().uuidString, title: "See All")
    static let movies = Segment(id: UUID().uuidString, title: "Movies")
    static let eSports = Segment(id: UUID().uuidString, title: "Movistar eSports")
    static let devices = Segment(id: UUID().uuidString, title: "Devices")
    static let offers = Segment(id: UUID().uuidString, title: "Offers")
    static let forYou = Segment(id: UUID().uuidString, title: "For You")
    static let tariffs = Segment(id: UUID().uuidString, title: "Tariffs")
    static let events = Segment(id: UUID().uuidString, title: "TV")
    static let sports = Segment(id: UUID().uuidString, title: "Sports")
}

private enum SegmentCollections {
    static let threeItems: [Segment] = [.movies, .tariffs, .devices]
    static let fiveItems: [Segment] = [.seeAll, .movies, .eSports, .devices, .offers]
    static let nineItems: [Segment] = [.seeAll, .forYou, .movies, .tariffs, .eSports, .events, .devices, .sports, .offers]
    static let fiftyItems = (0 ..< 50).map { Segment(id: "\($0)", title: "segment \($0)") }
}

private struct SegmentsDataset {
    let name: String
    let segments: [Segment]

    static let threeItems = SegmentsDataset(name: "Three Items", segments: SegmentCollections.threeItems)
    static let fiveItems = SegmentsDataset(name: "Five Items", segments: SegmentCollections.fiveItems)
    static let nineItems = SegmentsDataset(name: "Nine Items", segments: SegmentCollections.nineItems)
    static let fiftyItems = SegmentsDataset(name: "Fifty Random Items", segments: SegmentCollections.fiftyItems)
}

private enum ConsoleTexts {
    static let emptyCase = "Select a segment"
    static let currentSelection = "Current selection:"
}

private class DatasetCell: UITableViewCell {
    private let title = UILabel()
    private var dataset: SegmentsDataset?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(title, constraints: [
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            contentView.bottomAnchor.constraint(equalTo: title.bottomAnchor, constant: 16),
            title.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        title.numberOfLines = 0
        title.font = .textPreset3(weight: .regular)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUp(for dataset: SegmentsDataset) {
        self.dataset = dataset
        title.text = dataset.name
    }
}

class UICatalogFilterViewController: UIViewController {
    private let filter = Filter(segments: [])
    private let console = UILabel()
    private let optionsTable: UITableView
    private let datasets: [SegmentsDataset] = [.threeItems, .fiveItems, .nineItems, .fiftyItems]

    init() {
        if #available(iOS 13.0, *) {
            optionsTable = UITableView(frame: .zero, style: .insetGrouped)
        } else {
            optionsTable = UITableView(frame: .zero, style: .grouped)
        }

        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        edgesForExtendedLayout = []
        view.backgroundColor = .background
        title = "Segment Selector"

        setUpFilter()
        setUpConsole()
        setUpOptionsTable()

        setUpInitialState()
    }
}

private extension UICatalogFilterViewController {
    func setUpFilter() {
        view.addSubview(filter, constraints: [
            filter.topAnchor.constraint(equalTo: view.topAnchor),
            filter.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            filter.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        filter.delegate = self
    }

    func setUpConsole() {
        console.textColor = .textSecondary
        view.addSubview(console, constraints: [
            console.topAnchor.constraint(equalTo: filter.bottomAnchor, constant: 32),
            console.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            console.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16)
        ])
    }

    func setUpOptionsTable() {
        view.addSubview(optionsTable, constraints: [
            optionsTable.topAnchor.constraint(equalTo: console.bottomAnchor),
            optionsTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            optionsTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            optionsTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        optionsTable.dataSource = self
        optionsTable.delegate = self
        optionsTable.rowHeight = UITableView.automaticDimension
        optionsTable.estimatedRowHeight = 50
        optionsTable.backgroundColor = .background
        DatasetCell.register(on: optionsTable)
    }

    func setUpInitialState() {
        optionsTable.selectRow(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .top)
        filter.segments = datasets.first!.segments
        filter.select(filter.segments.first!)
        console.text = ConsoleTexts.emptyCase
    }

    func resetFilter() {
        filter.select(filter.segments.first!)
    }
}

extension UICatalogFilterViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        datasets.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DatasetCell.dequeueReusableCell(for: indexPath, from: tableView)
        cell.setUp(for: datasets[indexPath.row])
        return cell
    }

    func tableView(_: UITableView, titleForHeaderInSection _: Int) -> String? {
        "Test Datasets"
    }

    func tableView(_: UITableView, titleForFooterInSection _: Int) -> String? {
        "Select one of the datasets above to see how it is rendered in the component"
    }
}

extension UICatalogFilterViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        filter.segments = datasets[indexPath.row].segments
        resetFilter()
    }
}

extension UICatalogFilterViewController: FilterDelegate {
    func filter(_: Filter, didProgramaticallySelectSegment segment: Segment) {
        console.text = ConsoleTexts.currentSelection + " " + segment.title
    }

    func filter(_: Filter, didManuallySelectSegment segment: Segment) {
        console.text = ConsoleTexts.currentSelection + " " + segment.title
    }
}
