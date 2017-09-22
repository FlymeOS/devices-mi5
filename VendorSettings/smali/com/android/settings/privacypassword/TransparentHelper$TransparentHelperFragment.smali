.class public Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "TransparentHelper.java"


# instance fields
.field private anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private b(II)V
    .locals 3

    .prologue
    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 74
    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->finish()V

    goto :goto_0

    .line 81
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->finish()V

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x718b -> :sswitch_1
        0x46db0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    if-eqz p2, :cond_0

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 68
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->b(II)V

    .line 69
    return-void

    :cond_0
    move v2, v1

    .line 67
    goto :goto_0

    :cond_1
    move v0, v1

    .line 68
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->b(II)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const v1, 0x46db0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-class v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x718b

    const/4 v4, 0x0

    const v5, 0x7f0c11cc

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/privacypassword/TransparentHelper$TransparentHelperFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method
