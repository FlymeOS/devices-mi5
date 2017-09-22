.class Lcom/android/settings/notification/NotificationSettings$4;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/cO;


# instance fields
.field final synthetic ajD:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$4;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 477
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 478
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$4;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->g(Lcom/android/settings/notification/NotificationSettings;)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 489
    :goto_0
    return v1

    .line 481
    :cond_0
    const v0, 0x7f0c0a5b

    if-eq v4, v0, :cond_2

    move v3, v1

    .line 483
    :goto_1
    const v0, 0x7f0c0a59

    if-ne v4, v0, :cond_3

    move v0, v1

    .line 484
    :goto_2
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$4;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->h(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$4;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->i(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "lock_screen_show_notifications"

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$4;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0, v4}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;I)I

    goto :goto_0

    :cond_2
    move v3, v2

    .line 481
    goto :goto_1

    :cond_3
    move v0, v2

    .line 483
    goto :goto_2

    :cond_4
    move v0, v2

    .line 484
    goto :goto_3
.end method
