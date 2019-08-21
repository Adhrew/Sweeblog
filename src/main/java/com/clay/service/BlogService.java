package com.clay.service;

import java.util.List;




import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;

public interface BlogService {
	PagePojo<Blog> queryByPage(BlogVo bv, int page,int size);//���ͷ�ҳ��ѯ
	List<Blog> queryAll();				//��ѯ���в���
	Blog queryById(int blog_id);		//���ݲ���Id��ѯ����
	int getCount(BlogVo bv);
	boolean insertBlog(Blog blog);		//��������
	boolean updateBlog(Blog blog);		//�޸Ĳ���
	boolean deleteBlog(int id);			//ɾ������
	boolean writeBlog(Blog blog)throws Exception; //�����ͼӻ���
	
	
}
