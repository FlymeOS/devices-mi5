.class public Lcom/android/settings/wifi/j;
.super Ljava/lang/Object;
.source "MiuiConfigCaptivePortal.java"


# direct methods
.method public static final A(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 26
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 27
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CN"

    invoke-static {v2}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/wifi/j;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http"

    const-string v3, "connect.rom.miui.com"

    const-string v4, "/generate_204"

    invoke-direct {v0, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    .line 55
    :goto_0
    return-object v1

    .line 37
    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "captive_portal_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-nez v0, :cond_5

    .line 42
    const-string v0, "clients3.google.com"

    move-object v2, v0

    .line 46
    :goto_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    const-string v3, "http"

    const-string v4, "/generate_204"

    invoke-direct {v0, v3, v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object v1, v0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 51
    :cond_4
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 53
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    goto :goto_0

    .line 35
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method static isCnFromOperator(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 59
    const-string v0, ""

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
