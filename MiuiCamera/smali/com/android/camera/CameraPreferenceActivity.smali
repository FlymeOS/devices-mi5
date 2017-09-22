.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# instance fields
.field private mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraPreferenceActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraPreferenceActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private bringUpDoubleConfirmDlg(Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/camera/ui/PreviewListPreference;
    .param p2, "snapItem"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/camera/CameraPreferenceActivity$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/camera/CameraPreferenceActivity$1;-><init>(Lcom/android/camera/CameraPreferenceActivity;Ljava/lang/String;Lcom/android/camera/ui/PreviewListPreference;)V

    .line 95
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0212

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0213

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0214

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0215

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    .line 101
    iget-object v1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected filterByIntent()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByIntent()V

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsCaptureIntent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_capture_when_stable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 64
    :cond_0
    return-void
.end method

.method protected getPreferenceXml()I
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x7f060000

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":miui:starting_window_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_snap_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_wake_screen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/camera/CameraPreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_snap_key"

    const v3, 0x7f0e01cf

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    const v1, 0x7f0e01d0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    .end local p1    # "preference":Landroid/preference/Preference;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v0

    .line 42
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const v1, 0x7f0e01cd

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0e01ce

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    :cond_1
    const-string v1, "public_transportation_shortcuts"

    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_long_press_volume_down"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    check-cast p1, Lcom/android/camera/ui/PreviewListPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreferenceActivity;->bringUpDoubleConfirmDlg(Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 54
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSettingChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    .line 28
    return-void
.end method
