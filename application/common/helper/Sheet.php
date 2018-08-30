<?php

namespace app\common\helper;

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

/**
 * author: hollow
 * email: hollow@foxmail.com
 */
class Sheet {


    /**
     *导出excel表格
     * @param $fileName
     * @param $headArr
     * @param $data
     * @param array $imgs
     * @return array
     * @throws \PhpOffice\PhpSpreadsheet\Exception
     * @throws \PhpOffice\PhpSpreadsheet\Writer\Exception
     */
    function getExcel($fileName, $headArr, $data, $imgs = array())
    {
        //对数据进行检验
        if (empty($data)) {
            return array('code' => '0', 'msg' => '没有要导出的数据', 'data' => '');
        }
        //检查文件名
        if (empty($fileName)) {
            exit;
        }

        $date = date("YmdHis", time());
        $fileName .= "_{$date}.xlsx";

        $spreadsheet = new Spreadsheet();
        //设置工作簿的当前活动页
        $spreadsheet->setActiveSheetIndex(0);

        $active_sheet = $spreadsheet->getActiveSheet();

        //第一列设置报表列头
        $key = ord("A");
        foreach ($headArr as $k => $v) {
            $axis = chr($key+$k).'1';
            $active_sheet->setCellValue($axis, $v);
            $active_sheet->getStyle($axis)->getFont()->setBold(true);
            $active_sheet->getStyle($axis)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $spreadsheet->getActiveSheet()->getColumnDimension(chr($key+$k))->setWidth(20);
        }

        $column = 2;
        foreach ($data as $index => $rows) { //行写入
            $row = ord("A");
            if(is_object($rows)){
                $rows = $rows->toArray();
            }
            foreach ($rows as $k => $value) {// 列写入
                $axis = chr($row).(int)($column+$index);
                $active_sheet->setCellValue($axis, $value);
                $active_sheet->getStyle($axis)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
                $row+=1;
            }
        }

        $spreadsheet->setActiveSheetIndex(0);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'.$fileName.'"');
        header('Cache-Control: max-age=0');
        header('Cache-Control: max-age=1');

        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output'); //文件通过浏览器下载
        exit;
    }
}