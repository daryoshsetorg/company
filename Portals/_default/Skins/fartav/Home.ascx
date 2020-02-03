<%@ Control Language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<div id="siteWrapper">
    <!--Header -->
    <header role="banner">
        <div id="mainHeader-inner" class="container">
            <div class="clearfix"></div>
            <div class="navbar navbar-default" role="navigation">
                <div id="navbar-top-wrapper">
                    <div id="logo">
                        <span class="brand">
                            <dnn:LOGO runat="server" ID="dnnLOGO" />
                        </span>
                    </div>
                </div>
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="collapse navbar-collapse pull-right">
                    <dnn:MENU ID="MENU" MenuStyle="Menus/MainMenu" runat="server" NodeSelector="*"></dnn:MENU>
                    <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">
        <main role="main"> 
            <div id="mainContent-inner">
                <div class="row dnnpane">
                    <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                </div>
            </div><!-- /.mainContent-inner -->
        </main>
        <!-- /.mainContent -->
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer role="contentinfo">
        <div class="footer-above">
            <div class="container">
                <div class="row dnnpane">
                 
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row dnnpane">
                    <div class="col-md-12">
                        <div class="copyright">
                            <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="" />
                        </div>
                        <div class="terms-priv">
                            <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
                            <dnn:TERMS ID="dnnTerms" runat="server" />
                            |
					        <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>
<!-- /.SiteWrapper -->

<%-- CSS & JS includes --%>
<!--#include file="Common/AddFiles.ascx"-->
