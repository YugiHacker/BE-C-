using OnlineLearningWeb.Models;

namespace OnlineLearningWeb.Interface
{
    public interface IStudentAnswerRepository
    {
        public bool CreateStudentAnswer(StudentAnswer studentAnswer);
        public bool UpdateStudentAnswer(StudentAnswer studentAnswer);
        public StudentAnswer GetStudentAnswerByUserIdAndQuestionId(int userId, int questionId);
        bool Save();
    }
}
