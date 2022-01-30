import java.util.Scanner;

public class DatabaseApplicationDevelopment {

    public DatabaseApplicationDevelopment() {
        System.out.println("START");

        Scanner scan = new Scanner (System.in);

        SqlQueries queries = new SqlQueries("joshuaOrais", "joshuaOrais");
        
        System.out.println("SQL Queries object generated");

        queries.queryForDisplay("Music");
        String[] questions = queries.getQuestions();
        String[][] choices = queries.getChoices();

        System.out.println(questions[0]);
        for (int i=0; i<4; i++) {
            System.out.println("\t" + choices[0][i]);
        }

        System.out.print("Your answer is: ");
        char answer = scan.next().charAt(0);
        // boolean correct = queries.checkAnswer("Music", 1, answer);
        // if (correct){
        //     System.out.println("Your answer is CORRECT!!!");
        // }
        // else {
        //     System.out.println("The correct answer is " + queries.getCorrectAnswer());
        // }
    }
}