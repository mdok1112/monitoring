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
                <div class="pt-3 pb-2 mb-3 border-bottom row justify-content-between">
                    <h1 class="col-sm-3 h3">작업 진행 상태 조회</h1>
                    <div class="col-sm-2">
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
                <div class="">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">순번</th>
                                <th scope="col">SECTION</th>
                                <th scope="col">KEY</th>
                                <th scope="col">VALUE</th>
                                <th scope="col">DESCRIPTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">0001</th>
                                <td>BUSI_CD</td>
                                <td>01</td>
                                <td>EDMS</td>
                                <td>EDMS 업무</td>
                            </tr>
                            <tr>
                                <th scope="row">002</th>
                                <td>BUSI_CD</td>
                                <td>02</td>
                                <td>NAKS</td>
                                <td>NAKS 업무</td>
                            </tr>
                            <tr>
                                <th scope="row">003</th>
                                <td>BUSI_CD</td>
                                <td>03</td>
                                <td>LPC</td>
                                <td>LPC 업무</td>
                            </tr>
                            <tr>
                                <th scope="row">004</th>
                                <td>BUSI_CD</td>
                                <td>04</td>
                                <td>SOS</td>
                                <td>SOS 업무</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <button class="btn btn-primary">코드 추가</button>
                    <button class="btn btn-primary">코드 수정</button>
                    <button class="btn btn-primary">코드 삭제</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
