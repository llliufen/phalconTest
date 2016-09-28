<?php
namespace MyApp\Controllers\Admin;

use MyApp\Controllers\Admin\BaseController;
use MyApp\Library\Paginator;
use MyApp\Models\Comment;
use MyApp\Models\News;

class DefaultController extends BaseController
{
    /*
     * 后台新闻列表首页
     * 模糊搜索以及分页功能
     */
    public function indexAction()
    {
        //模糊搜索
        if ($this->request->get('submit')) {
            $new       = new News();
            $newstitle = $this->request->getPost('newstitle');
            $news      = $new->select('*', ['newsTitle[~]' => $newstitle]);
            $this->view->setVar('news', $news);
        } else {
            $new            = new News();
            $currentPage    = $this->request->get('page', 'int', 1); //当前页
            $pageSize       = 10; //每页个数
            $offset         = $pageSize * ($currentPage - 1); //偏移量
            $where["LIMIT"] = [$offset, $pageSize];
            $count          = $new->count(); //查询总数
            $news           = $new->select('*', $where);
            $page           = new Paginator($count, $pageSize); //新建分页对象
            $this->view->setVar('news', $news);
            $this->view->setVar('page', $page->showpage()); //分页显示的内容
        }
    }
    /*
     * 添加新闻功能，判断标题和内容不能为空
     */
    public function newsaddAction()
    {
        $request = $this->request;
        //名称和内容不能为空
        if (!empty($request->getPost('title')) && !empty($request->getPost('content'))) {
            $titles   = $request->getPost('title');
            $contents = $request->getPost('content');
            $this->db->insert('news', [
                'newsTitle'   => $titles,
                'newsTime'    => time(),
                'newsContent' => $contents,
            ]);
            //跳转到新闻列表首页
            return $this->response->redirect('/admin/default/index');
        } else {
            echo "不能为空！";
        }
    }
/*
 * 编辑新闻功能，获取对应id，修改新闻标题和内容
 */
    public function newseditAction()
    {
        //获取新闻标题以及新闻内容
        $id   = $this->request->get('id');
        $new  = new News();
        $news = $new->select('*', ['id' => $id]);
        //点击提交修改新闻
        if ($this->request->getPost('sub')) {
            $data     = new News();
            $request  = $this->request;
            $titles   = $request->getPost('title');
            $id       = $request->getPost('id');
            $contents = $request->getPost('content');
            $data->update([
                'newsTitle'   => $titles,
                'newsTime'    => time(),
                'newsContent' => $contents,
            ], ['id' => $id]);
            //跳转到新闻列表首页
            return $this->response->redirect('/admin/default/index');
        }
        $this->view->setVar('news', $news);
    }
    /*
     * 删除新闻功能，删除新闻时将对应的新闻评论一并删除
     */
    public function deleteAction()
    {
        //删除勾选的新闻
        $news    = new News();
        $comment = new Comment();
        $request = $this->request;
        $id      = $request->getPost('deleteid');
        $where   = ['id' => $id];
        $news->delete($where);
        $comment->delete(['newsId' => $id]);
        //跳转到新闻列表首页
        return $this->response->redirect('/admin/default/index');

    }

}
