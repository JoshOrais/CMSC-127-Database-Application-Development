import java.awt.event.ActionListener;
import java.awt.*;    
import javax.swing.*;


public class DatabaseApplicationDevelopment extends JFrame implements ActionListener{
    private JPanel welcomePanel;
    private JPanel questionsPanel;
    private JPanel lastPanel;

    private JLabel titleMain;
    private JButton category1;
    private JButton category2;
    private JButton category3;
    private JButton category4;
    private JButton exitMain;

    private JLabel categoryTitle;
    private JTextArea question;
    private JButton choiceA;
    private JButton choiceB;
    private JButton choiceC;
    private JButton choiceD;
    private JLabel result;
    private JButton next;

    private JLabel titleLast;
    private JLabel scoreLabel;
    private JButton backToMain;

    private CardLayout cardLayout;
    private Container container;

    private String user;
    private String pass;
    private String currentCategory;
    private String[] questions;
    private String[][] choices;
    private int itemCounter;
    private int score;

    public DatabaseApplicationDevelopment(String sqlUser, String sqlPassword) {
        user = sqlUser;
        pass = sqlPassword;

        cardLayout = new CardLayout();
        container = getContentPane();
        container.setLayout(cardLayout);

        //components for welcome panel

        titleMain = new JLabel("SIMPLE QUIZ");
        titleMain.setHorizontalAlignment(SwingConstants.CENTER);
        titleMain.setFont(new Font("Serif", Font.BOLD, 75));
        titleMain.setSize(1000,150);
        titleMain.setLocation(0,50);

        category1 = new JButton("HISTORY AND GEOGRAPHY");
        category1.setSize(500,100);
        category1.setLocation(250,200);
        category1.setFont(new Font("Serif", Font.PLAIN, 30));
        category1.addActionListener(this);
        category2 = new JButton("GENERAL KNOWLEDGE");
        category2.setSize(500,100);
        category2.setLocation(250,300);
        category2.setFont(new Font("Serif", Font.PLAIN, 30));
        category2.addActionListener(this);
        category3 = new JButton("SCIENCE AND NATURE");
        category3.setSize(500,100);
        category3.setLocation(250,400);
        category3.setFont(new Font("Serif", Font.PLAIN, 30));
        category3.addActionListener(this);
        category4 = new JButton("MUSIC");
        category4.setSize(500,100);
        category4.setLocation(250,500);
        category4.setFont(new Font("Serif", Font.PLAIN, 30));
        category4.addActionListener(this);
        
        exitMain = new JButton("EXIT");
        exitMain.setFont(new Font("Serif", Font.BOLD, 20));
        exitMain.setBackground(new Color(255,60,60));
        exitMain.setSize(200, 50);
        exitMain.setLocation(400, 675);
        exitMain.addActionListener(this);

        //components for second panel

        categoryTitle = new JLabel("CATEGORY");
        categoryTitle.setHorizontalAlignment(SwingConstants.CENTER);
        categoryTitle.setFont(new Font("Serif", Font.BOLD, 40));
        categoryTitle.setSize(1000,100);
        categoryTitle.setLocation(0,25);

        question = new JTextArea("Quwstion");
        question.setLineWrap(true);
        question.setFont(new Font("Serif", Font.BOLD, 30));
        question.setSize(800,100);
        question.setLocation(75,125);
        question.setOpaque(false);

        choiceA = new JButton("A");
        choiceA.setSize(500,50);
        choiceA.setLocation(250,250);
        choiceA.setFont(new Font("Serif", Font.PLAIN, 20));
        choiceA.addActionListener(this);
        choiceB = new JButton("B");
        choiceB.setSize(500,50);
        choiceB.setLocation(250,300);
        choiceB.setFont(new Font("Serif", Font.PLAIN, 20));
        choiceB.addActionListener(this);
        choiceC = new JButton("C");
        choiceC.setSize(500,50);
        choiceC.setLocation(250,350);
        choiceC.setFont(new Font("Serif", Font.PLAIN, 20));
        choiceC.addActionListener(this);
        choiceD = new JButton("D");
        choiceD.setSize(500,50);
        choiceD.setLocation(250,400);
        choiceD.setFont(new Font("Serif", Font.PLAIN, 20));
        choiceD.addActionListener(this);

        result = new JLabel();
        result.setHorizontalAlignment(SwingConstants.CENTER);
        result.setFont(new Font("Serif", Font.BOLD, 35));
        result.setSize(1000,100);
        result.setLocation(0,500);

        next = new JButton("NEXT");
        next.setFont(new Font("Serif", Font.BOLD, 20));
        next.setBackground(Color.green);
        next.setSize(200, 50);
        next.setLocation(400, 675);
        next.addActionListener(this);

        //components for last panel

        titleLast = new JLabel("That's a wrap!");
        titleLast.setHorizontalAlignment(SwingConstants.CENTER);
        titleLast.setFont(new Font("Serif", Font.PLAIN, 40));
        titleLast.setSize(1000,100);
        titleLast.setLocation(0,50);

        scoreLabel = new JLabel("Your Score is: ");
        scoreLabel.setHorizontalAlignment(SwingConstants.CENTER);
        scoreLabel.setFont(new Font("Serif", Font.BOLD, 75));
        scoreLabel.setSize(1000,150);
        scoreLabel.setLocation(0,175);

        backToMain = new JButton("Back to Main Menu");
        backToMain.setFont(new Font("Serif", Font.BOLD, 20));
        backToMain.setSize(200, 50);
        backToMain.setLocation(400, 675);
        backToMain.addActionListener(this);

        // --------------------------------------------

        welcomePanel = new JPanel();
        welcomePanel.setSize(1000, 750);
        welcomePanel.setLayout(null);
        welcomePanel.add(titleMain);
        welcomePanel.add(category1);
        welcomePanel.add(category2);
        welcomePanel.add(category3);
        welcomePanel.add(category4);
        welcomePanel.add(exitMain);

        questionsPanel = new JPanel();
        questionsPanel.setSize(1000, 750);
        questionsPanel.setLayout(null);
        questionsPanel.add(categoryTitle);
        questionsPanel.add(question);
        questionsPanel.add(choiceA);
        questionsPanel.add(choiceB);
        questionsPanel.add(choiceC);
        questionsPanel.add(choiceD);
        questionsPanel.add(result);
        questionsPanel.add(next);

        lastPanel = new JPanel();
        lastPanel.setSize(1000, 750);
        lastPanel.setLayout(null);
        lastPanel.add(titleLast);
        lastPanel.add(scoreLabel);
        lastPanel.add(backToMain);

        container.add(welcomePanel);
        container.add(questionsPanel);
        container.add(lastPanel);

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setUndecorated(true);
        this.setSize(1000,750);
        this.setLocationRelativeTo(null);
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(java.awt.event.ActionEvent e) {
        String action = e.getActionCommand();

        if (action.equals("HISTORY AND GEOGRAPHY")) {
            cardLayout.next(container);
            startQuiz("History and Geography");
        }
        if (action.equals("GENERAL KNOWLEDGE")) {
            cardLayout.next(container);
            startQuiz("General Knowledge");
        }
        if (action.equals("SCIENCE AND NATURE")) {
            cardLayout.next(container);
            startQuiz("Science and Nature");
        }
        if (action.equals("MUSIC")) {
            cardLayout.next(container);
            startQuiz("Music");
        }

        if (action.equals("EXIT")) {
            System.exit(0);
        }

        if (action.equals(choiceA.getText())) {
            checkAnswer('A');
        }
        if (action.equals(choiceB.getText())) {
            checkAnswer('B');
        }
        if (action.equals(choiceC.getText())) {
            checkAnswer('C');
        }
        if (action.equals(choiceD.getText())) {
            checkAnswer('D');
        }

        if (action.equals("NEXT")) {
            if (itemCounter > 10) {
                cardLayout.next(container);
                displaySummary();
            }
            else {
                displayQuestion();
            }
        }

        if (action.equals("Back to Main Menu")) {
            cardLayout.next(container);
        }
        
    }

    private void startQuiz(String cat) {
        currentCategory = cat;
        score = 0;
        itemCounter=1;

        System.out.println("START QUIZ");
        System.out.println(currentCategory + " is the chosen category");

        SqlQueries queries = new SqlQueries(user, pass);
        queries.queryForDisplay(currentCategory);
        questions = queries.getQuestions();
        choices = queries.getChoices();

        displayQuestion();
    }

    private void displayQuestion() {
        questionsPanel.setBackground(Color.white);
        result.setText(" ");
        enableChoices();

        categoryTitle.setText(currentCategory.toUpperCase());
        question.setText(itemCounter + ". " + questions[itemCounter-1]);
        choiceA.setText(choices[itemCounter-1][0]);
        choiceB.setText(choices[itemCounter-1][1]);
        choiceC.setText(choices[itemCounter-1][2]);
        choiceD.setText(choices[itemCounter-1][3]);

        System.out.println("Question " + itemCounter + " displayed from category: " + currentCategory);
    }

    private void checkAnswer(char x) {
        System.out.println("CHECK ANSWER");
        System.out.println("The chosen answer is choice " + x);

        SqlQueries queries = new SqlQueries(user, pass);
        boolean correct = queries.checkAnswer(currentCategory, itemCounter, x);
        String correctAnswer = queries.getCorrectAnswer();

        if (correct) {
            result.setText("Your answer is correct");
            questionsPanel.setBackground(new Color(102,255,102));
            score++;
        }
        else {
            result.setText("The correct answer is " + correctAnswer);
            questionsPanel.setBackground(new Color(255,102,102));
        }

        System.out.println("Answer is " + correct);
        System.out.println("Correct answer is: " + correctAnswer);

        itemCounter++;
        disableChoices();
    }

    private void displaySummary() {
        scoreLabel.setText("You got " + score + " out of 10!");
        reset();
    }

    private void enableChoices(){
        choiceA.setEnabled(true);
        choiceB.setEnabled(true);
        choiceC.setEnabled(true);
        choiceD.setEnabled(true);
    }
    private void disableChoices(){
        choiceA.setEnabled(false);
        choiceB.setEnabled(false);
        choiceC.setEnabled(false);
        choiceD.setEnabled(false);
    }
    private void reset() {
        currentCategory = null;
        questions = null;
        choices = null;
        itemCounter = 1;
        score = 0;
        
        enableChoices();
        result.setText("");
        questionsPanel.setBackground(Color.white);
    }

}