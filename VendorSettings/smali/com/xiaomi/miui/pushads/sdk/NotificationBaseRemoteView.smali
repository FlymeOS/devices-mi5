.class Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;
.super Landroid/widget/RemoteViews;
.source "NotificationBaseRemoteView.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification_base_layout"

    const-string v3, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 28
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 31
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :goto_1
    return-void

    .line 34
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    const-string v0, ""

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .line 43
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "sub_title"

    const-string v3, "id"

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 45
    invoke-virtual {p0, v1, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "id"

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_button"

    const-string v2, "id"

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 63
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x1020006

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setImageViewResource(II)V

    .line 24
    return-void
.end method
