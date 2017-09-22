.class public Lcom/android/settings/cloudbackup/h;
.super Ljava/lang/Object;
.source "StatusBarCloudBackupHelper.java"


# direct methods
.method private static a(Landroid/content/Context;Lorg/json/JSONArray;Z)V
    .locals 6

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Lmiui/app/ToggleManager;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 115
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_2
    invoke-static {p0, v2, p2}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public static aR(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    const-string v1, "CKListToggleOrder"

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/cloudbackup/h;->j(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "CKPageToggleOrder"

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/cloudbackup/h;->j(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "CKNotificationIcon"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    const-string v1, "CKNetworkSpeed"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    const-string v1, "CKShowCarrier"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowCarrier(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    const-string v1, "CKScreenNotification"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isScreenshotNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    const-string v1, "CKCollapseToggle"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    const-string v1, "CKKeyguardExpand"

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    const-string v1, "StatusBarCloudBackupHelper"

    const-string v2, "Build JSON failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "CKListToggleOrder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/settings/cloudbackup/h;->a(Landroid/content/Context;Lorg/json/JSONArray;Z)V

    .line 72
    const-string v0, "CKPageToggleOrder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/cloudbackup/h;->a(Landroid/content/Context;Lorg/json/JSONArray;Z)V

    .line 75
    const-string v0, "CKNotificationIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "CKNotificationIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowNotificationIcon(Landroid/content/Context;Z)V

    .line 78
    :cond_2
    const-string v0, "CKNetworkSpeed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-string v0, "CKNetworkSpeed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowNetworkSpeed(Landroid/content/Context;Z)V

    .line 81
    :cond_3
    const-string v0, "CKShowCarrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-string v0, "CKShowCarrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowCarrier(Landroid/content/Context;Z)V

    .line 84
    :cond_4
    const-string v0, "CKScreenNotification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "CKScreenNotification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->enableScreenshotNotification(Landroid/content/Context;Z)V

    .line 87
    :cond_5
    const-string v0, "CKCollapseToggle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    const-string v0, "CKCollapseToggle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setCollapseAfterClicked(Landroid/content/Context;Z)V

    .line 90
    :cond_6
    const-string v0, "CKKeyguardExpand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "CKKeyguardExpand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;Z)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 96
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 97
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 101
    :cond_0
    return-object v1
.end method
