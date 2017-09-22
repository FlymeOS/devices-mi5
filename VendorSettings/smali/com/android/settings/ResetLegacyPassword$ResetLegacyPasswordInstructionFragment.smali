.class public Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ResetLegacyPassword.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 37
    const v0, 0x7f04011c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    const v1, 0x7f130076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/gV;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/gV;-><init>(Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x65

    const/4 v1, -0x1

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 55
    const-class v0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v2, v1}, Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-ne v2, p1, :cond_0

    if-ne v1, p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->setThemeRes(I)V

    .line 33
    return-void
.end method
