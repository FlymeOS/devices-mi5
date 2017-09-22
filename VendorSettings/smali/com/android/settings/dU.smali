.class public Lcom/android/vendorsettings/dU;
.super Lcom/android/vendorsettings/ac;
.source "MiuiAirplaneModeEnabler.java"


# instance fields
.field private L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field protected pS:Z


# direct methods
.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected b(Z)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/vendorsettings/dU;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 79
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 93
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dU;->b(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/vendorsettings/dU;->pS:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/dU;->pS:Z

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/ac;->pause()V

    .line 61
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/vendorsettings/dU;->pS:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/dU;->pS:Z

    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/ac;->resume()V

    .line 53
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/dU;->co:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/vendorsettings/dU;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/vendorsettings/dU;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 120
    return-void
.end method
