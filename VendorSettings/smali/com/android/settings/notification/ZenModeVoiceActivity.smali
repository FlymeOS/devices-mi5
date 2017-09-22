.class public Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;
.super Lcom/android/vendorsettings/f/a;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/vendorsettings/f/a;-><init>()V

    return-void
.end method

.method private a(ILandroid/service/notification/Condition;)V
    .locals 3

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string v2, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q(II)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, -0x1

    .line 89
    .line 94
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    move v2, v0

    move v3, v0

    .line 106
    :goto_0
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_1
    return-object v0

    .line 96
    :pswitch_1
    const v3, 0x7f0c0ab3

    .line 97
    const v2, 0x7f11000c

    .line 98
    const v1, 0x7f11000d

    .line 99
    const v0, 0x7f0c0ab4

    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    const v1, 0x7f0c0ab5

    move v2, v0

    move v3, v0

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v0, 0xea60

    mul-int/2addr v0, p2

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Hm"

    .line 112
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    const/16 v5, 0x3c

    if-ge p2, v5, :cond_3

    .line 117
    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    invoke-virtual {v4, v3, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_2
    const-string v0, "hma"

    goto :goto_2

    .line 118
    :cond_3
    rem-int/lit8 v3, p2, 0x3c

    if-eqz v3, :cond_4

    .line 119
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_4
    div-int/lit8 v1, p2, 0x3c

    .line 122
    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    aput-object v0, v3, v9

    invoke-virtual {v4, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected b(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "android.settings.extra.do_not_disturb_mode_minutes"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    const/4 v0, 0x0

    .line 54
    const-string v1, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    if-lez v3, :cond_0

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v3, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 58
    :cond_0
    const/4 v1, 0x3

    .line 60
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->a(ILandroid/service/notification/Condition;)V

    .line 62
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 63
    if-eqz v0, :cond_1

    .line 65
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 69
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->q(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->g(Ljava/lang/CharSequence;)V

    .line 74
    :goto_1
    return v2

    .line 71
    :cond_2
    const-string v0, "ZenModeVoiceActivity"

    const-string v1, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenModeVoiceActivity;->finish()V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
