package Datingsite.controller;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.x.protobuf.MysqlxConnection.CapabilitiesGet;

import Datingsite.entity.Friend;
import Datingsite.entity.Request;
import Datingsite.entity.User;





@Controller
public class Maincontroller {
	@Autowired
	JdbcTemplate template;
	GeneratedKeyHolder generatedKeyHolder=new GeneratedKeyHolder();
	
	@RequestMapping("/")
	public String menu() {
		
		return "menu";
	}
	@RequestMapping("/login")
	public String login() {

		return "login";
	}

	@RequestMapping(path = "/signup")
	public String signup() {

		return "signup";
	}
	
	@RequestMapping(path = "/adminlogin")
	public String adminlogin() {

		return "Adminlogin";
	}
	
	@RequestMapping(path = "/signdata", method = RequestMethod.POST)
	public String signdata(@RequestParam("name") String name,@RequestParam("age") int age,  @RequestParam("gender") String gender, @RequestParam("profession") String profession, @RequestParam("hobbies") String hobbies,@RequestParam("bio") String bio,  @RequestParam("password") String password, Model model) {
		String query = "insert into user(name,age,gender,profession,hobbies,bio,password) values(?,?,?,?,?,?,?)";
template.update(conn -> {
            
            // Pre-compiling SQL
            PreparedStatement preparedStatement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

            // Set parameters
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            preparedStatement.setString(3, gender);
            preparedStatement.setString(4, profession);
            preparedStatement.setString(5, hobbies);
            preparedStatement.setString(6, bio);
            preparedStatement.setString(7, password);


            return preparedStatement;
            
        }, generatedKeyHolder);
		int id=generatedKeyHolder.getKey().intValue();
		model.addAttribute("id",id);
		return "login";
	}
	
	@RequestMapping(path = "/home", method = RequestMethod.POST)
	public String home(@RequestParam("id") int id, @RequestParam("password") String Password, Model model) {
		String query = "select * from user where id=?";
		List<User> l = template.query(query, new BeanPropertyRowMapper(User.class), id);
		if (l.size() == 0) {
			model.addAttribute("msg", "This id doesn't exist");
			return "login";
		}
		
		if (l.get(0).getPassword().equals(Password)) {
			model.addAttribute("gender",l.get(0).getGender());
			String gender;
			if(l.get(0).getGender().equals("Male")) {
				gender="Female";
			}
			else {
				gender="Male";
			}
			query = "select * from user where gender=?";
			List<User> t = template.query(query, new BeanPropertyRowMapper(User.class),gender);
			model.addAttribute("list",t);
			model.addAttribute("id",id);
			return "home";
		}

		model.addAttribute("msg", "Wrong password");
		return "login";
	}
	
	@RequestMapping(path = "/adminhome", method = RequestMethod.POST)
	public String adminhome(@RequestParam("p1") String p1, @RequestParam("p2") String p2, Model model) {
		if (p1.equals(p2) && p1.equals("12345")) {
			return "adminhome";
		}

		model.addAttribute("msg", "Wrong password");
		return "Adminlogin";
	}
	
	@RequestMapping("/userdata")
	public String userdata(Model model) {
		
		String query = "select * from user";
		List<User> l = template.query(query, new BeanPropertyRowMapper(User.class));
		model.addAttribute("list",l);
		return "userdata";
	}
	
	@RequestMapping("/frienddata")
	public String frienddata(Model model) {
		String query = "select * from friend";
		List<Friend> l = template.query(query, new BeanPropertyRowMapper(Friend.class));
		model.addAttribute("list",l);
		return "frienddata";
	}
	
	@RequestMapping("/requestdata")
	public String requestdata(Model model) {
		String query = "select * from request";
		List<Request> l = template.query(query, new BeanPropertyRowMapper(Request.class));
		model.addAttribute("list",l);
		return "requestdata";
	}
	
	@RequestMapping(path = "/request/{id}/{sid}")
	public String request(@PathVariable("id") int id,@PathVariable("sid") int sid,Model model) {
		String query = "select * from user where id=?";
		List<User> lu = template.query(query, new BeanPropertyRowMapper(User.class), id);
		model.addAttribute("gender",lu.get(0).getGender());
		String gender;
		if(lu.get(0).getGender().equals("Male")) {
			gender="Female";
		}
		else {
			gender="Male";
		}
		query = "select * from user where gender=?";
		List<User> t = template.query(query, new BeanPropertyRowMapper(User.class),gender);
		model.addAttribute("list",t);
		model.addAttribute("id",id);
		query="select * from request where sender=?";
		List<Request> l = template.query(query, new BeanPropertyRowMapper(Request.class),id);
		for(int i=0;i<l.size();i++) {
			if(l.get(i).getAccepter()==sid) {
				model.addAttribute("msg","You already sent request on this profile");
				return "home";
			}
		}
		query="select * from request where accepter=?";
		l = template.query(query, new BeanPropertyRowMapper(Request.class),id);
		for(int i=0;i<l.size();i++) {
			if(l.get(i).getSender()==sid) {
				model.addAttribute("msg","Please accept request instead of sending");
				return "home";
			}
		}
		query="select * from friend where id=?";
		List<Friend> s = template.query(query, new BeanPropertyRowMapper(Friend.class),id);
		for(int i=0;i<s.size();i++) {
			if(s.get(i).getSid()==sid) {
				model.addAttribute("msg","You are already friends");
				return "home";
			}
		}
		query="select * from friend where sid=?";
		s = template.query(query, new BeanPropertyRowMapper(Friend.class),id);
		for(int i=0;i<s.size();i++) {
			if(s.get(i).getId()==sid) {
				model.addAttribute("msg","You are already friends");
				return "home";
			}
		}
		template.update("insert into request(sender,accepter) values(?,?)",id,sid);
		
		return "home";
	}
	
	@RequestMapping(path = "/friends/{id}")
	public String friends(@PathVariable("id") int id, Model model) {
		String query = "select * from friend where id=?";
		List<Friend> s=template.query(query, new BeanPropertyRowMapper(Friend.class),id);
		List<User> list=new ArrayList<>();
		for(int i=0;i<s.size();i++) {
			List<User> l=template.query("select * from user where id=?", new BeanPropertyRowMapper(User.class),s.get(i).getSid());
			list.add(l.get(0));
			System.out.println(s.get(i).getSid());
		}
		query = "select * from friend where sid=?";
		s=template.query(query, new BeanPropertyRowMapper(Friend.class),id);
		for(int i=0;i<s.size();i++) {
			List<User> l=template.query("select * from user where id=?", new BeanPropertyRowMapper(User.class),s.get(i).getId());
			list.add(l.get(0));
			System.out.println(s.get(i).getId());
		}
		model.addAttribute("list",list);
		return "friends";
	}
	
	@RequestMapping(path = "/requests/{id}")
	public String requests(@PathVariable("id") int id, Model model) {
		String query = "select * from request where accepter=?";
		List<Request> s=template.query(query, new BeanPropertyRowMapper(Request.class),id);
		List<User> list=new ArrayList<>();
		for(int i=0;i<s.size();i++) {
			List<User> l=template.query("select * from user where id=?", new BeanPropertyRowMapper(User.class),s.get(i).getSender());
			list.add(l.get(0));
		}
		model.addAttribute("list",list);
		return "request";
	}
	
	@RequestMapping(path = "/remove/{id}/{sid}")
	public String remove(@PathVariable("id") int id,@PathVariable("sid") int sid,Model model) {
		String query = "select * from user where id=?";
		List<User> lu = template.query(query, new BeanPropertyRowMapper(User.class), id);
		model.addAttribute("gender",lu.get(0).getGender());
		String gender;
		if(lu.get(0).getGender().equals("Male")) {
			gender="Female";
		}
		else {
			gender="Male";
		}
		query = "select * from user where gender=?";
		List<User> t = template.query(query, new BeanPropertyRowMapper(User.class),gender);
		model.addAttribute("list",t);
		model.addAttribute("id",id);
		query="delete from friend where id=? and sid=?";
		template.update(query,id,sid);
		template.update(query,sid,id);
		
		return "home";
	}
	
	@RequestMapping(path = "/delete/{id}/{sid}")
	public String delete(@PathVariable("id") int id,@PathVariable("sid") int sid,Model model) {
		String query = "select * from user where id=?";
		List<User> lu = template.query(query, new BeanPropertyRowMapper(User.class), id);
		model.addAttribute("gender",lu.get(0).getGender());
		String gender;
		if(lu.get(0).getGender().equals("Male")) {
			gender="Female";
		}
		else {
			gender="Male";
		}
		query = "select * from user where gender=?";
		List<User> t = template.query(query, new BeanPropertyRowMapper(User.class),gender);
		model.addAttribute("list",t);
		model.addAttribute("id",id);
		query="delete from request where sender=? and accepter=?";
		template.update(query,id,sid);
		template.update(query,sid,id);
		
		return "home";
	}
	
	@RequestMapping(path = "/accept/{id}/{sid}")
	public String accept(@PathVariable("id") int id,@PathVariable("sid") int sid,Model model) {
		String query = "select * from user where id=?";
		List<User> lu = template.query(query, new BeanPropertyRowMapper(User.class), id);
		model.addAttribute("gender",lu.get(0).getGender());
		String gender;
		if(lu.get(0).getGender().equals("Male")) {
			gender="Female";
		}
		else {
			gender="Male";
		}
		query="delete from request where sender=? and accepter=?";
		template.update(query,id,sid);
		template.update(query,sid,id);
		query = "select * from user where gender=?";
		List<User> t = template.query(query, new BeanPropertyRowMapper(User.class),gender);
		model.addAttribute("list",t);
		model.addAttribute("id",id);
		query="insert into friend (id,sid) values(?,?)";
		template.update(query,id,sid);
		
		return "home";
	}
	
	@RequestMapping(path = "/profile/{id}")
	public String profile(@PathVariable("id") int id,Model model) {
		String query = "select * from user where id=?";
		List<User> lu = template.query(query, new BeanPropertyRowMapper(User.class), id);
		model.addAttribute("User",lu.get(0));
		return "profile";
	}
}
