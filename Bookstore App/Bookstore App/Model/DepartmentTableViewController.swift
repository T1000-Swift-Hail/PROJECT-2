//
//  DepartmentTableViewController.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 08/11/2021.
//

import UIKit

class DepartmentTableViewController: UITableViewController  {
    @IBOutlet var MenuTableView : UITableView!
    
    let Munes = ["Stories","Novels","Poetry"]
    
    let books = [["book1","book2","book3"], ["book1 in section 2","book2 in section 2",], ["book1 in section 3","book2 in section 3","book3 in section 3"]]
    let profileImages = [UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MenuTableView.delegate = self
        MenuTableView.dataSource = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
         //#warning Incomplete implementation, return the number of sections
        return Munes.count
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Munes[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileImage
        
        cell.NameProfile.text = books[indexPath.section][indexPath.row]
        cell.ImageProfile.image = profileImages[indexPath.row]
        return cell

        // Configure the cell...

     
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier: "bookDetails", sender: nil)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
