.class public Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPattern.java"


# instance fields
.field private em:Lcom/android/vendorsettings/LockPatternView;

.field private et:Ljava/lang/Runnable;

.field protected fA:Landroid/widget/Button;

.field protected fB:Ljava/lang/CharSequence;

.field protected fC:Ljava/lang/CharSequence;

.field private fD:Ljava/lang/CharSequence;

.field private fE:Ljava/lang/CharSequence;

.field private fF:Landroid/view/View$OnClickListener;

.field private fG:Landroid/database/ContentObserver;

.field private fH:I

.field private fI:I

.field private fJ:I

.field private fK:I

.field private fL:I

.field private fM:Z

.field private fN:Lcom/android/vendorsettings/dN;

.field protected fi:Landroid/security/MiuiLockPatternUtils;

.field private fm:I

.field private fn:Landroid/os/CountDownTimer;

.field private fp:Z

.field private fq:Z

.field private fr:I

.field private ft:I

.field private fx:Landroid/widget/TextView;

.field private fy:Landroid/widget/TextView;

.field private fz:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fr:I

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    .line 346
    new-instance v0, Lcom/android/vendorsettings/aS;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/aS;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/Runnable;

    .line 363
    new-instance v0, Lcom/android/vendorsettings/aT;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/aT;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fN:Lcom/android/vendorsettings/dN;

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/vendorsettings/LockPatternView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method private aC()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 356
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method private aO()Z
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->d(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "challenge"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    iget v4, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-static {v0, p1, v2, v3, v4}, Lcom/android/vendorsettings/dB;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_0
    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Ljava/util/List;)V

    .line 409
    :goto_1
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-class v2, Lcom/android/vendorsettings/ConfirmLockPassword;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;[B)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aO()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fr:I

    return v0
.end method

.method private e(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/dB;->a(Landroid/security/MiuiLockPatternUtils;II)J

    move-result-wide v0

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(J)V

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->fQ:Lcom/android/vendorsettings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V

    .line 430
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aC()V

    goto :goto_0
.end method


# virtual methods
.method protected a(J)J
    .locals 1

    .prologue
    .line 267
    return-wide p1
.end method

.method protected a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    sget-object v0, Lcom/android/vendorsettings/aP;->eW:[I

    invoke-virtual {p1}, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 344
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fB:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fB:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fC:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fC:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aK()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->setInStealthMode(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aJ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fD:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fD:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_3
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fE:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fE:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;)V

    .line 330
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c0551

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->clearPattern()V

    .line 337
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;[B)V

    .line 476
    return-void
.end method

.method protected a(Ljava/util/List;[B)V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 480
    if-nez v0, :cond_2

    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    if-eqz p2, :cond_0

    .line 491
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    instance-of v0, v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fr:I

    .line 499
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method protected aG()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_password_type"

    iget v3, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 524
    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 529
    :cond_1
    return-void
.end method

.method protected aH()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aJ()I
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fp:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c11c3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c11c4

    goto :goto_0
.end method

.method protected aK()Z
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-static {v0, v1}, Lcom/android/vendorsettings/dB;->a(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aL()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected b(J)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method protected b(Ljava/util/List;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 516
    :goto_0
    return v0

    .line 512
    :cond_0
    const-string v1, "ConfirmLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check pattern for user :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    iget v2, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-static {v1, p1, v2}, Lcom/android/vendorsettings/dB;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    const-class v2, Lcom/android/vendorsettings/ConfirmLockPattern;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c(J)V
    .locals 7

    .prologue
    .line 439
    sget-object v0, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->fR:Lcom/android/vendorsettings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 441
    new-instance v0, Lcom/android/vendorsettings/aU;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/aU;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/vendorsettings/aU;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fn:Landroid/os/CountDownTimer;

    .line 459
    return-void
.end method

.method protected f(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fB:Ljava/lang/CharSequence;

    .line 553
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fC:Ljava/lang/CharSequence;

    .line 554
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fD:Ljava/lang/CharSequence;

    .line 555
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fE:Ljava/lang/CharSequence;

    .line 556
    const-string v0, "com.android.settings.userIdToConfirm"

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->ft:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    .line 557
    const-string v0, "com.android.settings.titleColor"

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fI:I

    .line 558
    const-string v0, "com.android.settings.bgColor"

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fJ:I

    .line 559
    const-string v0, "com.android.settings.lockBtnWhite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fM:Z

    .line 560
    const-string v0, "com.android.settings.footerTextColor"

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fK:I

    .line 561
    const-string v0, "com.android.settings.forgetPatternColor"

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fL:I

    .line 562
    const-string v0, "com.android.settings.forgetPassword"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fq:Z

    .line 564
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    if-eqz p1, :cond_0

    const-string v0, "account_dialog_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    const-string v1, "account_dialog_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fF:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 237
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/dB;->v(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->ft:I

    .line 158
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/vendorsettings/aQ;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/aQ;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fG:Landroid/database/ContentObserver;

    .line 165
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addExtraFlags(I)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    const v0, 0x7f0400ae

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    const v2, 0x7f13006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    const v2, 0x7f130072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/LockPatternView;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    const v2, 0x7f130139

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-static {v0}, Lcom/android/vendorsettings/dB;->d(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fp:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    const v3, 0x7f13013b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    .line 185
    new-instance v0, Lcom/android/vendorsettings/aR;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/aR;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fF:Landroid/view/View$OnClickListener;

    .line 192
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.xiaomi"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->f(Landroid/content/Intent;)V

    .line 194
    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fq:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fF:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    const v1, 0x7f130071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 206
    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fx:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fI:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fy:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fL:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fJ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    iget-boolean v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fM:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    const v1, 0x7f0201f2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/dB;->a(Lcom/android/vendorsettings/LockPatternView;I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fN:Lcom/android/vendorsettings/dN;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/dN;)V

    .line 218
    sget-object v0, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->fP:Lcom/android/vendorsettings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V

    .line 220
    if-eqz p3, :cond_3

    .line 221
    const-string v0, "num_wrong_attempts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    .line 226
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fz:Landroid/view/View;

    return-object v0

    :cond_1
    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->aG()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fG:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 297
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 298
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 538
    new-instance v1, Lcom/android/vendorsettings/aV;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/aV;-><init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 548
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 264
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fH:I

    invoke-static {v0, v1}, Lcom/android/vendorsettings/dB;->h(Lcom/android/internal/widget/LockPatternUtils;I)J

    move-result-wide v0

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(J)J

    move-result-wide v0

    .line 281
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    .line 287
    sget-object v0, Lcom/android/vendorsettings/ConfirmLockPattern$Stage;->fP:Lcom/android/vendorsettings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 254
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->fm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    return-void
.end method
