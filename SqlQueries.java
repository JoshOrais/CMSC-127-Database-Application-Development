import java.sql.*;

public class SqlQueries {
    private String sqlUser = null;
    private String sqlPassword = null;

    private String[] questions = null;
    private String[][] choices = null;
    private String correctAnswer = null;

    public SqlQueries(String user, String pass) {
        sqlUser = user;
        sqlPassword = pass;
    }

    public void queryForDisplay(String category) {
        questions = new String[10];
        choices = new String[10][4];
        correctAnswer = null;

        try (
            Connection conn = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/QuizBee?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
               sqlUser, sqlPassword);
            Statement stmt = conn.createStatement();
        ) {
            //comment
            System.out.println("JDBC Connection made!");
            //

            ResultSet rset;
            for (int i=1; i<=10; i++) {
                String questionQuery = "SELECT question_content FROM categories, questions WHERE categories.category_ID=questions.category_ID AND name='" + category + "' AND item=" + i;
                rset = stmt.executeQuery(questionQuery);

                while(rset.next()){
                    questions[i-1] = rset.getString("question_content");
                }

                String choicesQuery = "SELECT letter, choice_content FROM categories, choices WHERE categories.category_ID=choices.category_ID AND name='" + category + "' AND item=" + i;
                rset = stmt.executeQuery(choicesQuery);

                int k=0;
                while(rset.next()){
                    choices[i-1][k] = rset.getString("letter") + ". " + rset.getString("choice_content");
                    k++;
                }
            }
        } catch(SQLException ex) {
            ex.printStackTrace();
        }
    }

    public String[] getQuestions (){
        return questions;
    }
    public String[][] getChoices(){
        return choices;
    }

    public boolean checkAnswer(String category, int item, char choice) {
        correctAnswer = null;

        try (
            Connection conn = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/QuizBee?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
               sqlUser, sqlPassword);
            Statement stmt = conn.createStatement();
        ) {
            ResultSet rset;

            String checkQuery = "SELECT answer FROM categories, choices WHERE categories.category_ID=choices.category_ID AND name='" + category + "'" + "AND item=" + item + "AND letter='"+choice+"'";
            rset = stmt.executeQuery(checkQuery);
            int correctness = rset.getInt("answer");

            if (correctness != 0) {
                return true;
            }
            else {
                String getCorrect = "SELECT choice_content " + 
                                    "FROM categories, choices " +
                                    "WHERE categories.category_ID=choices.category_ID" +
                                        " AND name='" + category + "'" +
                                        " AND item=" + item +
                                        " AND answer=1";
                rset = stmt.executeQuery(getCorrect);
                correctAnswer = rset.getString("choice_content");
            }

        } catch(SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }
}
