//
//  Question1ViewController.swift
//  Abjd Test
//
//  Created by noyer altamimi on 03/04/1443 AH.
//

import UIKit

class QuestionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var gameModels = [Question]()
    
    var currentQuestion: Question?
    
    
    
    @IBOutlet weak var questionsTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionsTableView.delegate = self
        questionsTableView.dataSource = self
        setupQuestions()
        //configureUI(question: gameModels.first!)
        }
   

    private func configureUI(question: Question ) {
        //label.text = question.text
        currentQuestion = question
        questionsTableView.reloadData()
    }
    
    private func checkAnswer(answer: Answer, question: Question) -> Bool {
        return question.answers.contains(where: { $0.text == answer.text }) && answer.correct
        

    }

    
    private func setupQuestions() {
        gameModels.append(Question(text: " أنا من ـــ " , answers: [
            Answer(text: " أمريكي " , correct: false),
            Answer(text: "أمريكا" , correct: true),
            Answer(text: " الأمريكا " , correct: false)
        ]))
        
        
        
        gameModels.append(Question(text: " أناـــ ", answers: [
            Answer(text: " سعودي ", correct: true),
            Answer(text: " السعودية " , correct: false),
            Answer(text: " الكويت " , correct: false)
            
        ]))
   
  
        gameModels.append(Question(text: " هو ـــ أحمد ", answers: [
            Answer(text:  " اسمه " , correct: true),
            Answer(text: " اسم " , correct: false),
            Answer(text: " عمره " , correct: false)
            
        ]))
    
        gameModels.append(Question(text: " فاطمه ـــ بنت ", answers: [
            Answer(text: " عنده " , correct: false),
            Answer(text: "عندها", correct: true),
            Answer(text: " عندهما " , correct: false)
            
        ]))
   
    
        gameModels.append(Question(text: " ــ أنت بحريني ", answers: [
            Answer(text: " كم " , correct: false),
            Answer(text: " من " , correct: false),
            Answer(text: " هل ", correct: true)
        ]))
    
    
        gameModels.append(Question(text: " أحمد ـــ ولد وبنت ", answers: [
            Answer(text: " عنده ", correct: true),
            Answer(text: " عندها " , correct: false),
            Answer(text: " عندهما " , correct: false)
            
        ]))
    
    
    
    
        gameModels.append(Question(text: " بيت أحمد ـــ ", answers: [
            Answer(text: " كبير " , correct: true),
            Answer(text: " كبيرة " , correct: false),
            Answer(text: " كبار " , correct: false)
            
        ]))
    
    
    
    
        gameModels.append(Question(text: " ــ عندي سيارة ", answers: [
            Answer(text: " لسن " , correct: false),
            Answer(text: " ليس ", correct: true),
            Answer(text: " ليسوا " , correct: false)
            
        ]))
    
    
    
    
        gameModels.append(Question(text: " سوزان تسكن ـــ القاهرة ", answers: [
            Answer(text: " في ", correct: true),
            Answer(text: " من " , correct: false),
            Answer(text: " إلى " , correct: false)
            
        ]))
    
    
    
        
        gameModels.append(Question(text: " ـــ تذهب إلى الجامعة كل يوم ", answers: [
            Answer(text: " أحمد " , correct: false),
            Answer(text: " محمد " , correct: false),
            Answer(text: " فاطمة ", correct: true)
        ]))
        
        
        
        
        gameModels.append(Question(text: " ـــ تذهب إلى الجامعة؟ ", answers: [
            Answer(text: " ماذا " , correct: false),
            Answer(text: " كم " , correct: false),
            Answer(text: " متى ", correct: true)
        ]))
        
        
        
        
        
        gameModels.append(Question(text: " أحمد ذهب إلى الجامعة ـــ ", answers: [
            Answer(text: " أمس ", correct: true),
            Answer(text: " بالغد " , correct: false),
            Answer(text: " الأسبوع القادم " , correct: false )
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " فاطمة ستزور سوزان ـــ ", answers: [
            Answer(text: " أمس " , correct: false),
            Answer(text: " غداً ", correct: true),
            Answer(text: " الأسبوع الماضي " , correct: false)
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " محمد ـــ يذهب إلى العمل غداً  ", answers: [
            Answer(text: " لن ", correct: true),
            Answer(text: " لم " , correct: false),
            Answer(text: " ما " , correct: false)
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " هم ـــ يسافرون الأسبوع القادم ", answers: [
            Answer(text: " ليس " , correct: false),
            Answer(text: " سوف ", correct: true),
            Answer(text: " ما " , correct: false)
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " نحن سافرنا الأسبوع ـــ ", answers: [
            Answer(text: " القادم " , correct: false),
            Answer(text: " القادمون " , correct: false),
            Answer(text: " الماضي ", correct: true)
        ]))
        
        
        
        
        gameModels.append(Question(text: " فاطمة ـــ صديقتها أمس ", answers: [
            Answer(text: " زرت " , correct: false),
            Answer(text: " زارت ", correct: true),
            Answer(text: " تزور " , correct: false)
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " أحمد ـــ يزر صديقة أمس ", answers: [
            Answer(text: " لم ", correct: true),
            Answer(text: " لن " , correct: false),
            Answer(text: " ليس " , correct: false)
            
        ]))
        
        
   
        gameModels.append(Question(text: " آنا أعود ـــ البيت الساعة الخامسة  ", answers: [
            Answer(text: " في  ", correct: true),
            Answer(text: " متى " , correct: false),
            Answer(text: " إلى " , correct: false)
            
        ]))
    
    
    
    
        gameModels.append(Question(text: " زار صديقة ـــ ذهب إلى السوق ", answers: [
            Answer(text: " قبل أن " , correct: false),
            Answer(text: " حيث أن " , correct: false),
            Answer(text: " بعد أن  ", correct: true)
        ]))
    
    
    
   
        gameModels.append(Question(text: " سأنام بعد أن ـــ الفلم ", answers: [
            Answer(text: " شاهدت " , correct: false),
            Answer(text: " سأشاهد " , correct: false),
            Answer(text: " أشاهد ", correct: true)
        ]))
    
    
    
    
        gameModels.append(Question(text: " أريد ـــ أشتري سيارة جديدة ", answers: [
            Answer(text: " أن ", correct: true),
            Answer(text: " عن " , correct: false),
            Answer(text: " سوف " , correct: false)
            
        ]))
    
    
    
        
        gameModels.append(Question(text: " هم يحبون ـــ يدرسون اللغة العربية ", answers: [
            Answer(text: " لن " , correct: false),
            Answer(text: " كيف " , correct: false),
            Answer(text: " أن " , correct: true)
        ]))
        
        
        
        
        
        gameModels.append(Question(text: " هذه صديقتي ـــ تدرس في الجامعة ", answers: [
            Answer(text: " التي " , correct: true),
            Answer(text: " الذي " , correct: false),
            Answer(text: " الذين " , correct: false)
            
        ]))
        
        
        
        
        
        
        
        gameModels.append(Question(text: "  أين الكتب التي ـــ أمس", answers: [
            Answer(text: " اشترته " , correct: false),
            Answer(text:  " اشتريتها ", correct: true),
            Answer(text: " شراء " , correct: false)
            
        ]))
        
        
        
        
        
        
        
        gameModels.append(Question(text: " أنا أدرس العربية ـــ صديقي فيدرس اليابانيه ", answers: [
            Answer(text: " كما " , correct: false),
            Answer(text: " أما " , correct: true),
            Answer(text: " أيضاً " , correct: false)
            
        ]))
        
        
        
        
        
        
        
        gameModels.append(Question(text: " لا أحب ــــ إلى السوق ", answers: [
            Answer(text: " الذهاب ", correct: true),
            Answer(text: " ذهبت " , correct: false),
            Answer(text: " أذهب " , correct: false)
            
        ]))
        
        
        
        
        
        
        gameModels.append(Question(text: " عدت إلى البيت بعد ـــ صديقي ", answers: [
            Answer(text: " سأقابل " , correct: false),
            Answer(text: " مقابلة ", correct: true),
            Answer(text: " قابلت " , correct: false)
            
        ]))
        
        
        
        
        gameModels.append(Question(text: " نمت مبكراً ـــ آصحو مبكراً ", answers: [
            Answer(text: " كيف " , correct: false),
            Answer(text: " ثم " , correct: false),
            Answer(text: " لكي ", correct: true)
        ]))
        
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = gameModels[indexPath.row].text
    return cell
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//
//        guard let question = currentQuestion else {
//            return
//        }
//
//        let answer = question.answers[indexPath.row]
//
//        if checkAnswer(answer: answer, question: question ) {
//
//            if let index = gameModels.firstIndex(where: { $0.text == question.text}) {
//                if index < (gameModels.count - 1) {
//                 let nextQuestion = gameModels[index+1]
//                    print("\(nextQuestion.text)")
//                    currentQuestion = nil
//                    configureUI(question: nextQuestion)
//
//                }
//                else {
//                    let alert = UIAlertController(title: "Done", message: "You beat the game", preferredStyle: .alert)
//                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
//                    present(alert, animated: true)
//
//            }
//
//        }
//        else {
//            let alert = UIAlertController(title: "Worng", message: "You Suck", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
//            present(alert, animated: true)
//        }
//    }
    
}

struct Question {
    let text: String
    let answers: [Answer]

}

struct Answer {
    let text: String
    let correct: Bool
}

