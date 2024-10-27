
import SwiftUI


struct Question {
    var text: String
    var options: [String]
    var correctAnswer: String
}
struct QuestionView: View {
    let questions: [Question]
        @State private var currentQuestionIndex = 0
        @State private var selectedAnswer: String?
        @State private var score = 0
    @State private var showingResult = false
        var body: some View {
            
                VStack {
                    Text(questions[currentQuestionIndex].text)
                        .padding()
                    ScrollView{
                        ForEach(questions[currentQuestionIndex].options, id: \.self) { option in
                            Button(action: {
                                selectedAnswer = option
                            }) {
                                Text(option)
                                    .padding()
                                    .background(selectedAnswer == option ? Color.blue : Color.gray)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            .disabled(selectedAnswer != nil)
                        }
                    }
                    
                    Button("Next") {
                        if let selectedAnswer = selectedAnswer {
                            if selectedAnswer == questions[currentQuestionIndex].correctAnswer {
                                score += 1
                            }
                        }
                        
                        if currentQuestionIndex < questions.count - 1 {
                            currentQuestionIndex += 1
                            selectedAnswer = nil
                        } else {
                            showingResult = true
                            // Show result
                            // You can navigate to another view to show the result
                        }
                    }
                    .disabled(selectedAnswer == nil)
                }
                .padding()
            
            .alert(isPresented: $showingResult) {
                
                        Alert(
                            title: Text("Quiz Result"),
                            message: Text("You scored \(score) out of \(questions.count)"),
                            dismissButton: .default(Text("OK")) {
                                // Reset quiz or navigate somewhere else
                            }
                        )
                    }
        }
    }


import SwiftUI

struct ProgramView: View {
    let chapterNumber: Int
    let chapterName: String

    var body: some View {
        VStack {
            Text("\(chapterName) Theory")
                .navigationBarTitle("\(chapterName) Theory")
            // Add your theory content here
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    switch chapterNumber {
                    case 1:let q = [
                        Question(
                                        text: "Which of the properties hold for the adjacency matrix A of a simple undirected unweighted graph having n vertices? ",
                                        options: ["The diagonal entries of A2 are the degrees of the vertices of the graph", "If the graph is connected, none of the entries of An-1 + In can be zero", "If the sum of all the elements of A is at most 2(n – 1), then the graph must be acyclic", "If there is at least a 1 in each of A’s rows and columns, then the graph must be connected"],
                                        correctAnswer: "The diagonal entries of A2 are the degrees of the vertices of the graph"
                                    ),
                        Question(
                                        text: "What is the size of the smallest MIS (Maximal Independent Set) of a chain of nine nodes?",
                                        options: ["5", "4", "3", "2"],
                                        correctAnswer: "3"
                                    ),
                        Question(
                                        text: "Let S be a set6 of n elements. The number of ordered pairs in the largest and the smallest equivalence relations on S is ___",
                                        options: ["n and n", "n2 and n", "n2 and 0", "n and 1"],
                                        correctAnswer: "n2 and n"
                                    )]
                        QuestionView(questions:q)
                    
                    case 2:
                        let q = [
                            Question(
                                            text: "Which one of the following expressions does NOT represent the exclusive NOR of x and y?",
                                            options: ["xy + x’y’", "x⊕y’", "x’⊕y", "x’⊕y’"],
                                            correctAnswer: "x’⊕y’"
                                        ),
                            Question(
                                            text: "The minters expansion of f(P, Q, R) = PQ + QR’ + PR’ is ___",
                                            options: ["m2 + m4 + m6 + m7", "m0 + m1 + m3 + m5", "m0 + m1 + m6 + m7", "m2 + m3 + m4 + m5"],
                                            correctAnswer: "m2 + m4 + m6 + m7"
                                        ),
                            Question(
                                            text: "Consider a 4-bit Johnson counter with an initial value of 0000. The counting sequence of this counter is ___",
                                            options: ["0, 1, 3, 7, 15, 14, 12, 8, 0", "0, 1, 3, 5, 7, 9, 11, 13, 15, 0", "0, 2, 4, 6, 8, 10, 12, 14, 0", "0, 8, 12, 14, 15, 7, 3, 1, 0"],
                                            correctAnswer: "0, 8, 12, 14, 15, 7, 3, 1, 0"
                                        )]
                            QuestionView(questions:q)
                    case 3:let q = [
                        Question(
                                        text: "The amount of ROM needed to implement a 4-bit multiplier is __",
                                        options: ["64 bits", "128 bits", "1 K bits", "2 K bits"],
                                        correctAnswer: "2 K bits"
                                    ),
                        Question(
                                        text: "Increasing the RAM of a computer typically improves performance because ___",
                                        options: ["Virtual memory increases", "Larger RAMs are faster", "Fewer page faults occur", "Fewer segmentation faults occur"],
                                        correctAnswer: "Fewer page faults occur"
                                    ),
                        Question(
                                        text: "Register renaming is done in pipelined processors ___",
                                        options: ["as an alternative to registering allocation at compile time", "for efficient access to function parameters and local variables", "to handle certain kinds of hazards", "as part of address translation"],
                                        correctAnswer: "to handle certain kinds of hazards"
                                    )]
                        QuestionView(questions:q)
                    case 4:let q = [
                        Question(
                                        text: "What is the worst-case time complexity of inserting n elements into an empty linked list, if the linked list needs to be maintained in sorted order? More than one answer may be correct.",
                                        options: ["Θ(n)", "Θ(n log n)", "Θ(n2)", "Θ(1)"],
                                        correctAnswer: "Θ(n2)"
                                    ),
                        Question(
                                        text: "The result evaluating the postfix expression 10 5 + 60 6/ * 8 – is ___",
                                        options: ["284", "213", "142","71"],
                                        correctAnswer: "142"
                                    ),
                        Question(
                                        text: "A program P reads 500 integers in the range [0, 100] representing the cores of 500 students. It then prints the frequency of each score above 50. What would be the best way for P to store the frequencies?",
                                        options: ["An array of 50 numbers", "An array of 100 numbers", "An array of 200 numbers", "A dynamically allocated array of 550 numbers"],
                                        correctAnswer: "An array of 50 numbers"
                                    )]
                        QuestionView(questions:q)
                    case 5:let q = [
                        Question(
                                        text: "For parameters a and b, both of which are ω(1), T(n) = T(n1/a) + 1, and T(b) = 1. Then T(n) is ___",
                                        options: ["θ(logalogbn)", "θ(logabn)", "θ(logblogan)", "θ(log2log2n)"],
                                        correctAnswer: "θ(logalogbn)"
                                    ),
                        Question(
                                        text: "Consider the following array of elements: (89,19,50,17,12,15,2,5,7,11,6,9,100). The minimum number of interchanges needed to convert it into a max-heap is ___",
                                        options: ["4", "5", "2","3"],
                                        correctAnswer: "3"
                                    ),
                        Question(
                                        text: "The Floyd-Warshall algorithm for all-pair shortest paths computation is based on ___",
                                        options: ["Greedy Algorithm", "Divide-and-Conquer Paradigm", "Dynamic Programming Paradigm", "neither Greedy nor Divide-and-Conquer nor Dynamic Programming Paradigm"],
                                        correctAnswer: "Dynamic Programming Paradigm"
                                    )]
                        QuestionView(questions:q)
                        
                    case 6:let q = [
                        Question(
                                        text: "Which one of the following is FALSE?",
                                        options: ["User-level threads are not scheduled by the kernel", "When a user-level thread is blocked, all other threads of its process are blocked", "Context switching between user-level threads is faster than context switching between kernel-level threads", "Kernel-level threads cannot share the code segment"],
                                        correctAnswer: "Kernel-level threads cannot share the code segment"
                                    ),
                        Question(
                                        text: "In which one of the following page replacement policies, Belady’s anomaly may occur?",
                                        options: ["FIFO", "Optimal", "LRU","MRU"],
                                        correctAnswer: "FIFO"
                                    ),
                        Question(
                                        text: "The essential content(s) in each entry of a page table is/are:",
                                        options: ["Virtual page number", "Page frame number", "Both virtual page number and page frame number", "Access the right information"],
                                        correctAnswer: "Page frame number"
                                    )]
                        QuestionView(questions:q)
                    case 7:let q = [
                        Question(
                                        text: "Which one of the following is not a client-server application? ",
                                        options: ["Internet Chat", "Web Browsing", "Email","ping"],
                                        correctAnswer: "ping"
                                    ),
                        Question(
                                        text: "The protocol data unit(PDU) for the application layer in the Internet stack is ___",
                                        options: ["Segment", "Datagram", "Message","Frame"],
                                        correctAnswer: "Message"
                                    ),
                        Question(
                                        text: "Which of the following transport layer protocols is used to support electronic mail?",
                                        options: ["SMTP", "IP", "TCP", "UDP"],
                                        correctAnswer: "TCP"
                                    )]
                        QuestionView(questions:q)
                    case 8:let q = [
                        Question(
                                        text: "Which one of the options given below refers to the degree (or arity) of relation in relational database systems?",
                                        options: ["Number of attributes of its relation schema.", "Number of tuples stored in the relation.", "Number of entries in the relation.","Number of distinct domains of its relation schema."],
                                        correctAnswer: "Number of attributes of its relation schema."
                                    ),
                        Question(
                                        text: "In a relational data model, which one of the following statements is TRUE?",
                                        options: ["A relation with only two attributes is always in BCNF.", "If all attributes of a relation are prime attributes, then the relation is in BCNF.", "Every relation has at least one non-prime attribute.","BCNF decompositions preserve functional dependencies."],
                                        correctAnswer: "A relation with only two attributes is always in BCNF."
                                    ),
                        Question(
                                        text: "A prime attribute of a relation scheme R is an attribute that appears ___",
                                        options: ["in all candidate keys of R.", "in some candidate keys of R.", "In a foreign key of R.", "only in the primary key of R."],
                                        correctAnswer: "in some candidate keys of R."
                                    )]
                        QuestionView(questions:q)
                    
                    default:
                        Text("No content available.")
                    }
                }
                .padding()
            }
        }
    }
}
