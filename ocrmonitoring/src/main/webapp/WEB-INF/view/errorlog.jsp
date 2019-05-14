<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <title>작업 진행 상태 조회</title>

    <script src="/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/resources/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <script src="/resources/js/Chart.min.js"></script>
    <script src="/resources/js/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/Chart.min.css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script>
        $(document).ready(function() {
            $("#before").datepicker();
            $("#after").datepicker();
        });
    </script>
    <style>
        html,
        body {
            width: 100%;
            height: 100%;
        }

        .page-wrapper {
            width: 100%;
            height: 100%;
        }
        .w-45 {
            width: 45% !important;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>마스킹 작업 현황</span>
                    </h6>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="dashboard">
                                <span>전체 현황 (Dashboard)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="accumulate">
                                <span>누적 작업 현황 조회</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span>일일 작업 현황 조회</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="detail-status">
                                <span>작업 현황 상세 조회</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="status">
                                <span>작업 진행 상태 조회</span>
                            </a>
                        </li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>마스킹 시스템 관리</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="server">
                                <span>서버 상태/엔진 동작 관리</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="worklog">
                                <span>작업 로그 조회</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="errorlog">
                                <span>오류 로그 조회</span>
                            </a>
                        </li>
                    </ul>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>환경 설정</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="settingscode">
                                <span>환경 설정 코드관리</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="workercode">
                                <span>검증 작업자 코드 관리</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="col-md-10">
                <div class="pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h3">작업 진행 상태 조회</h1>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <label class="mr-sm-2 d-block" for="">기간 설정</label>
                        <div class="row px-0 justify-content-between">
                            <div class="input-group d-inline-block col-sm-5">
                                <input type='text' class="form-control w-100" id="before" />
                            </div>
                            <span class="col-xxs-2 mx-0 text-center">~</span>
                            <div class="input-group d-inline-block col-sm-5 col-sm-6">
                                <input type='text' class="form-control w-100" id="after" />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <label class="mr-sm-2" for="">작업 구분</label>
                        <select class="custom-select">
                            <option selected>전체</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="col-sm-2 my-auto">
                        <div class="form-group">
                            <label for="exampleInputPassword1">Element ID</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="ElementID">
                        </div>
                    </div>
                    <div class="col-sm-2 my-auto">
                        <div class="form-group">
                            <label for="exampleInputPassword1">검색어</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="검색어">
                        </div>
                    </div>
                    <div class="col-sm-2 my-auto">
                        <button class="btn btn-dark">
                            <i class="fas fa-save"></i>
                            <span>엑셀 저장</span>
                        </button>
                        <button class="btn btn-dark">
                            <i class="fas fa-search"></i>
                            <span>Search</span>
                        </button>
                    </div>
                </div>
                <div class="m-3">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">선택</th>
                                <th scope="col">작업 구분</th>
                                <th scope="col">서버 IP</th>
                                <th scope="col">로그 일시</th>
                                <th scope="col">업무 구분</th>
                                <th scope="col">ELEMENTID</th>
                                <th scope="col">로그 내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">001</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.240</td>
                                <td>2019-02-28 09:25:49 42973</td>
                                <td>01</td>
                                <td>201812...</td>
                                <td>ERROR_XX_00_result GetResult() is Null --> Process Restart.....
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">002</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.240</td>
                                <td>2019-02-28 09:25:49 42973</td>
                                <td>02</td>
                                <td>201812...</td>
                                <td>ERROR_XX_00_result GetResult() is Null --> Process Restart.....
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">003</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.240</td>
                                <td>2019-02-28 09:25:49 42973</td>
                                <td>03</td>
                                <td>201812...</td>
                                <td>ERROR_XX_00_result GetResult() is Null --> Process Restart.....
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">004</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.240</td>
                                <td>2019-02-28 09:25:49 42973</td>
                                <td>04</td>
                                <td>201812...</td>
                                <td>ERROR_XX_00_result GetResult() is Null --> Process Restart.....
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <nav class="mx-auto">
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</body>

</html>
