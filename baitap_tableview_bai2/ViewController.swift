//
//  ViewController.swift
//  baitap_tableview_bai2
//
//  Created by apple on 2024/09/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var mangdata:[CaiDat] = [
    CaiDat(loai: "", danhsach: ["Bao mat tai khoan"]),
    CaiDat(loai: "", danhsach: ["Che do nguoi giam ho","Che do don gian"]),
    CaiDat(loai: "", danhsach: ["Thong bao tin nhan","Tro chuyen","Chung"]),
    CaiDat(loai: "Bao mat", danhsach: ["Quyen cua ban be","Thong tin & uy quyen cua toi"]),
    CaiDat(loai: "", danhsach: ["Ve","Tro giup & phan hoi"]),
    CaiDat(loai: "", danhsach: ["Chuyen doi tai khoan"]),
    CaiDat(loai: "", danhsach: ["Dang xuat"]),
    ]

    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.dataSource = self
        mytable.delegate = self
        view.backgroundColor = .systemGray6
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return mangdata.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mangdata[section].loai
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mangdata[section].danhsach.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = mangdata[indexPath.section].danhsach[indexPath.row]
        cell.textLabel?.font = UIFont(name: "", size: CGFloat(25))
        cell.detailTextLabel?.text = ">"
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let vv = UIView()
        vv.backgroundColor = UIColor.systemGray6
        return vv
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(mangdata[indexPath.section].danhsach[indexPath.row])
    }
}

