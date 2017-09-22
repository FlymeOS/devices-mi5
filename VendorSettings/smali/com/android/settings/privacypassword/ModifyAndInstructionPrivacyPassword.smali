.class public Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;
.super Lmiui/preference/PreferenceActivity;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private amX:Landroid/preference/Preference;

.field private amY:Landroid/preference/CheckBoxPreference;

.field private amZ:Landroid/preference/PreferenceCategory;

.field private ana:Landroid/preference/CheckBoxPreference;

.field private anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private anc:Landroid/view/View;

.field private and:Landroid/widget/TextView;

.field private ane:Landroid/preference/PreferenceCategory;

.field private anf:I

.field private ang:Z

.field private anh:Landroid/app/AlertDialog;

.field private ani:Landroid/content/DialogInterface$OnClickListener;

.field private anj:Landroid/content/DialogInterface$OnDismissListener;

.field private ank:Lcom/android/settings/dd;

.field private m:Lmiui/security/SecurityManager;

.field private qb:Landroid/app/AlertDialog;

.field private qe:Lcom/android/settings/cZ;

.field private rW:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 330
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$3;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ani:Landroid/content/DialogInterface$OnClickListener;

    .line 339
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$4;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$4;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anj:Landroid/content/DialogInterface$OnDismissListener;

    .line 359
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$5;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ank:Lcom/android/settings/dd;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anf:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ang:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/cZ;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anf:I

    return v0
.end method

.method private e(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 167
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ang:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anf:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->and:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tu()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tx()V

    return-void
.end method

.method private tq()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 126
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 127
    if-nez v0, :cond_0

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    aget-object v3, v1, v0

    aget-object v4, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_1
    return-void
.end method

.method private tu()V
    .locals 4

    .prologue
    .line 353
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 354
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 357
    :cond_0
    return-void
.end method

.method private tv()V
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ank:Lcom/android/settings/dd;

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v2}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cZ;->a(Lcom/android/settings/dd;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string v1, "ModifyAndInstructionPrivacyPassword"

    const-string v2, "finger identify error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private tx()V
    .locals 3

    .prologue
    .line 413
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->s(Landroid/content/Context;I)V

    .line 415
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->tK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->ca(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string v1, "ModifyAndInstructionPrivacyPassword"

    const-string v2, "invokeResetTimeout error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->tJ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "privacy_mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private y(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 325
    const-string v0, "com.android.settings.bgColor"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v0, "com.android.settings.titleColor"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    return-void
.end method


# virtual methods
.method protected cF(I)V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 232
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cd(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->finish()V

    .line 236
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 198
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    sparse-switch p1, :sswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 201
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string v1, "privacy_password_extra_data"

    const-string v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tr()V

    goto :goto_0

    .line 213
    :sswitch_2
    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 218
    :sswitch_3
    if-ne p2, v0, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tt()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tI()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x7162 -> :sswitch_2
        0x7163 -> :sswitch_3
        0x46dc2 -> :sswitch_0
        0x46dcb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->tJ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->setRequestedOrientation(I)V

    .line 93
    :cond_0
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->addPreferencesFromResource(I)V

    .line 94
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 95
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->m:Lmiui/security/SecurityManager;

    .line 96
    const-string v0, "modify_privacy_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amX:Landroid/preference/Preference;

    .line 97
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amX:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v0, "forget_privacy_password_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v0, "privacy_password_spcific"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amZ:Landroid/preference/PreferenceCategory;

    .line 100
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tH()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v0, "privacy_password_visible_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->bX(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    new-instance v0, Lcom/android/settings/cZ;

    invoke-direct {v0, p0}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    .line 108
    const-string v0, "password_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ane:Landroid/preference/PreferenceCategory;

    .line 109
    const-string v0, "use_finger_cofirm_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v0}, Lcom/android/settings/cZ;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v0}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tI()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 119
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tq()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tx()V

    .line 121
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ane:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anh:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anh:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    :cond_1
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 292
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->tp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/privacypassword/FunctionSpecification;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v2, "privacy_password_function_specification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_1
    const-string v0, "modify_privacy_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const v0, 0x46dc2

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cF(I)V

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "privacy_password_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->e(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->e(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->n(Landroid/content/Context;Z)V

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "forget_privacy_password_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const v0, 0x46dcb

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cF(I)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "use_finger_cofirm_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/16 v0, 0x7163

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->cF(I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onRestart()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->rW:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->bX(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->finish()V

    .line 193
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 194
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cd(Landroid/content/Context;)Z

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tH()Ljava/lang/String;

    move-result-object v1

    .line 242
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->ce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStart()V

    .line 247
    return-void

    .line 245
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tr()V
    .locals 3

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cd(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->m:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->b(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->m:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-static {p0, v0, v1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/privacypassword/PrivacyPasswordManager;)V

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ts()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->amY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected ts()V
    .locals 6

    .prologue
    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$2;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$2;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anh:Landroid/app/AlertDialog;

    .line 280
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anh:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    return-void
.end method

.method protected tt()V
    .locals 5

    .prologue
    const/16 v4, 0x7162

    .line 300
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ana:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->e(Landroid/preference/Preference;)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_4

    .line 302
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v0}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tw()V

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->cb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v0}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y(Landroid/content/Intent;)V

    .line 309
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 312
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 314
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->y(Landroid/content/Intent;)V

    .line 317
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anb:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    goto :goto_0
.end method

.method protected tw()V
    .locals 3

    .prologue
    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anc:Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anc:Landroid/view/View;

    const v1, 0x7f13007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->and:Landroid/widget/TextView;

    .line 404
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->and:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->ani:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 408
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->qb:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->anj:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 409
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->tv()V

    .line 410
    return-void
.end method
