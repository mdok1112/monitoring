<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <title>누적 작업 현황 조회</title>

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
            var confirm_line = new Chart(document.getElementById('confirm-line').getContext('2d'), {
                type: 'line',
                data: {
                    labels: ['Red', 'Blue', 'Yellow'],
                    datasets: [{
                            label: '마스킹 대상 확인',
                            data: [10, 30, 20],
                            backgroundColor: [
                                'rgba(255, 255, 255, 0)',
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(255, 99, 132, 1)',
                                'rgba(255, 99, 132, 1)',
                            ],
                            borderWidth: 1.5
                        },
                        {
                            label: '다운로드',
                            data: [40, 20, 60],
                            backgroundColor: [
                                'rgba(255, 255, 255, 0)',
                            ],
                            borderColor: [
                                'rgba(54, 162, 235, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(54, 162, 235, 1)',
                            ],
                            borderWidth: 1.5
                        }, {
                            label: '전체 대상',
                            data: [100, 100, 100],
                            backgroundColor: [
                                'rgba(255, 255, 255, 0)',
                            ],
                            borderColor: [
                                'rgba(255, 206, 86, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(255, 206, 86, 1)',
                            ],
                            borderWidth: 1.5
                        }
                    ]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

            var proccess_line = new Chart(document.getElementById('proccess-line').getContext('2d'), {
                type: 'line',
                data: {
                    labels: ['data', 'data', 'data', 'data', 'data', 'data'],
                    datasets: [{
                        label: '사용자 검증',
                        data: [12, 19, 30, 40, 50, 60],
                        backgroundColor: [
                            'rgba(255, 255, 255, 0)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(255, 99, 132, 1)',
                            'rgba(255, 99, 132, 1)',
                            'rgba(255, 99, 132, 1)',
                            'rgba(255, 99, 132, 1)',
                            'rgba(255, 99, 132, 1)',
                        ],
                        borderWidth: 1.5
                    }, {
                        label: '업로드',
                        data: [12, 19, 39, 20, 40, 30],
                        backgroundColor: [
                            'rgba(255, 255, 255, 0)',
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(54, 162, 235, 1)',
                        ],
                        borderWidth: 1.5
                    }, {
                        label: '마스킹 완료',
                        data: [100, 100, 100, 100, 100, 100],
                        backgroundColor: [
                            'rgba(255, 255, 255, 0)',
                        ],
                        borderColor: [
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 206, 86, 1)',
                        ],
                        borderWidth: 1.5
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
            
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
                    <h1 class="h3">누적 작업 현황</h1>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <label class="mr-sm-2 d-block" for="inlineFormCustomSelect">기간 설정</label>
                        <div class="row">
                            <div class="input-group d-inline-block col-sm-5">
                                <input type='text' class="form-control w-100" id="before" />
                            </div>
                            <span class="col-xxs-2 text-center">~</span>
                            <div class="input-group d-inline-block col-sm-5">
                                <input type='text' class="form-control w-100" id="after" />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <label class="mr-sm-2" for="inlineFormCustomSelect">업무 유형</label>
                        <select class="custom-select">
                            <option selected>전체</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <label class="mr-sm-2" for="inlineFormCustomSelect">마스킹 유형</label>
                        <select class="custom-select">
                            <option selected>전체</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label class="mr-sm-2" for="inlineFormCustomSelect"></label>
                        <button class="btn btn-dark w-100">
                            <i class="fas fa-search"></i>
                            <span>Search</span>
                        </button>
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-sm-6">
                        <canvas id="confirm-line"></canvas>
                    </div>
                    <div class="col-sm-6">
                        <canvas id="proccess-line"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>