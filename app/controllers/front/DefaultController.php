<?php
namespace MyApp\Controllers\Front;

use MyApp\Controllers\Front\BaseController;
use MyApp\Library\Paginator;
use MyApp\Models\News;

class DefaultController extends BaseController
{

    public function indexAction()
    {

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

    public function newslistAction()
    {
        //获取新闻详情
        $id   = $this->request->get('id');
        $new  = new News();
        $news = $new->select('*', ['id' => $id]);
        $this->view->setVar('news', $news);

        $request = $this->request;
        if (!empty($request->getPost('title')) && !empty($request->getPost('content'))) {
            $titles   = $request->getPost('title');
            $contents = $request->getPost('content');
            $this->db->insert('information', [
                'title'   => $titles,
                'time'    => time(),
                'newsId'  => $id,
                'content' => $contents,
            ]);

        }
    }
}
