.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# instance fields
.field private ro:Landroid/preference/CheckBoxPreference;

.field private rp:Landroid/preference/CheckBoxPreference;

.field private rq:Z

.field private rr:Z

.field private rs:Ljava/lang/String;

.field private rt:Landroid/app/Dialog;

.field private ru:Lcom/android/settings/eB;

.field private rv:Lcom/android/settings/eD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 626
    return-void
.end method

.method private F(Z)V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G(Z)V
    .locals 2

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 473
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 475
    if-nez p1, :cond_0

    .line 480
    const/high16 v1, 0x1610000

    .line 482
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->F(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fm()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->G(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fn()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fk()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eD()V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 196
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 198
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_0
    return-void
.end method

.method private eD()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0e53

    .line 333
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e4f

    new-instance v2, Lcom/android/settings/eA;

    invoke-direct {v2, p0}, Lcom/android/settings/eA;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void

    .line 325
    :cond_0
    const v0, 0x7f0c0e51

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c0e52

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0e50

    goto :goto_0
.end method

.method private eF()Z
    .locals 2

    .prologue
    .line 424
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fj()V

    return-void
.end method

.method private fh()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private fi()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/android/settings/eB;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/eB;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ru:Lcom/android/settings/eB;

    .line 155
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ru:Lcom/android/settings/eB;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eB;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method private fj()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/android/settings/eD;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/eD;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rv:Lcom/android/settings/eD;

    .line 161
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rv:Lcom/android/settings/eD;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eD;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method private fk()V
    .locals 4

    .prologue
    .line 165
    const v0, 0x7f0c0e3d

    .line 166
    const v1, 0x7f0c0e3e

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e43

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 172
    return-void
.end method

.method private fl()V
    .locals 4

    .prologue
    .line 176
    .line 179
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const v1, 0x7f0c0e3f

    .line 181
    const v0, 0x7f0c0e40

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e44

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    return-void

    .line 183
    :cond_0
    const v1, 0x7f0c0e41

    .line 184
    const v0, 0x7f0c0e42

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103006d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    .line 360
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x11030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 364
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 365
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 366
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 368
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 370
    const v1, 0x110b0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 377
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 379
    new-instance v0, Lcom/android/settings/eE;

    invoke-direct {v0, p0}, Lcom/android/settings/eE;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eE;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void
.end method

.method private fn()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lmiui/os/MiuiInit;->doFactoryReset(Z)V

    .line 390
    const-string v0, "MasterClearRec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFactoryReset hex password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->rs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    const-string v0, "support_erase_external_storage"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 404
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    const-string v0, "support_erase_external_storage"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 410
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->rs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rs:Ljava/lang/String;

    .line 413
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private fo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 706
    const-string v1, "ro.product.device"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    const-string v2, "pisces"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cancro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "virgo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    :cond_0
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    const-string v2, "support_device_encrypt"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 711
    const/4 v0, 0x1

    .line 714
    :cond_1
    return v0
.end method

.method static synthetic g(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fl()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    return-object v0
.end method

.method private s(I)Z
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c04d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/settings/aH;->a(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 297
    if-ne p2, v1, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->rr:Z

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 306
    if-ne p2, v1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fo()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 308
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    invoke-static {}, Lcom/android/settings/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 312
    :try_start_0
    invoke-static {v0, v1}, Lcom/android/settings/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rs:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fi()V

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "MiuiMasterClear"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 207
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiMasterClear;->setHasOptionsMenu(Z)V

    .line 208
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 209
    const-string v0, "erase_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v0, "erase_external_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v0, "erase_optional"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 213
    const-string v1, "support_erase_application"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    iput-object v5, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    .line 218
    :cond_0
    const-string v1, "ro.boot.sdcard.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 222
    if-eqz v1, :cond_1

    const-string v2, "support_erase_external_storage"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eF()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    iput-object v5, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear_all"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->rq:Z

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->rq:Z

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ro:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 245
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fm()V

    .line 250
    :cond_5
    :goto_1
    return-void

    .line 226
    :cond_6
    if-eqz v1, :cond_7

    .line 227
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c0e55

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->rp:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c0e56

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 230
    const-string v1, "erase_data"

    const-string v2, "erase_external_no_emulate_sd"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiMasterClear;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_7
    const-string v1, "erase_data"

    const-string v2, "erase_external_no_emulate_sd"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiMasterClear;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fn()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    const v2, 0x7f0c04db

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 255
    const v3, 0x7f02000d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_demo_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 259
    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 260
    return-void

    :cond_0
    move v0, v1

    .line 259
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rt:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ru:Lcom/android/settings/eB;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ru:Lcom/android/settings/eB;

    invoke-virtual {v0, v1}, Lcom/android/settings/eB;->cancel(Z)Z

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rv:Lcom/android/settings/eD;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->rv:Lcom/android/settings/eD;

    invoke-virtual {v0, v1}, Lcom/android/settings/eD;->cancel(Z)Z

    .line 449
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 450
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 265
    if-ne v1, v0, :cond_2

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->rr:Z

    .line 276
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->s(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fi()V

    goto :goto_0

    .line 288
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->F(Z)V

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->G(Z)V

    .line 433
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 457
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->rr:Z

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->rr:Z

    .line 459
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->s(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->fi()V

    .line 463
    :cond_0
    return-void
.end method
