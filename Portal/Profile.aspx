<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profile.aspx.vb" Inherits="Portal.profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            background-color: #333;
            width: 250px;
            padding-top: 20px;
            transition: width 0.3s ease; 
        }

        .sidebar.active {
            width: 0;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: #f1f1f1;
            display: block;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .hamburger {
            position: fixed;
            top: 20px;
            left: 20px;
            cursor: pointer;
            z-index: 999; 
            color: white; 
            padding: 10px;
        }

        .hamburger span {
            display: block;
            width: 30px;
            height: 5px;
            background: white;
            margin: 5px 0;
            transition: 0.4s;
        }

       
        .content {
            flex: 1;
            padding: 20px;
            text-align: center;
        }

        .content h2 {
            color: #333;
        }

        .content img {
            width: 150px;
            height: auto;
            margin: 20px auto;
            display: block;
        }

        .content label {
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
            display: block;
        }

        .profile-info {
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .sidebar.active {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="sidebar" id="sidebar">
                <br />
                <br />
                <br />
                <a href="profile.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Profile</a>
                <a href="CustomerServiceRequest.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Service Request</a>
                <a href="CustomerComplaint.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Complaint</a>
                <a href="Logout.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Logout</a>
            </div>

            <div class="content">
                <div class="hamburger" onclick="toggleSidebar()">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

                <h2>
                    
                <div class="profile-info">
                    <label>Email:</label>
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label>Username:</label>
                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label>User Type:</label>
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                </div>
               <%-- <div class="profile-info">
                    <label>Date of Birth:</label>
                    <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label>
                </div>--%>
               <%-- <div class="profile-info">
                    <label>Gender:</label>
                    <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                </div>--%>
                <div class="profile-info">
                    <label>Business Name:</label>
                    <asp:Label ID="lblbus" runat="server" Text=""></asp:Label>
                </div>
                     <div class="profile-info">
                    <label>Description:</label>
                    <asp:Label ID="lblbusdes"  runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label>Contact Number:</label>
                    <asp:Label ID="lblContactNumber" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

    </form>
</body>
</html>