<%--
  Created by IntelliJ IDEA.
  User: papua
  Date: 11/21/2020
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/WEB-INF/header.jsp" %>
<%@ include file="/WEB-INF/navbar.jsp" %>
    <div class="py-4 body-content">
        <section class="welcome-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="caption text-center  mt-0">
                            <h2 class="welcome-text text-white">Ghenesis Blog</h2>
                            <p class="small-welcome-text" >We provide a place to find solutions to your problems by asking the wider community</p>
        
                            <a href="/ghenesis/login.jsp" class="btn btn-second">Login</a>
        
                            <a href="/ghenesis/register.jsp" class="btn btn-second">Registration</a>
        
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <style>
            .welcome-text {
                font-size: 50px;
                font-weight: 900;
                line-height: 1.2;
                letter-spacing: 1px;
                position: relative;
                display: inline-block;
                text-transform: capitalize;
            }
                .welcome-text::after {
                    content: "";
                    background-color: #7932D5;
                    height: 1px;
                    width: 100%;
                    display: inline-block;
                    right: 0;
                    margin-top: 30px;
                }
            .small-welcome-text {
                font-family: 'Raleway', sans-serif;
                font-size: 20px;
                display: inline-block;
                padding: 35px 300px;
                color: white;
            }
            a.btn.btn-prim {
                color: #FF4655;
            }
                a.btn.btn-prim:hover {
                    color: white;
                }
            a.btn.btn-second:hover {
                color: #7932D5;
            }
            a.btn.btn-second {
                color: white;
            }
            .btn.btn-prim {
                border-color: #FF4655;
                color: #FF4655;
                border-radius: 0px;
            }
                .btn.btn-prim:hover {
                    color: white;
                    background-color: #FF4655;
                    cursor: pointer;
                    transition: 0.5s ease-in-out;
                }
            .btn.btn-second {
                border-color: #7932D5;
                background-color: #7932D5;
                color: white;
                border-radius: 0px;
            }
                .btn.btn-second:hover {
                    color: #7932D5;
                    background-color: transparent;
                    cursor: pointer;
                    transition: 0.5s ease-in-out;
                }
            .link-button .big-button {
                font-size: 16px;
                padding: 10px 25px;
                font-weight: 400;
                letter-spacing: 2px;
                text-transform: uppercase;
            }
            .link-button {
                padding-top: 25px;
            }
            #navbar-site .container #navbarCollapse .navbar-nav .nav-item .nav-link {
                display: block;
                padding: 27px 20px;
                font-size: 14px;
                color: white;
                position: relative;
                font-weight: 700;
            }
                #navbar-site .container #navbarCollapse .navbar-nav .nav-item .nav-link:hover::after, #dropdown:hover {
                    border-bottom: 2px solid #FF4655;
                }
                #navbar-site .container #navbarCollapse .navbar-nav .nav-item .nav-link::after {
                    content: '';
                    display: block;
                    height: 1px;
                    width: 100%;
                    background: transparent;
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    right: 0;
                }
            #navbar-site {
                padding: 0px 0px;
            }
                #navbar-site .container #navbar-button .navbar-nav .nav-item a {
                    border-radius: 2px;
                    font-size: 14px;
                    font-weight: 700;
                    padding: 8px 30px;
                }
            .welcome-section {
                background-image: url('public/backround.png');
                position: relative;
                width: 100%;
                padding-top: 100px;
                background-size: cover;
                z-index: 5;
            }
                .welcome-section::before {
                    content: '';
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    background: rgba(0,0,0,0.45);
                    left: 0;
                    top: 0;
                    z-index: -1;
                }
            .main {
                position: relative;
            }
            .caption {
                padding: 128px 0;
            }
            .register {
                padding: 150px 0;
            }
            .register-header {
                font-size: 20px;
                background-color: #FF4655;
                color: white;
                font-weight: 600;
                border-top-left-radius: 10px !important;
                border-top-right-radius: 10px !important;
            }
            .register-card {
                border-radius: 10px;
                box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
            }
            .form-modif {
                background-color: #e5e5e5;
                border-color: #e5e5e5;
                height: 46px;
            }
                .form-modif:focus {
                    background-color: #e5e5e5;
                    border-color: #e5e5e5;
                }
            .register-card .card-body label {
                font-weight: 600;
            }
            .register-card .card-body form > div {
                margin: 30px 0;
            }
            #profile_pic {
                padding: 3px;
                opacity: 0;
                position: absolute;
                z-index: 5;
            }
            .image-preview {
                width: 200px;
                height: 200px;
                border-radius: 100%;
                border: 2px dashed #e5e5e5;
                margin-top: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-weight: bold;
                position: relative;
                margin: auto;
            }
            .image-preview-photo {
                display: none;
                width: 100%;
                border-radius: 100%;
                height: 100%;
            }
            .image-preview-text {
                border: 1px solid #FF4655;
                padding: 11px;
                color: #FF4655;
            }
            #search-navbar {
                width: 20rem;
                padding: 0.5rem;
            }
            #dropdown-account {
                list-style-type: none;
            }
                #dropdown-account > a {
                    color: white;
                }
            #profile-pic {
                width: 50px;
                height: 50px;
                border-radius: 100%;
                margin: 10px;
            }
            .dropdown-menu {
                background-color: #111111 !important;
            }
            .dropdown-item {
                color: white !important;
                cursor: pointer;
            }
                .dropdown-item:hover {
                    color: #292929 !important;
                }
            .question-section {
                padding-top: 150px;
            }
            .question-summary {
                padding: 20px 35px;
                border-bottom: 1px solid rgb(228, 230, 232);
                position: relative;
            }
                .question-summary::after {
                    content: '';
                    display: block;
                    width: 1px;
                    height: 100%;
                    position: absolute;
                    left: 0;
                    top: 0;
                    bottom: 0;
                }
                .question-summary:hover::after {
                    background-color: #e5e5e5;
                    border-left: 2px solid #FF4655;
                }
            .question-description .question-summary:hover {
                background-color: #e5e5e5;
            }
            .question-description .question .question-title {
                color: rgb(36, 39, 41) !important;
                font-weight: initial;
                font-size: 18px;
            }
            .big-title {
                float: left;
                color: #FF4655;
                padding-right: 40px;
            }
                .big-title h2 {
                    font-size: 50px;
                }
            .question-description .question-profile {
                justify-content: flex-end;
                padding-bottom: 0px;
                display: flex;
            }
            .question .question-title {
                font-weight: 600;
                font-size: 20px;
                color: rgb(0, 119, 204);
            }
            .question-wrapper {
                width: 100%;
            }
            .question-time {
                text-align: end;
                font-size: 13px;
            }
            .question-list {
                border-top: 1px solid rgb(228, 230, 232);
                margin-bottom: 40px;
            }
            .question-wrapper > h2 {
                margin-bottom: 40px;
                color: rgb(60, 65, 70);
            }
            .pagination {
                display: flex;
                justify-content: center;
            }
            .page-item.active .page-link {
                background-color: #FF4655;
                border-color: transparent;
            }
            .page-link {
                color: #FF4655;
                border: 1px solid transparent;
            }
                .page-link:hover {
                    background-color: #e5e5e5;
                    color: white;
                    border: 1px solid transparent;
                }
            .page-item.disabled .page-link {
                color: #FF4655;
                border-color: transparent;
            }
            .question-header {
                display: flex;
                justify-content: space-between;
                margin-bottom: 10px;
            }
            .question-profile {
                display: flex;
                justify-content: left;
                padding-bottom: 30px;
            }
            .question-information {
                border-bottom: 1px solid rgb(228, 230, 232);
            }
            .question-description {
                padding: 20px;
            }
            .question-desc > p:first-child {
                color: rgb(36, 39, 41) !important;
                margin-bottom: 100px;
            }
            .question-profile > img {
                border-radius: 100%;
                margin-right: 10px;
            }
            .question-profile > p {
                margin: auto 0;
                color: rgb(0, 119, 204);
            }
            .my-answer {
                padding: 30px 0;
            }
                .my-answer h3 {
                    font-size: 17px;
                    font-weight: 600;
                }
                .my-answer > textarea {
                    width: 100%;
                    margin: 30px 0;
                }
            .answer-link a, .answer-link button {
                color: #292929;
                font-size: 15px;
                font-weight: 600;
                padding: 0 10px;
            }

        </style>    
