.class public Lmiui/securitycenter/utils/MiAssistantUtil;
.super Ljava/lang/Object;
.source "MiAssistantUtil.java"


# static fields
.field private static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field private static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkinfo"

.field private static final INTERFACE_USBNET0:Ljava/lang/String; = "usbnet0"

.field private static final TAG:Ljava/lang/String; = "MiAssistantManager"

.field private static final USB_SHARE_NET_STATE_CHANGE:Ljava/lang/String; = "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getActiveInterfaceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 49
    .local v1, "cm":Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 51
    .local v0, "activeLink":Landroid/net/LinkProperties;
    :try_start_0
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 59
    :goto_1
    return-object v3

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "MiAssistantManager"

    const-string v4, "activeLink is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v3, "null"

    goto :goto_1
.end method

.method public static usbnet0Down(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 27
    new-instance v3, Landroid/content/Intent;

    const-string v6, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v6, 0x9

    const-string v7, "ETHERNET"

    const-string v8, ""

    invoke-direct {v2, v6, v9, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2, v9}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 30
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v6, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v6, "networkinfo"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 33
    .local v4, "linkProperties":Landroid/net/LinkProperties;
    const-string v6, "linkProperties"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 40
    .local v5, "nwService":Landroid/os/INetworkManagementService;
    :try_start_0
    const-string v6, "usbnet0"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "MiAssistantManager"

    const-string v7, "disable usbnet0 error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
