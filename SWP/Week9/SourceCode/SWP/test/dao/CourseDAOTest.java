/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package dao;

import entity.Course;
import entity.ManageCourse;
import java.sql.Date;
import java.util.Map;
import java.util.Vector;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Uslaptop
 */
public class CourseDAOTest {
    
    public CourseDAOTest() {
    }
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
    }
    
    @AfterEach
    public void tearDown() {
    }

    /**
     * Test of addCourse method, of class CourseDAO.
     */
    @Test
    public void testAddCourse() {
        System.out.println("addCourse");
        String course_name = "";
        String course_img = "";
        float course_price = 0.0F;
        String course_desc = "";
        Date last_update = null;
        int sub_id = 0;
        int level_id = 0;
        Boolean course_status = null;
        int duration = 0;
        String course_title = "";
        CourseDAO instance = new CourseDAO();
        int expResult = 0;
        int result = instance.addCourse(course_name, course_img, course_price, course_desc, last_update, sub_id, level_id, course_status, duration, course_title);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getmyCourseList method, of class CourseDAO.
     */
    @Test
    public void testGetmyCourseList() {
        System.out.println("getmyCourseList");
        int user_Id = 0;
        String sub_idRaw = "";
        String searchName = "";
        String sortType = "";
        CourseDAO instance = new CourseDAO();
        Vector<ManageCourse> expResult = null;
        Vector<ManageCourse> result = instance.getmyCourseList(user_Id, sub_idRaw, searchName, sortType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAll method, of class CourseDAO.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCourseBySubId method, of class CourseDAO.
     */
    @Test
    public void testGetCourseBySubId() {
        System.out.println("getCourseBySubId");
        int filter_sub_id = 0;
        int offset = 0;
        int fetch = 0;
        String sorttype = "";
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.getCourseBySubId(filter_sub_id, offset, fetch, sorttype);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of Get4HottestBySubId method, of class CourseDAO.
     */
    @Test
    public void testGet4HottestBySubId() {
        System.out.println("Get4HottestBySubId");
        int search_sub_id = 0;
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.Get4HottestBySubId(search_sub_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getHottestCourse method, of class CourseDAO.
     */
    @Test
    public void testGetHottestCourse() {
        System.out.println("getHottestCourse");
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.getHottestCourse();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByName method, of class CourseDAO.
     */
    @Test
    public void testSearchByName() {
        System.out.println("searchByName");
        String search_name = "";
        String sorttype = "";
        int offset = 0;
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.searchByName(search_name, sorttype, offset);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchById method, of class CourseDAO.
     */
    @Test
    public void testSearchById() {
        System.out.println("searchById");
        int search_id = 0;
        CourseDAO instance = new CourseDAO();
        Course expResult = null;
        Course result = instance.searchById(search_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchNameSortByHottest method, of class CourseDAO.
     */
    @Test
    public void testSearchNameSortByHottest() {
        System.out.println("searchNameSortByHottest");
        String search_name = "";
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.searchNameSortByHottest(search_name);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchSubIdSortByHottest method, of class CourseDAO.
     */
    @Test
    public void testSearchSubIdSortByHottest() {
        System.out.println("searchSubIdSortByHottest");
        int search_sub_id = 0;
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.searchSubIdSortByHottest(search_sub_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDashBoardDataPar method, of class CourseDAO.
     */
    @Test
    public void testGetDashBoardDataPar() {
        System.out.println("getDashBoardDataPar");
        String sortType = "";
        CourseDAO instance = new CourseDAO();
        Map<String, Integer> expResult = null;
        Map<String, Integer> result = instance.getDashBoardDataPar(sortType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getByNameAndSubId method, of class CourseDAO.
     */
    @Test
    public void testGetByNameAndSubId() {
        System.out.println("getByNameAndSubId");
        String search_name = "";
        int filter_sub_id = 0;
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.getByNameAndSubId(search_name, filter_sub_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByNameAndSubIdSortByHottest method, of class CourseDAO.
     */
    @Test
    public void testSearchByNameAndSubIdSortByHottest() {
        System.out.println("searchByNameAndSubIdSortByHottest");
        String search_name = "";
        int search_sub_id = 0;
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.searchByNameAndSubIdSortByHottest(search_name, search_sub_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of addCourseToUser method, of class CourseDAO.
     */
    @Test
    public void testAddCourseToUser() {
        System.out.println("addCourseToUser");
        int course_id = 0;
        int user_id = 0;
        Date course_start = null;
        Date course_end = null;
        CourseDAO instance = new CourseDAO();
        Boolean expResult = null;
        Boolean result = instance.addCourseToUser(course_id, user_id, course_start, course_end);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalNumber method, of class CourseDAO.
     */
    @Test
    public void testGetTotalNumber() {
        System.out.println("getTotalNumber");
        int sub_id = 0;
        String search = "";
        CourseDAO instance = new CourseDAO();
        int expResult = 0;
        int result = instance.getTotalNumber(sub_id, search);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllCoursewithPagination method, of class CourseDAO.
     */
    @Test
    public void testGetAllCoursewithPagination() {
        System.out.println("getAllCoursewithPagination");
        int offset = 0;
        int fetch = 0;
        String sorttype = "";
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.getAllCoursewithPagination(offset, fetch, sorttype);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of SortCoursesByParRate method, of class CourseDAO.
     */
    @Test
    public void testSortCoursesByParRate() {
        System.out.println("SortCoursesByParRate");
        int offset = 0;
        int fetch = 0;
        int sub_id = 0;
        String search = "";
        CourseDAO instance = new CourseDAO();
        Vector<Course> expResult = null;
        Vector<Course> result = instance.SortCoursesByParRate(offset, fetch, sub_id, search);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteCourse method, of class CourseDAO.
     */
    @Test
    public void testDeleteCourse() {
        System.out.println("deleteCourse");
        int course_id = 0;
        CourseDAO instance = new CourseDAO();
        Boolean expResult = null;
        Boolean result = instance.deleteCourse(course_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateCourse method, of class CourseDAO.
     */
    @Test
    public void testUpdateCourse() {
        System.out.println("updateCourse");
        int course_id = 0;
        String course_name = "";
        String course_img = "";
        float course_price = 0.0F;
        String course_desc = "";
        Date last_update = null;
        int sub_id = 0;
        int level_id = 0;
        Boolean course_status = null;
        int duration = 0;
        String course_title = "";
        CourseDAO instance = new CourseDAO();
        int expResult = 0;
        int result = instance.updateCourse(course_id, course_name, course_img, course_price, course_desc, last_update, sub_id, level_id, course_status, duration, course_title);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of checkCourseRegistered method, of class CourseDAO.
     */
    @Test
    public void testCheckCourseRegistered() {
        System.out.println("checkCourseRegistered");
        int courseId = 0;
        int userId = 0;
        CourseDAO instance = new CourseDAO();
        ManageCourse expResult = null;
        ManageCourse result = instance.checkCourseRegistered(courseId, userId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCoursePublisher method, of class CourseDAO.
     */
    @Test
    public void testGetCoursePublisher() {
        System.out.println("getCoursePublisher");
        int courseId = 0;
        CourseDAO instance = new CourseDAO();
        int expResult = 0;
        int result = instance.getCoursePublisher(courseId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class CourseDAO.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        CourseDAO.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
