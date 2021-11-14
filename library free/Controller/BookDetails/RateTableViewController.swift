//
//  RateTableViewController.swift
//  library free
//
//  Created by موضي الحربي on 04/04/1443 AH.
//

import UIKit

class RateTableViewController: UITableViewController {

    
 let Rating = [
    Book(name: "I Am Kind", description: "I Am Kind: The Positive Power Series I Am Kind follows a little girl who sees kindness all around her The little girl realizes that she, too, has the power to be kind, and that even small actions can have a big impact. In this new installment of the Positive Power early reader series, children will learn the affirmation I am kind through an encouraging story of community and everyday kindness", image : UIImage(named:"Image")!, rating: 5),
    
    Book(name: "My Life", description: " My Life is a 2004 autobiography written by former U.S. President Bill Clinton. It was released on June 22, 2004, around three years after Clinton left office. The book was published by the Knopf Publishing Group and became a bestseller; the book sold in excess of 2.3 million copies. ", image: UIImage(named: "imag1")!, rating: 4),
  
    Book(name: "Wealth of Nations", description: "First published in 1776, Adam Smith’s The Wealth of Nations remains a masterpiece of economic analysis.Many of Smith’s arguments for raising the standards of living are still relevant today.This new digital edition of The Wealth of Nations includes an image gallery. ", image: UIImage(named: "imag2")!, rating: 3),
    
    Book(name: "Gut Health Hacks", description: " In Gut Health Hacks, you’ll find 200 practical tips and tricks to support good bacteria and achieve a balanced gut mircrobiome. From ways to hack your meals to simple lifestyle changes, you’ll find tips and tricks ", image:UIImage(named:  "imaghealth")!, rating: 4),
    
    Book(name: "The Mysteries of the Universe", description: " Journey from Earth to the outer reaches of the universe with this stunning book about space! You'll encounter bizarre planets, distant stars, and intricate galaxies"
         , image: UIImage(named: "imaguniv")!, rating: 4),
    
 
    Book(name: "Thinking, Fast and Slow", description: "In the international bestseller, Thinking, Fast and Slow, Daniel Kahneman, the renowned psychologist and winner of the Nobel Prize in Economics, takes us on a groundbreaking tour of the mind and explains the two systems that drive the way we think. System 1 is fast, intuitive, and emotional; System 2 is slower, more deliberative, and more logical. The impact of overconfidence on corporate strategies, the difficulties of predicting what will make us happy in the future, the profound effect of cognitive biases on everything from playing the stock market to planning our next vacation--each of these can be understood only by knowing how the two systems shape our judgments and decisions.", image:UIImage(named: "imagthinking")!, rating: 4)
 
 
 ]
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Rating.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       guard let cell =
                tableView.dequeueReusableCell(withIdentifier: "ListratingTableViewCell", for: indexPath)as?
                
                ListratingTableViewCell else { return
                    
                    UITableViewCell() }
        // Configure the cell...
        
        cell.Lablecell.text = Rating[indexPath.row].name
        cell.Imagcell.image = Rating[indexPath.row].image
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "bookdetailes", sender: nil)
        
    }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
   
        if segue.identifier == "bookdetailes" {
            
            let destination = segue.destination as! BookDetailViewController
            
            destination.book = Rating[tableView.indexPathForSelectedRow?.row ?? 0]
            
        }
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
