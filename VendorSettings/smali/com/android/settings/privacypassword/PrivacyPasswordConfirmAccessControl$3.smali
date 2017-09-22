.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyPasswordConfirmAccessControl.java"


# instance fields
.field final synthetic aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->e(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 171
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->e(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->f(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->g(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    goto :goto_0
.end method
