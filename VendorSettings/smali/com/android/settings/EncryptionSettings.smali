.class public Lcom/android/vendorsettings/EncryptionSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mE:I


# instance fields
.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private mB:Lcom/android/vendorsettings/cU;

.field private mC:Lcom/android/vendorsettings/cV;

.field private mD:Z

.field private mF:Landroid/preference/CheckBoxPreference;

.field private mG:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/vendorsettings/EncryptionSettings;->mE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/android/vendorsettings/cT;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cT;-><init>(Lcom/android/vendorsettings/EncryptionSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    return-void
.end method

.method private E(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 197
    :sswitch_0
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c0544

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/EncryptionSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 205
    :sswitch_1
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c0543

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/EncryptionSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionSettings;->dO()V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/EncryptionSettings;)Lcom/android/vendorsettings/cV;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/EncryptionSettings;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/EncryptionSettings;->E(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/EncryptionSettings;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/vendorsettings/EncryptionSettings;->mD:Z

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/EncryptionSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dN()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    new-instance v0, Lcom/android/vendorsettings/cV;

    const v1, 0x7f0c118e

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vendorsettings/cV;-><init>(Lcom/android/vendorsettings/EncryptionSettings;ILcom/android/vendorsettings/cT;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    .line 150
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cV;->show()V

    .line 151
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/EncryptionSettings;->y(Z)V

    .line 152
    return-void
.end method

.method private dO()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    new-instance v0, Lcom/android/vendorsettings/cV;

    const v1, 0x7f0c118f

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vendorsettings/cV;-><init>(Lcom/android/vendorsettings/EncryptionSettings;ILcom/android/vendorsettings/cT;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cV;->show()V

    .line 163
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/EncryptionSettings;->y(Z)V

    .line 164
    return-void
.end method

.method private dP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private y(Z)V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/android/vendorsettings/EncryptionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 180
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionSettings;->dN()V

    goto :goto_0

    .line 185
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionSettings;->dO()V

    goto :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EncryptionSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    const-string v1, "security_encryption_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionSettings;->dP()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mG:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mG:Landroid/content/IntentFilter;

    const-string v1, "com.miui.EncryptionPassword"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mC:Lcom/android/vendorsettings/cV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cV;->dR()V

    .line 139
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    .line 87
    const-string v2, "security_encryption_enable"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/vendorsettings/EncryptionSettings;->mF:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    new-instance v0, Lcom/android/vendorsettings/cU;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/vendorsettings/cU;-><init>(Lcom/android/vendorsettings/EncryptionSettings;Lcom/android/vendorsettings/cT;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mB:Lcom/android/vendorsettings/cU;

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mB:Lcom/android/vendorsettings/cU;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cU;->show()V

    .line 99
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    const-string v2, "show_dialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mD:Z

    .line 118
    iget-boolean v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mD:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/vendorsettings/cU;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/cU;-><init>(Lcom/android/vendorsettings/EncryptionSettings;Lcom/android/vendorsettings/cT;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mB:Lcom/android/vendorsettings/cU;

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/EncryptionSettings;->mB:Lcom/android/vendorsettings/cU;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cU;->show()V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/EncryptionSettings;->mG:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void

    :cond_1
    move-object v0, v1

    .line 114
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "show_dialog"

    iget-boolean v1, p0, Lcom/android/vendorsettings/EncryptionSettings;->mD:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/EncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    return-void
.end method
