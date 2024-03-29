<%@ Page Title="" Language="C#" MasterPageFile="~/D-Classroom.Master" AutoEventWireup="true" CodeBehind="Newsect.aspx.cs" Inherits="DigitalClassroom.Newsect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 698px;
        }

        .auto-style2 {
            height: 571px;
            width: 50%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <center>
            <marquee direction="up" onmouseout="start" class="auto-style2">
                <asp:Label ID="Label2" runat="server" Style="font-size: 20px; height: 100px; width: 50px;"></asp:Label>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/news1.jpeg" Width="100%" />
                <br />
                <br />
                Dense Fog Reduces Visibility In Delhi: Safety Tips To Keep In Mind While Driving
                                    Edited by NDTV News Desk | Wednesday December 27, 2023, New Delhi
                                    The national capital woke up to a dense layer of fog on Wednesday, resulting in low visibility. In Delhi, the visibility has been reduced to just 50 metres while the minimum temperature dropped to 7 degrees Celsius.
                               <div>
                                   <br />
                                   <asp:Image ID="Image4" runat="server" ImageUrl="~/images/raj.jpeg" Width="100%" />
                                   <br />
                                   Rajnath Singh In J&K To Review Security Situation, Days After Terror Attack
                                   Edited by Saikat Kumar Bose | Wednesday December 27, 2023Defence Minister Rajnath Singh arrived in Jammu today for a security review trip, days after an ambush by terrorists on Army vehicles in Poonch left four soldiers dead. Mr Singh left for Rajouri soon after reaching Jammu.
                                  
                               </div>
            </marquee>
        </center>
    </div>
</asp:Content>
