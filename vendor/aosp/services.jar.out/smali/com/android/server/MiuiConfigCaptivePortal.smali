.class public Lcom/android/server/MiuiConfigCaptivePortal;
.super Ljava/lang/Object;
.source "MiuiConfigCaptivePortal.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "connect.rom.miui.com"

.field private static final CN_OPERATOR:Ljava/lang/String; = "460"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_and_wifi_roam"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 23
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v9

    .line 24
    .local v9, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v9}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 25
    .local v5, "isExistIccCard":Z
    :goto_0
    invoke-virtual {v9}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 26
    .local v7, "numPhones":I
    const/4 v6, 0x0

    .local v6, "networkOperator":Ljava/lang/String;
    const/4 v8, 0x0

    .line 28
    .local v8, "server":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 29
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_0

    .line 30
    invoke-virtual {v9, v4}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 38
    .end local v4    # "i":I
    :cond_0
    invoke-static {v6}, Lcom/android/server/MiuiConfigCaptivePortal;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "CN"

    invoke-static {v10}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 40
    :cond_1
    const-string v8, "connect.rom.miui.com"

    .line 58
    :cond_2
    :goto_2
    if-eqz v8, :cond_7

    :try_start_0
    new-instance v10, Ljava/net/URL;

    const-string v12, "http"

    const-string v13, "/generate_204"

    invoke-direct {v10, v12, v8, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :goto_3
    return-object v10

    .line 24
    .end local v5    # "isExistIccCard":Z
    .end local v6    # "networkOperator":Ljava/lang/String;
    .end local v7    # "numPhones":I
    .end local v8    # "server":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 29
    .restart local v4    # "i":I
    .restart local v5    # "isExistIccCard":Z
    .restart local v6    # "networkOperator":Ljava/lang/String;
    .restart local v7    # "numPhones":I
    .restart local v8    # "server":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    .end local v4    # "i":I
    :cond_5
    if-eqz p1, :cond_6

    const-string v10, "http"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "captive_portal_server"

    invoke-static {v10, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 45
    if-nez v8, :cond_2

    .line 47
    :try_start_1
    const-string v10, "com.android.server.connectivity.NetworkMonitor"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v12, "DEFAULT_SERVER"

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    .local v1, "dsFiled":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 50
    .end local v1    # "dsFiled":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string v8, "connect.rom.miui.com"

    .line 54
    goto :goto_2

    .line 52
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 53
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "connect.rom.miui.com"

    goto :goto_2

    .line 58
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 59
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/net/MalformedURLException;
    move-object v10, v11

    .line 60
    goto :goto_3
.end method

.method static isCnFromOperator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 65
    const-string v0, ""

    .line 66
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
