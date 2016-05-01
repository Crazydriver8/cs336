package cs336;

public class Question {
	private int QuestionID;
	private String VIN;
	private String Question;
	private String Answer;
	
	public Question(int questionid, String vin, String question, String answer) 
	{
		super();
		QuestionID = questionid;
		VIN = vin;
		Question = question;
		Answer = answer;
	}


	public Question(){
		
	}

	public int getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(int questionid) {
		QuestionID = questionid;
	}
	public String getVIN() {
		return VIN;
	}

	public void setVIN(String vin) {
		VIN = vin;
	}
	public String getQuestion() {
		return Question;
	}
	public void setQuestion(String question) {
		Question = question;
	}
	public String getAnswer() {
		return Answer;
	}

	public void setAnswer(String answer) {
		Answer = answer;
	}
}
