<?php
namespace MyApp\Controllers\Front;

use MyApp\Controllers\Front\BaseController;
use MyApp\Library\Paginator;
use MyApp\Models\Comment;
use MyApp\Models\News;

class DefaultController extends BaseController
{
/*
 * 新闻管理系统首页列表，分页功能
 */
    public function indexAction()
    {
        $data           = new News();
        $currentPage    = $this->request->get('page', 'int', 1); //当前页
        $pageSize       = 10; //每页个数
        $offset         = $pageSize * ($currentPage - 1); //偏移量
        $where["LIMIT"] = [$offset, $pageSize];
        $count          = $data->count(); //查询总数
        $news           = $data->select('*', $where);
        $page           = new Paginator($count, $pageSize); //新建分页对象
        $this->view->setVar('news', $news);
        $this->view->setVar('page', $page->showpage()); //分页显示的内容

    }
/*
 * 点击进入详情界面，获取对应新闻对应的评论并分页
 */
    public function newslistAction()
    {
        //获取新闻详情
        $id   = $this->request->get('id');
        $new  = new News();
        $news = $new->select('*', ['id' => $id]);
        $this->view->setVar('news', $news);

        $data    = new Comment();
        $comment = $data->select('*', ['newsId' => $id]);

        $currentPage    = $this->request->get('page', 'int', 1); //当前页
        $pageSize       = 5; //每页个数
        $offset         = $pageSize * ($currentPage - 1); //偏移量
        $where["LIMIT"] = [$offset, $pageSize];
        $count          = count($comment); //查询总数
        $page           = new Paginator($count, $pageSize); //新建分页对象
        $this->view->setVar('comment', $comment);
        $this->view->setVar('page', $page->showpage()); //分页显示的内容

    }
/*
 * 新闻详情界面可以进行评论的添加
 */
    public function commentaddAction()
    {
        $request = $this->request;
        if (!empty($request->getPost('title')) && !empty($request->getPost('content'))) {
            $titles   = $request->getPost('title');
            $newsid   = $request->getPost('id');
            $contents = $request->getPost('content');
            $data     = new Comment();
            $data->insert([
                'commentTitle'   => $titles,
                'commentTime'    => time(),
                'newsId'         => $newsid,
                'commentContent' => $contents,
            ]);
            //跳转到详情页面
            return $this->response->redirect('/front/default/index');
        }
    }
}
