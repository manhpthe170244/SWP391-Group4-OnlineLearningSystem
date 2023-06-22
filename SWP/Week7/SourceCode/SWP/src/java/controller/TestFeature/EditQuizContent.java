/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.TestFeature;

import dao.QuizDAO;
import entity.Choice;
import entity.Question;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Vector;

/**
 *
 * @author FPT
 */
public class EditQuizContent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int quiz_id = Integer.parseInt(request.getParameter("quiz_id"));
        String quiz_name = request.getParameter("quiz_name");
        QuizDAO qd = new QuizDAO();
        Vector<Question> questionList = qd.getQuestionByQuizId(quiz_id);
        for (Question question : questionList) {
            Vector<Choice> cv = qd.getChoicebyQuestionId(question.getQues_id());
            question.setChoices(cv);
        }
        request.setAttribute("quiz_name", quiz_name);
        request.setAttribute("quiz_id", quiz_id);
        request.setAttribute("questionList", questionList);
        request.getRequestDispatcher("QuestionListEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String[] editedQuesNames = request.getParameterValues("quiz_name");
        int quiz_id = Integer.parseInt(request.getParameter("quiz_id"));
        String[] deletions = request.getParameter("deletion").trim().split(",");
        Vector<Integer> deletedChoicesId = new Vector<>();
        for(int i = 0; i < deletions.length; i++){
            if(deletions[i]==" "||deletions[i]==""){
                continue;
            }else{
                deletedChoicesId.add(Integer.parseInt(deletions[i]));
            }
        }
        QuizDAO qd = new QuizDAO();
        Vector<Question> questionList = qd.getQuestionByQuizId(quiz_id);
        Vector<Integer> rightChoicesId = new Vector<>();
        int choiceId = 0;
        for (Question question : questionList) {
            choiceId = Integer.parseInt(request.getParameter("rightChoiceFor" + question.getQues_id()));
            rightChoicesId.add(choiceId);
        }
        Vector<Integer> ChoicesIdByQuesId = new Vector<>();
        Vector<Choice> ChoicesByQuesId = new Vector<>();
        for (Question question : questionList) {
            ChoicesByQuesId = (qd.getChoicebyQuestionId(question.getQues_id()));
//            out.print("//"+question.getQues_id());
            for (Choice choice : ChoicesByQuesId) {
                ChoicesIdByQuesId.add(choice.getChoice_id());
//                out.print("  "+choice.getChoice_id());
            }

        }
        String[] editedChocies = request.getParameterValues("EditedChoiceContent");
        for (int i = 0; i < editedChocies.length; i++) {
            for (Integer rci : rightChoicesId) {
//                out.print("(" + ChoicesIdByQuesId.get(i) + "--" + rci + ")");
                if (ChoicesIdByQuesId.get(i).equals(rci)) {
                    qd.UpdateChoices(ChoicesIdByQuesId.get(i), editedChocies[i], true);
                    break;
                } else {
                    qd.UpdateChoices(ChoicesIdByQuesId.get(i), editedChocies[i], false);
                }
                
            }
            
            for (Integer deletedId : deletedChoicesId) {
                if(ChoicesIdByQuesId.get(i).equals(deletedId)){
                    qd.RemoveChoices(ChoicesIdByQuesId.get(i));
                }
            }

        }

    }

}
