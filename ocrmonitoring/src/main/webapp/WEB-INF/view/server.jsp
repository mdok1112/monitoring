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
                <div class="pt-3 pb-2 mb-3 border-bottom row justify-content-between">
                    <h1 class="col-sm-4 h3">작업 진행 상태 조회</h1>
                    <button class="col-sm-1 btn btn-dark mx-3">새로 고침</button>
                </div>
                <div class="mx-3">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">순번</th>
                                <th scope="col">서버 IP</th>
                                <th scope="col">CPU 사용률</th>
                                <th scope="col">메모리 사용률</th>
                                <th scope="col">HDD 사용률</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">01</th>
                                <td>10.61.14.238</td>
                                <td>87%</td>
                                <td>29%</td>
                                <td>20%</td>
                            </tr>
                            <tr>
                                <th scope="row">02</th>
                                <td>10.61.14.239</td>
                                <td>43%</td>
                                <td>54%</td>
                                <td>6%</td>
                            </tr>
                            <tr>
                                <th scope="row">03</th>
                                <td>10.61.14.240</td>
                                <td>27%</td>
                                <td>46%</td>
                                <td>5%</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pt-3 mx-3">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">순번</th>
                                <th scope="col">프로그램</th>
                                <th scope="col">서버 IP</th>
                                <th scope="col">실행 요청</th>
                                <th scope="col">상태</th>
                                <th scope="col">최종 응답시간</th>
                                <th scope="col">비고</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">001</th>
                                <td>다운로드 Agent</td>
                                <td>10.61.14.238</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary">정상</td>
                            </tr>
                            <tr>
                                <th scope="row">002</th>
                                <td>다운로드 Agent</td>
                                <td>10.61.14.239</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary" class="text-primary">정상</td>
                            </tr>
                            <tr>
                                <th scope="row">003</th>
                                <td>다운로드 Agent</td>
                                <td>10.61.14.240</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary">정상</td>
                            </tr>
                            <tr>
                                <th scope="row">004</th>
                                <td>업로드 Agent</td>
                                <td>10.61.14.238</td>
                                <td class="text-danger">중지 요청</td>
                                <td class="text-danger">중지됨</td>
                                <td class="text-danger">-----------------------</td>
                                <td class="text-danger">Agent 미실행</td>
                            </tr>
                            <tr>
                                <th scope="row">005</th>
                                <td>업로드 Agent</td>
                                <td>10.61.14.239</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-danger">2019-02-28 09:34:10</td>
                                <td class="text-danger">Agent 미실행</td>
                            </tr>
                            <tr>
                                <th scope="row">006</th>
                                <td>업로드 Agent</td>
                                <td>10.61.14.240</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-danger">2019-02-28 09:34:10</td>
                                <td class="text-danger">Agent 미실행</td>
                            </tr>
                            <tr>
                                <th scope="row">007</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.238</td>
                                <td class="text-primary" class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary">정상</td>
                            </tr>
                            <tr>
                                <th scope="row">008</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.239</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary">정상</td>
                            </tr>
                            <tr>
                                <th scope="row">009</th>
                                <td>마스킹 Agent</td>
                                <td>10.61.14.240</td>
                                <td class="text-primary">시작 요청</td>
                                <td class="text-primary">시작됨</td>
                                <td class="text-primary">2019-02-28 09:34:10</td>
                                <td class="text-primary">정상</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="float-left">
                    <button class="btn btn-primary">프로그램 추가</button>
                    <button class="btn btn-primary">프로그램 삭제</button>
                </div>
                <div class="float-right">
                    <button class="btn btn-primary">START</button>
                    <button class="btn btn-primary">STOP</button>
                    <button class="btn btn-primary">RESET</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
