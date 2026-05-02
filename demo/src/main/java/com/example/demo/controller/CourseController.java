package com.example.demo.controller;

import com.example.demo.entity.Course;
import com.example.demo.service.CourseService;
import com.example.demo.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private StudentService studentService;


    @GetMapping("/add-course")
    public String form(Model model) {
        model.addAttribute("course", new Course());
        model.addAttribute("students", studentService.getAll());
        return "course-form";
    }


    @PostMapping("/save-course")
    public String save(@ModelAttribute Course course) {
        courseService.save(course);
        return "redirect:/";
    }

    //  INNER JOIN VIEW
    @GetMapping("/courses-by-student")
    public String getCourses(@RequestParam String name, Model model) {
        model.addAttribute("courses", courseService.findByStudentName(name));
        return "course-list";
    }
}