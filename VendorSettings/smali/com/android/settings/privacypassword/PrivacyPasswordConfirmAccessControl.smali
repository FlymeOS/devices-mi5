.class public Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;
.super Lmiui/app/Activity;
.source "PrivacyPasswordConfirmAccessControl.java"


# instance fields
.field protected anR:Landroid/widget/TextView;

.field protected anS:Landroid/widget/TextView;

.field private anT:Landroid/widget/TextView;

.field private anU:Lcom/android/vendorsettings/LockPatternView;

.field private anV:Landroid/view/View;

.field private anW:Z

.field private anX:Z

.field private anY:Z

.field private anZ:Z

.field private anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

.field protected anq:Landroid/widget/ImageView;

.field private anr:Landroid/view/View;

.field private ant:Landroid/view/View$OnClickListener;

.field private aoa:Z

.field private aob:Z

.field protected aoc:Ljava/lang/CharSequence;

.field protected aod:Ljava/lang/CharSequence;

.field private aoe:I

.field protected aof:Ljava/lang/CharSequence;

.field protected aog:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

.field private aoh:Lcom/android/vendorsettings/dN;

.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private eX:I

.field private et:Ljava/lang/Runnable;

.field private fG:Landroid/database/ContentObserver;

.field private fa:Z

.field private fm:I

.field private fn:Landroid/os/CountDownTimer;

.field protected fx:Landroid/widget/TextView;

.field private m:Lmiui/security/SecurityManager;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private qe:Lcom/android/vendorsettings/cZ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anW:Z

    .line 116
    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoe:I

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$1;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->et:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$2;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoh:Lcom/android/vendorsettings/dN;

    .line 163
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$3;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$4;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$4;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->ant:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/vendorsettings/LockPatternView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anX:Z

    return p1
.end method

.method private aC()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 585
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->et:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 586
    return-void
.end method

.method private aF()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->eX:I

    if-ne v0, v3, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->eX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v3}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 576
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->eX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 578
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->eX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoe:I

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->et:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anW:Z

    return p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aC()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tC()V

    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anZ:Z

    return v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tD()V

    return-void
.end method

.method static synthetic h(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anV:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lmiui/security/SecurityManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoe:I

    return v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tE()V

    return-void
.end method

.method static synthetic l(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/vendorsettings/cZ;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    return-object v0
.end method

.method private tC()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anY:Z

    .line 590
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    .line 591
    return-void
.end method

.method private tD()V
    .locals 3

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anY:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anY:Z

    .line 598
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tF()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    iget-object v2, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v2}, Lcom/android/vendorsettings/cZ;->dV()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/cZ;->a(Lcom/android/vendorsettings/dd;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string v1, "PrivacyPasswordConfirmAccessControl"

    const-string v2, "finger identify error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c11cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private tE()V
    .locals 3

    .prologue
    const v2, 0x7f0c11e0

    .line 642
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 644
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c11cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 645
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoc:Ljava/lang/CharSequence;

    .line 646
    return-void
.end method

.method private tF()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aob:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tx()V
    .locals 3

    .prologue
    .line 649
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->s(Landroid/content/Context;I)V

    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    :try_start_0
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->ca(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    const-string v1, "PrivacyPasswordConfirmAccessControl"

    const-string v2, "invokeResetTimeout error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 482
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$10;->aoj:[I

    invoke-virtual {p1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 518
    return-void

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aJ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->enableInput()V

    .line 488
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fa:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aod:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aod:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aof:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aof:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;)V

    .line 504
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c0551

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->clearPattern()V

    .line 511
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->ty()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(ZLjava/util/List;)V
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tx()V

    .line 438
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aF()V

    .line 439
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    .line 443
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->setResult(I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 445
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    const/high16 v0, 0x7f050000

    const v1, 0x7f050001

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->overridePendingTransition(II)V

    .line 448
    :cond_1
    return-void
.end method

.method protected aG()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(ZLjava/util/List;)V

    .line 347
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fa:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 351
    :cond_0
    return-void
.end method

.method protected aH()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    const-string v1, "privacy_password_extra_data"

    const-string v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    return-object v0
.end method

.method protected aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, "access_control_lock_enabled"

    return-object v0
.end method

.method protected aJ()I
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const v0, 0x7f0c11d0

    .line 567
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c11cf

    goto :goto_0
.end method

.method protected aL()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aog:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-virtual {v0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPatternAsUser(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected c(J)V
    .locals 7

    .prologue
    .line 451
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aoo:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 452
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anV:Landroid/view/View;

    const/high16 v1, 0x64000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 454
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$7;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$7;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;JJ)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fn:Landroid/os/CountDownTimer;

    .line 475
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anW:Z

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 478
    :cond_0
    return-void
.end method

.method protected f(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x80000

    const/4 v1, 0x0

    .line 367
    iput-object v3, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    .line 368
    iput-boolean v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fa:Z

    .line 370
    if-eqz p1, :cond_0

    .line 371
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoc:Ljava/lang/CharSequence;

    .line 373
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aod:Ljava/lang/CharSequence;

    .line 375
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aof:Ljava/lang/CharSequence;

    .line 377
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 378
    const-string v0, "confirm_purpose"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->eX:I

    .line 380
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    .line 381
    const-string v0, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fa:Z

    .line 382
    iput-object v3, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoc:Ljava/lang/CharSequence;

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIntent:Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 393
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 394
    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 400
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 388
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v2, "PrivacyPasswordConfirmAccessControl"

    const-string v3, "showWhenLock error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    .line 323
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f040104

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->setContentView(I)V

    .line 192
    invoke-static {}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->tJ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->setRequestedOrientation(I)V

    .line 196
    :cond_0
    const v0, 0x7f1301ef

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anR:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anR:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->ant:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f1301f0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anq:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anq:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    const v0, 0x7f1301ee

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anr:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anr:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    .line 204
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    .line 205
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aob:Z

    .line 206
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/TransparentHelper;->cb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoa:Z

    .line 207
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 208
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->m:Lmiui/security/SecurityManager;

    .line 209
    new-instance v0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {v0, p0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aog:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    .line 210
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$5;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$5;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fG:Landroid/database/ContentObserver;

    .line 216
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    :cond_1
    const v0, 0x7f1301ed

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anV:Landroid/view/View;

    .line 219
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->f(Landroid/content/Intent;)V

    .line 221
    const v0, 0x7f1301f1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f1301f3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/LockPatternView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    .line 223
    const v0, 0x7f1301f2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f1301f4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aL()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    iget-object v3, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aoh:Lcom/android/vendorsettings/dN;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/dN;)V

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bX(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->setInStealthMode(Z)V

    .line 228
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aom:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 230
    if-eqz p1, :cond_4

    .line 231
    const-string v0, "privacy_num_wrong_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    .line 236
    :goto_2
    invoke-static {p0, v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->a(Landroid/app/Activity;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "miui.KEYGUARD_LOCKED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anX:Z

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    return-void

    :cond_2
    move v0, v2

    .line 206
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 227
    goto :goto_1

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aG()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fG:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 316
    :cond_1
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 318
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anW:Z

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tC()V

    .line 335
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Lmiui/app/Activity;->onRestart()V

    .line 340
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->aJ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 269
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->ty()V

    .line 274
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tz()J

    move-result-wide v0

    .line 275
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->c(J)V

    .line 284
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    .line 285
    :cond_2
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 286
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 287
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anX:Z

    if-nez v0, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tD()V

    .line 290
    :cond_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anX:Z

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$6;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$6;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 304
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tE()V

    .line 306
    :cond_5
    return-void

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anU:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    .line 281
    sget-object v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aom:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    goto :goto_0

    .line 300
    :cond_7
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tD()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 326
    const-string v0, "privacy_num_wrong_attempts"

    iget v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anZ:Z

    .line 260
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anZ:Z

    .line 265
    return-void
.end method

.method public tA()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v5, -0x3e100000    # -30.0f

    const-wide/16 v6, 0x32

    const/4 v4, 0x0

    .line 411
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v5, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 412
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 413
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 414
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 416
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v5, v8, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 417
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 418
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 419
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 421
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v8, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 422
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 423
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 424
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 427
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 428
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 429
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 430
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 431
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 432
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    return-void
.end method

.method protected tB()V
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    const v2, 0x7f0c11c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 526
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    new-instance v2, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    invoke-direct {v2, p0, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    return-void
.end method

.method protected ty()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;->cd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anb:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tH()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;->ce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tB()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->anT:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected tz()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 355
    invoke-virtual {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_password_countDownTimer_deadline"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 356
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    move-wide v0, v2

    .line 359
    :cond_1
    return-wide v0
.end method
