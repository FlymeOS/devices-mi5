.class public Lcom/android/vendorsettings/dndmode/m;
.super Ljava/lang/Object;
.source "DoNotDisturbModeUtils.java"


# direct methods
.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v1, "numbers"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static bW(I)J
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 92
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    .line 93
    if-lt v1, p0, :cond_0

    .line 94
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 96
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 97
    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 98
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 99
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bu(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    const-string v0, "AntiSpamUtils"

    const-string v1, "Start auto DNDM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/vendorsettings/dndmode/m;->bW(I)J

    move-result-wide v0

    .line 83
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/vendorsettings/dndmode/m;->bW(I)J

    move-result-wide v2

    .line 85
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vendorsettings/dndmode/m;->c(Landroid/content/Context;JJ)V

    .line 86
    return-void
.end method

.method public static bv(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/vendorsettings/dndmode/m;->bx(Landroid/content/Context;)V

    .line 105
    invoke-static {p0}, Lcom/android/vendorsettings/dndmode/m;->bu(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public static bw(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    .line 110
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v3

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 112
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 113
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 114
    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    .line 116
    if-le v2, v3, :cond_2

    .line 118
    if-lt v4, v3, :cond_1

    if-ge v4, v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    if-ge v2, v3, :cond_0

    .line 127
    if-lt v4, v2, :cond_0

    if-ge v4, v3, :cond_0

    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public static bx(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v0, "AntiSpamUtils"

    const-string v1, "Cancel auto DNDM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/vendorsettings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v0, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 146
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 148
    const-string v2, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method public static c(Landroid/content/Context;JJ)V
    .locals 7

    .prologue
    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 66
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/vendorsettings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v2, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/vendorsettings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v3, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 76
    invoke-virtual {v0, v4, p3, p4, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 77
    return-void
.end method

.method public static m(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    const/16 v0, 0xb

    div-int/lit8 v2, p1, 0x3c

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v0, 0xc

    rem-int/lit8 v2, p1, 0x3c

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 52
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f0c0bb4

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    const v0, 0x7f0c0bb3

    goto :goto_0
.end method
