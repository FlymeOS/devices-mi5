.class public Lmiui/util/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field public static final ENABLE_ASK:I = 0x1

.field public static final ENABLE_AUTO:I = 0x2

.field private static final KEY_PROPERTY_NAME:Ljava/lang/String; = "pkg"

.field private static final MODULE_AUTO_DIS_NAV_BTN:Ljava/lang/String; = "AutoDisableNavigationButton1"

.field public static final NO:I = 0x3

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoDisableScreenButtonsHelper"

.field private static mJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "flagObj":Ljava/lang/Object;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 44
    .end local v1    # "flagObj":Ljava/lang/Object;
    .local v0, "flag":I
    :goto_0
    if-nez v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->loadAppCloudConfigFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 49
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x3

    .end local v0    # "flag":I
    :cond_1
    return v0

    .line 43
    .restart local v1    # "flagObj":Ljava/lang/Object;
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "flagObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateJson(Landroid/content/Context;)V

    .line 55
    :try_start_0
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadAppCloudConfigFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AutoDisableNavigationButton1"

    const-string v4, "pkg"

    const/4 v5, 0x1

    invoke-static {v2, v3, p1, v4, v5}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 35
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_0

    .line 36
    const-string v2, "flag"

    invoke-virtual {v0, v2, v1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 38
    :cond_0
    return v1
.end method

.method public static setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateJson(Landroid/content/Context;)V

    .line 70
    :try_start_0
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    if-nez p0, :cond_0

    .line 78
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_disable_screen_button"

    sget-object v3, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private static updateJson(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_disable_screen_button"

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "jsonStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :cond_2
    if-nez v1, :cond_3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    sput-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
