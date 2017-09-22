.class public Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;
.super Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;
.source "SetPrivacyPasswordChooseAccessControl.java"


# instance fields
.field private anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->tM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->setResult(I)V

    .line 74
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->finish()V

    .line 75
    return-void

    .line 71
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->setResult(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onActivityResult(IILandroid/content/Intent;)V

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 20
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->finish()V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x46dc1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    .line 40
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->tM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->finish()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->tM()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const v1, 0x46dc1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onStart()V

    .line 48
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->l:Z

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onStop()V

    .line 64
    return-void
.end method

.method protected tM()Z
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/SetPrivacyPasswordChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "choose_suspend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
