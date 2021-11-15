//
//  QuestionsPageViewController.swift
//  Abjd Test
//
//  Created by noyer altamimi on 04/04/1443 AH.
//

import UIKit

class QuestionsPageViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    
    
    //to choose the answer.
    @IBOutlet weak var optionsPickerVeiw: UIPickerView!
    //to click confirm after choose the answer.
    @IBOutlet weak var confirm: UIButton!
    //to change the question after every click.
    @IBOutlet weak var questionTitle: UILabel!
    
    //to count the score.
    var totalPoints = 0
    var currentIndex = -1
    var gameModels = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        setupQuestions()
        
        optionsPickerVeiw.delegate = self
        optionsPickerVeiw.dataSource = self
        loadQuestion()
    }
    
    @IBAction func confirmAnswer(_ sender: Any) {
        
        if (gameModels[currentIndex].answers[optionsPickerVeiw.selectedRow(inComponent: 0)].correct){
            
            totalPoints += 1
            
        }
        
        loadQuestion()
        
    }
    
    
    @IBAction func showScoreScreen(_ sender: Any) {
        performSegue(withIdentifier: "scoreScreen", sender: nil)
    }
    
    
    
    func loadQuestion(){
        currentIndex += 1
        if currentIndex > (gameModels.count-1) {
            currentIndex -= 1
            return
        }
        questionTitle.text = gameModels[currentIndex].text
        optionsPickerVeiw.reloadAllComponents()
    }
    
    
    //the questions with all answers.
    private func setupQuestions() {
        gameModels.append(Question(text: " أنا من ــــ " , answers: [
            Answer(text: " أمريكي " , correct: false),
            Answer(text: "أمريكا" , correct: true),
            Answer(text: " الأمريكا " , correct: false)
       
        ]))
        
        gameModels.append(Question(text: " أناــــ ", answers: [
            Answer(text: " سعودي ", correct: true),
            Answer(text: " السعودية " , correct: false),
            Answer(text: " الكويت " , correct: false)
            
        ]))
   
  
        gameModels.append(Question(text: " هو ــــ أحمد ", answers: [
            Answer(text:  " اسمه " , correct: true),
            Answer(text: " اسم " , correct: false),
            Answer(text: " عمره " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " فاطمه ــــ بنت ", answers: [
            Answer(text: " عنده " , correct: false),
            Answer(text: "عندها", correct: true),
            Answer(text: " عندهما " , correct: false)
            
        ]))
   
    
        gameModels.append(Question(text: " ــــ أنت بحريني ", answers: [
            Answer(text: " كم " , correct: false),
            Answer(text: " من " , correct: false),
            Answer(text: " هل ", correct: true)
        ]))
    
    
        gameModels.append(Question(text: " أحمد ــــ ولد وبنت ", answers: [
            Answer(text: " عنده ", correct: true),
            Answer(text: " عندها " , correct: false),
            Answer(text: " عندهما " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " بيت أحمد ــــ ", answers: [
            Answer(text: " كبير " , correct: true),
            Answer(text: " كبيرة " , correct: false),
            Answer(text: " كبار " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " ــــ عندي سيارة ", answers: [
            Answer(text: " لسن " , correct: false),
            Answer(text: " ليس ", correct: true),
            Answer(text: " ليسوا " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " سوزان تسكن ــــ القاهرة ", answers: [
            Answer(text: " في ", correct: true),
            Answer(text: " من " , correct: false),
            Answer(text: " إلى " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " ــــ تذهب إلى الجامعة كل يوم ", answers: [
            Answer(text: " أحمد " , correct: false),
            Answer(text: " محمد " , correct: false),
            Answer(text: " فاطمة ", correct: true)
     
        ]))
        
        gameModels.append(Question(text: " ــــ تذهب إلى الجامعة؟ ", answers: [
            Answer(text: " ماذا " , correct: false),
            Answer(text: " كم " , correct: false),
            Answer(text: " متى ", correct: true)
        
        ]))
    
        gameModels.append(Question(text: " أحمد ذهب إلى الجامعة ــــ ", answers: [
            Answer(text: " أمس ", correct: true),
            Answer(text: " بالغد " , correct: false),
            Answer(text: " الأسبوع القادم " , correct: false )
            
        ]))
        
        gameModels.append(Question(text: " فاطمة ستزور سوزان ــــ ", answers: [
            Answer(text: " أمس " , correct: false),
            Answer(text: " غداً ", correct: true),
            Answer(text: " الأسبوع الماضي " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " محمد ــــ يذهب إلى العمل غداً  ", answers: [
            Answer(text: " لن ", correct: true),
            Answer(text: " لم " , correct: false),
            Answer(text: " ما " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " هم ــــ يسافرون الأسبوع القادم ", answers: [
            Answer(text: " ليس " , correct: false),
            Answer(text: " سوف ", correct: true),
            Answer(text: " ما " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " نحن سافرنا الأسبوع ــــ ", answers: [
            Answer(text: " القادم " , correct: false),
            Answer(text: " القادمون " , correct: false),
            Answer(text: " الماضي ", correct: true)
      
        ]))
        
        gameModels.append(Question(text: " فاطمة ــــ صديقتها أمس ", answers: [
            Answer(text: " زرت " , correct: false),
            Answer(text: " زارت ", correct: true),
            Answer(text: " تزور " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " أحمد ــــ يزر صديقة أمس ", answers: [
            Answer(text: " لم ", correct: true),
            Answer(text: " لن " , correct: false),
            Answer(text: " ليس " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " آنا أعود ــــ البيت الساعة الخامسة  ", answers: [
            Answer(text: " في  ", correct: false),
            Answer(text: " متى " , correct: false),
            Answer(text: " إلى " , correct: true )
            
        ]))
    
        gameModels.append(Question(text: " زار صديقة ــــ ذهب إلى السوق ", answers: [
            Answer(text: " قبل أن " , correct: false),
            Answer(text: " حيث أن " , correct: false),
            Answer(text: " بعد أن  ", correct: true)
     
        ]))
    
        gameModels.append(Question(text: " سأنام بعد أن ــــ الفلم ", answers: [
            Answer(text: " شاهدت " , correct: false),
            Answer(text: " سأشاهد " , correct: false),
            Answer(text: " أشاهد ", correct: true)
      
        ]))
    
        gameModels.append(Question(text: " أريد ــــ أشتري سيارة جديدة ", answers: [
            Answer(text: " أن ", correct: true),
            Answer(text: " عن " , correct: false),
            Answer(text: " سوف " , correct: false)
            
        ]))

        gameModels.append(Question(text: " هم يحبون ــــ يدرسون اللغة العربية ", answers: [
            Answer(text: " لن " , correct: false),
            Answer(text: " كيف " , correct: false),
            Answer(text: " أن " , correct: true)
      
        ]))
        
        gameModels.append(Question(text: " هذه صديقتي ــــ تدرس في الجامعة ", answers: [
            Answer(text: " التي " , correct: true),
            Answer(text: " الذي " , correct: false),
            Answer(text: " الذين " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: "  أين الكتب التي ــــ أمس", answers: [
            Answer(text: " اشترته " , correct: false),
            Answer(text:  " اشتريتها ", correct: true),
            Answer(text: " شراء " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " أنا أدرس العربية ــــ صديقي فيدرس اليابانيه ", answers: [
            Answer(text: " كما " , correct: false),
            Answer(text: " أما " , correct: true),
            Answer(text: " أيضاً " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " لا أحب ــــ إلى السوق ", answers: [
            Answer(text: " الذهاب ", correct: true),
            Answer(text: " ذهبت " , correct: false),
            Answer(text: " أذهب " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " عدت إلى البيت بعد ــــ صديقي ", answers: [
            Answer(text: " سأقابل " , correct: false),
            Answer(text: " مقابلة ", correct: true),
            Answer(text: " قابلت " , correct: false)
            
        ]))
        
        gameModels.append(Question(text: " نمت مبكراً ــــ آصحو مبكراً ", answers: [
            Answer(text: " كيف " , correct: false),
            Answer(text: " ثم " , correct: false),
            Answer(text: " لكي ", correct: true)
        ]))
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gameModels[currentIndex].answers[row].text
   
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "scoreScreen" {
            
            let scoreScreen = segue.destination as! ResutlScreenViewController
            
            scoreScreen.totalPoints = totalPoints
            
        }
    }

  
}


