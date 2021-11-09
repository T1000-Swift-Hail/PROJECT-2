//
//  TableViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 08/11/2021.
//

import UIKit

class TableViewController: UITableViewController {

    var userName = ["Maha","Yaser","Kkaled" , "Fahed" , "Reem"]
    let userDefaluts = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()

        var textFiled = UITextField()
        let alert = UIAlertController(title: "Add Names", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { action in

           guard let text = textFiled.text else {return}
           self.userName.append(text)
           self.userDefaluts.set(self.userName, forKey: "userName")
           self.tableView.reloadData()

        }

      let cuncal = UIAlertAction(title: "cuncel", style: .cancel, handler: nil)
       alert.addTextField { textFiledSet in
            textFiledSet.placeholder = "Write Name..."
            textFiled = textFiledSet
        }
        alert.addAction(cuncal)
        alert.addAction(action)
//
       present(alert, animated: true, completion: nil)
//
//
//
       if let userNamee = userDefaluts.object(forKey: "userName") as? [String] {
        self.userName = userNamee
//        }
//        }



    @IBAction func Editing(_ sender: Any) {
    }


    @IBAction func AddItem(_ sender: Any) {

    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
         return userName.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)

        cell.textLabel?.text = userName[indexPath.row]
        // Configure the cell...

        return cell
    }


//
//    Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */


    // Override to support editing the table view.
            override  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {

            userName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)


        }


    }



    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        if fromIndexPath.row == to.row {
            return
        } else {
            let movedItem = userName[fromIndexPath.row]
            userName.remove(at: fromIndexPath.row)
            userName.insert(movedItem, at: to.row)

        }
    }


    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


            }
