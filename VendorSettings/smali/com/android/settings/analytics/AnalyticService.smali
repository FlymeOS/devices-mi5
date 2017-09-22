.class public Lcom/android/vendorsettings/analytics/AnalyticService;
.super Landroid/app/IntentService;
.source "AnalyticService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "AnalyticService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private t(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 97
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v0, "eventObj"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    const-string v1, "eventBundle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    :goto_2
    return-void

    .line 113
    :cond_3
    if-eqz v0, :cond_4

    .line 114
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 116
    :cond_4
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v2, v1}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "miui.intent.action.TRACK_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/analytics/AnalyticService;->t(Landroid/content/Intent;)V

    .line 93
    :cond_1
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/analytics/Analytics;->endSession()V

    goto :goto_0
.end method
