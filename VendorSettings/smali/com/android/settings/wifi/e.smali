.class public Lcom/android/settings/wifi/e;
.super Ljava/lang/Object;
.source "AutoConnectUtils.java"


# static fields
.field private static aAc:Lcom/android/settings/wifi/e;


# instance fields
.field private aAd:Ljava/util/HashSet;

.field private aAe:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "open_wifi_auto_connect_ssid"

    iput-object v0, p0, Lcom/android/settings/wifi/e;->aAe:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    .line 20
    return-void
.end method

.method public static cv(Landroid/content/Context;)Lcom/android/settings/wifi/e;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/android/settings/wifi/e;->aAc:Lcom/android/settings/wifi/e;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/e;->aAc:Lcom/android/settings/wifi/e;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/e;->aAc:Lcom/android/settings/wifi/e;

    return-object v0
.end method

.method private cw(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3

    .prologue
    .line 82
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/android/settings/wifi/e;->aAe:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 86
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/HashSet;Z)V
    .locals 3

    .prologue
    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    if-eqz p3, :cond_2

    .line 48
    iget-object v2, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$System;->setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bW(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 34
    if-eqz p3, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$System;->setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 40
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aAd:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/e;->cw(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/e;->aAe:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :cond_0
    return-void
.end method

.method public z(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/e;->cw(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
