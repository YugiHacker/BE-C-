using OnlineLearningWeb.Models;

namespace OnlineLearningWeb.Interface
{
    public interface ICourseRepository
    {
        ICollection<Course> GetCourses();

        ICollection<Course> GetCoursesBySearchKey(string searchKey);
        Course GetCourse(int id);


        bool CourseExist(int id);

        bool Save();



        bool CreateCourse(Course course);


    }
}
