.class public Lcom/android/settings/MiuiCryptKeeperSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiCryptKeeperSettings.java"


# instance fields
.field private gH:Landroid/widget/Button;

.field private gK:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private qb:Landroid/app/AlertDialog;

.field private qj:Landroid/widget/TextView;

.field private qk:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/eh;

    invoke-direct {v0, p0}, Lcom/android/settings/eh;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/android/settings/ei;

    invoke-direct {v0, p0}, Lcom/android/settings/ei;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gK:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiCryptKeeperSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gH:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiCryptKeeperSettings;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiCryptKeeperSettings;->s(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qj:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0217

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0220

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/ej;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/ej;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    .line 298
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 299
    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private s(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
    new-instance v3, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 204
    invoke-virtual {v3}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, ""

    invoke-direct {p0, v1, v0}, Lcom/android/settings/MiuiCryptKeeperSettings;->b(ILjava/lang/String;)V

    move v0, v1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v4, 0x10000

    if-ne v0, v4, :cond_1

    const v0, 0x7f0c0544

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/settings/aH;->a(ILjava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0543

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-class v0, Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiCryptKeeperSettings;->addPreferencesFromResource(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-nez v2, :cond_0

    .line 176
    const-string v2, "crypt_keeper_decrypt_methods_summary"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiCryptKeeperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    .line 178
    const v3, 0x7f0c10ff

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 181
    :cond_0
    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 184
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 186
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 188
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 192
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 230
    const-string v0, "type"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 231
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiCryptKeeperSettings;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    :cond_1
    iput-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qk:Landroid/app/AlertDialog;

    .line 311
    iput-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qb:Landroid/app/AlertDialog;

    .line 312
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f040043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 141
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const v0, 0x7f13008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gH:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gK:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->gH:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    const v0, 0x7f13008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->qj:Landroid/widget/TextView;

    .line 146
    return-void
.end method
