package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;


public interface BlogDao {
	List<Blog> queryByPage(BlogVo bv, RowBounds rb);//���ͷ�ҳ��ѯ
	List<Blog> queryAll();				//��ѯ���в���
	Blog queryById(int blog_id);		//���ݲ���Id��ѯ����
	int getCount(BlogVo bv);   			//����������ѯ������
	boolean insertBlog(Blog blog);		//��������
	boolean updateBlog(Blog blog);		//�޸Ĳ���
	boolean deleteBlog(int id);			//ɾ������
}
