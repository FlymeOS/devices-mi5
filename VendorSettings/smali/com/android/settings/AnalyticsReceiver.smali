.class public Lcom/android/settings/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    const-string v0, "state"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    if-eqz v0, :cond_1

    const-string v0, "airplane_enable"

    .line 34
    :goto_0
    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    :cond_0
    :goto_1
    return-object v0

    .line 33
    :cond_1
    const-string v0, "airplane_disable"

    goto :goto_0

    .line 35
    :cond_2
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    if-ne v1, v3, :cond_3

    .line 39
    const-string v0, "wifi_enable"

    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_3
    if-nez v1, :cond_0

    .line 41
    const-string v0, "wifi_disable"

    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 43
    :cond_4
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    if-ne v0, v3, :cond_5

    .line 47
    const-string v0, "ringer_normal"

    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_5
    if-nez v0, :cond_6

    .line 49
    const-string v0, "ringer_silent"

    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_6
    const-string v0, "ringer_vibrate"

    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_7
    const-string v2, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 54
    const-string v0, "privacy_mode_enabled"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    if-nez v0, :cond_8

    const-string v0, "privacy_disable"

    .line 56
    :goto_2
    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_8
    const-string v0, "privacy_enable"

    goto :goto_2

    .line 57
    :cond_9
    const-string v2, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/AnalyticsReceiver;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v0, "input_method_id"

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/android/settings/AnalyticsReceiver;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 64
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "eventId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "eventObj"

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "eventObj"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static g(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/AnalyticsReceiver;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AnalyticsReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    :cond_0
    return-void
.end method
