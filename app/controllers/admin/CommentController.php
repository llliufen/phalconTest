<?php
namespace MyApp\Controllers\Admin;

use MyApp\Controllers\Admin\BaseController;
use MyApp\Library\Paginator;
use MyApp\Models\Comment;

class CommentController extends BaseController
{
/*
 * 后台评论列表首页
 * 模糊搜索以及分页
 */
    public function indexAction()
    {
        //模糊搜索
        if ($this->request->get('submit')) {
            $data      = new Comment();
            $newstitle = $this->request->getPost('newstitle');
            $comment   = $data->select('*', ['commentTitle[~]' => $newstitle]);
            $this->view->setVar('comment', $comment);
        } else {
            $data    = new Comment();
            $comment = $data->select("*");
            $this->view->setVar('comment', $comment);
            $currentPage    = $this->request->get('page', 'int', 1); //当前页
            $pageSize       = 10; //每页个数
            $offset         = $pageSize * ($currentPage - 1); //偏移量
            $where["LIMIT"] = [$offset, $pageSize];
            $count          = $data->count(); //查询总数
            $page           = new Paginator($count, $pageSize); //新建分页对象
            $this->view->setVar('page', $page->showpage()); //分页显示的内容
        }
    }
    /*
     * 删除评论功能并跳转到评论列表首页
     */
    public function commentdeleteAction()
    {
        $comment = new Comment();
        $request = $this->request;
        $id      = $request->getPost('deleteid');
        $where   = ['id' => $id];
        $comment->delete($where);
        return $this->response->redirect('/admin/comment/index');
    }

}
