.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aos:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->aos:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v0, "miui_security_fragment_result"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->aos:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->aos:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 124
    return-void
.end method
