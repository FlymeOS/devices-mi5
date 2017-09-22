.class public Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;
.super Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmAccessControl.java"


# static fields
.field private static fb:J


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private eX:I

.field private eY:Landroid/widget/Button;

.field private eZ:Landroid/os/IBinder;

.field private fa:Z

.field private m:Lmiui/security/SecurityManager;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fa:Z

    return v0
.end method

.method private aF()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    if-ne v0, v3, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v3}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 150
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 152
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eZ:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method protected a(J)J
    .locals 6

    .prologue
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 243
    sget-wide v2, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fb:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    sget-wide v2, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fb:J

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 244
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fb:J

    .line 246
    :cond_1
    sget-wide v0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fb:J

    return-wide v0
.end method

.method protected a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V

    .line 300
    sget-object v0, Lcom/android/vendorsettings/aJ;->eW:[I

    invoke-virtual {p1}, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    :pswitch_0
    return-void

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->aF()V

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->m:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->startActivity(Landroid/content/Intent;)V

    .line 289
    :cond_1
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 290
    return-void
.end method

.method protected aG()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->m:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->aF()V

    .line 168
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    :cond_1
    return-void
.end method

.method protected aH()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/ChooseAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "access_control_lock_enabled"

    return-object v0
.end method

.method protected aJ()I
    .locals 1

    .prologue
    .line 273
    const v0, 0x7f0c0d69

    return v0
.end method

.method protected aK()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ac_visiblepattern"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected b(J)V
    .locals 1

    .prologue
    .line 251
    sput-wide p1, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fb:J

    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 253
    return-void
.end method

.method protected b(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected c(J)V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 258
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected f(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const v7, 0x7f0c0d69

    const/high16 v6, 0x80000

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    iput-object v3, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    .line 175
    iput-object v3, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eZ:Landroid/os/IBinder;

    .line 176
    iput-boolean v1, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fa:Z

    .line 178
    if-eqz p1, :cond_2

    .line 179
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->f(Landroid/content/Intent;)V

    .line 180
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    .line 181
    const-string v0, "confirm_purpose"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    .line 182
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    .line 183
    const-string v0, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eZ:Landroid/os/IBinder;

    .line 184
    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fa:Z

    .line 187
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    :goto_1
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0d6b

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fB:Ljava/lang/CharSequence;

    :cond_1
    move v3, v2

    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ConfirmAccessControl;

    invoke-static {v0, v3}, Lcom/android/vendorsettings/ConfirmAccessControl;->a(Lcom/android/vendorsettings/ConfirmAccessControl;Z)Z

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "StartActivityWhenLocked"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 221
    if-eqz v2, :cond_7

    .line 222
    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 227
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v1

    .line 184
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    .line 204
    :cond_4
    iget v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eX:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 205
    const v0, 0x7f0c1002

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0d6b

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->fB:Ljava/lang/CharSequence;

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    move v2, v1

    .line 215
    goto :goto_3

    .line 216
    :catch_1
    move-exception v0

    .line 217
    const-string v2, "ConfirmAccessControl"

    const-string v3, "Fail to read StartActivityWhenLocked from intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    goto :goto_3

    .line 224
    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 119
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->m:Lmiui/security/SecurityManager;

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 126
    const v0, 0x7f13013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    new-instance v2, Lcom/android/vendorsettings/aK;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/aK;-><init>(Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const-string v0, "com.android.contacts"

    iget-object v2, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    :goto_0
    return-object v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmAccessControl$ConfirmAccessControlFragment;->eY:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
