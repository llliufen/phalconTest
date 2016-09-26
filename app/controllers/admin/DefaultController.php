<?php
namespace MyApp\Controllers\Admin;

use MyApp\Controllers\Admin\BaseController;
use MyApp\Library\Paginator;
use MyApp\Models\News;

class DefaultController extends BaseController
{
    public function indexAction()
    {
        //模糊索搜
        if ($this->request->get('submit')) {
            $new       = new News();
            $newstitle = $this->request->getPost('newstitle');
            $news      = $new->select('*', ['title' => $newstitle]);

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
    public function newsaddAction()
    {
        $request = $this->request;
        //名称和内容不能为空
        if (!empty($request->getPost('title')) && !empty($request->getPost('content'))) {
            $titles   = $request->getPost('title');
            $contents = $request->getPost('content');
            $this->db->insert('news', [
                'title'   => $titles,
                'time'    => time(),
                'content' => $contents,
            ]);
            //跳转到新闻列表首页
            return $this->response->redirect('/admin/default/index');
        } else {
            echo "不能为空！";
        }
    }

    public function newseditAction()
    {
        //获取新闻标题以及新闻内容
        $id   = $this->request->get('id');
        $new  = new News();
        $news = $new->select('*', ['id' => $id]);
        //点击提交修改新闻
        if ($this->request->getPost('sub')) {
            $request  = $this->request;
            $titles   = $request->getPost('title');
            $id       = $request->getPost('id');
            $contents = $request->getPost('content');
            $this->db->update('news', [
                'title'   => $titles,
                'content' => $contents,
                'time'    => time(),
            ], ['id' => $id]);
            //跳转到新闻列表首页
            return $this->response->redirect('/admin/default/index');
        }
        $this->view->setVar('news', $news);
    }
    public function deleteAction()
    {
        //删除勾选的新闻
        $request = $this->request;
        $id      = $request->getPost('deleteid');
        $where   = ['id' => $id];
        $this->db->delete('news', $where);
        //跳转到新闻列表首页
        return $this->response->redirect('/admin/default/index');

    }

}
