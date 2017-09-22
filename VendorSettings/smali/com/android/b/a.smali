.class public Lcom/android/b/a;
.super Ljava/lang/Object;
.source "OldmanHelper.java"


# direct methods
.method public static E(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-object p0

    .line 80
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/b/a;->cr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    move-object p0, v1

    .line 90
    goto :goto_0
.end method

.method public static cI(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "elder.settings.oldman_mode_settings_hidden"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 39
    if-ne v2, v4, :cond_0

    .line 41
    const-string v2, "support_oldman_mode"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 44
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static cJ(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "elder.settings.status_bar_settings_hidden"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "elder.systemui.allow_status_expand"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 60
    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    .line 62
    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 57
    goto :goto_1

    :cond_3
    move v0, v2

    .line 60
    goto :goto_2

    :cond_4
    move v2, v1

    .line 62
    goto :goto_3
.end method

.method private static cr(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    const-string v0, "com.jeejen.family.miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.jeejen.knowledge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.jeejen.store"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 23
    if-eqz p1, :cond_1

    move v0, v1

    .line 25
    :goto_0
    if-ne v1, v0, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_default_application"

    const-string v3, "com.jeejen.family.miui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    :cond_0
    :goto_1
    invoke-static {p0, v0}, Lmiui/os/Build;->setUserMode(Landroid/content/Context;I)V

    .line 34
    return-void

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_2
    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_default_application"

    const-string v3, "com.android.mms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public static ze()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
