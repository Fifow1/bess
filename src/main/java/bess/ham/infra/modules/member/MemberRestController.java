package bess.ham.infra.modules.member;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@RequestMapping("/rest/member")
public class MemberRestController {
	

		@Autowired
		MemberServiceImpl service;
		
		@RequestMapping(value = "", method = RequestMethod.GET)
//		@GetMapping("")
		public List<Member> selectList(MemberVo vo) throws Exception {
			List<Member> list = service.selectList(vo);
			return list;
		}
		

		@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//		@GetMapping("/{seq}")
		public Member selectOne(@PathVariable String seq, MemberVo vo) throws Exception {
			vo.setShSeq(seq);
			Member item = service.selectOne(vo);
			return item;
		}
		

		@RequestMapping(value = "", method = RequestMethod.POST)
//		@PostMapping("")
		public String insert(@RequestBody Member dto) throws Exception {
			service.insert(dto);
			return dto.getSeq();
		}
		
		
		@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
//		@PatchMapping("/{seq}")
		public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
			dto.setSeq(seq);
			service.update(dto);
		}
		
		
	}
