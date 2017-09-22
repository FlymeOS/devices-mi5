.class public Lcom/android/updater/ApplyUpdateFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "ApplyUpdateFragment.java"


# static fields
.field private static Vx:J

.field private static aMq:Ljava/lang/String;

.field private static aMr:Ljava/lang/String;

.field private static aMs:J

.field private static aMt:Z

.field private static aMu:Z

.field private static aMv:I

.field private static mCurrentProgress:I


# instance fields
.field private aMA:Landroid/view/View;

.field private aMB:Landroid/widget/Button;

.field private aMC:Landroid/widget/TextView;

.field private aMD:Landroid/widget/LinearLayout;

.field private aME:Landroid/widget/LinearLayout;

.field private aMF:Landroid/widget/ProgressBar;

.field private aMG:Landroid/widget/TextView;

.field private aMH:Landroid/widget/TextView;

.field private aMI:I

.field private aMJ:I

.field aMK:Landroid/app/ProgressDialog;

.field private aML:I

.field private aMM:Landroid/content/BroadcastReceiver;

.field private aMN:Landroid/content/BroadcastReceiver;

.field private aMO:Landroid/content/BroadcastReceiver;

.field private aMw:Lcom/android/updater/k;

.field protected aMx:Lcom/android/updater/a/a;

.field private aMy:Landroid/widget/TextView;

.field private aMz:Landroid/webkit/WebView;

.field private dY:Landroid/widget/Button;

.field protected mActivity:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 443
    new-instance v0, Lcom/android/updater/g;

    invoke-direct {v0, p0}, Lcom/android/updater/g;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMM:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v0, Lcom/android/updater/h;

    invoke-direct {v0, p0}, Lcom/android/updater/h;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMN:Landroid/content/BroadcastReceiver;

    .line 493
    new-instance v0, Lcom/android/updater/j;

    invoke-direct {v0, p0}, Lcom/android/updater/j;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMO:Landroid/content/BroadcastReceiver;

    .line 84
    return-void
.end method

.method static synthetic A(J)J
    .locals 0

    .prologue
    .line 45
    sput-wide p0, Lcom/android/updater/ApplyUpdateFragment;->aMs:J

    return-wide p0
.end method

.method private Bg()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_reboot_now"

    invoke-static {v0, v1, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMy:Landroid/widget/TextView;

    const v1, 0x7f0c0ff4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bi()V

    .line 243
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_new_version_found"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/updater/a/b;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const v0, 0x7f0c0fe8

    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMK:Landroid/app/ProgressDialog;

    .line 239
    invoke-direct {p0, v3}, Lcom/android/updater/ApplyUpdateFragment;->bU(Z)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/updater/ApplyUpdateFragment;->bU(Z)V

    goto :goto_0
.end method

.method private Bh()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0fee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fec

    new-instance v2, Lcom/android/updater/f;

    invoke-direct {v2, p0}, Lcom/android/updater/f;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fdf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 322
    return-void
.end method

.method private Bi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 479
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aME:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    const v1, 0x7f0c0feb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 484
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    new-instance v1, Lcom/android/updater/i;

    invoke-direct {v1, p0}, Lcom/android/updater/i;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    return-void
.end method

.method private Bj()V
    .locals 3

    .prologue
    .line 528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0fef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fe1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fdf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0fe0

    new-instance v2, Lcom/android/updater/b;

    invoke-direct {v2, p0}, Lcom/android/updater/b;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 540
    return-void
.end method

.method private Bk()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 557
    const-string v0, "notify updater to force update"

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.action.CHECK_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    const-string v1, "force-update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_manual_update"

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 562
    return-void
.end method

.method private Bl()V
    .locals 3

    .prologue
    .line 565
    const-string v0, "notify updater to cancel update"

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.action.CHECK_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    const-string v1, "cancel-update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 568
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_manual_update"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 570
    return-void
.end method

.method private C(II)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 507
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aME:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMC:Landroid/widget/TextView;

    const v1, 0x7f0c0fea

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMF:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 513
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMF:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 514
    return-void
.end method

.method static synthetic a(Lcom/android/updater/ApplyUpdateFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMJ:I

    return p1
.end method

.method static synthetic a(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bj()V

    return-void
.end method

.method static synthetic a(Lcom/android/updater/ApplyUpdateFragment;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ApplyUpdateFragment;->C(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/updater/ApplyUpdateFragment;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/updater/ApplyUpdateFragment;->bU(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/updater/ApplyUpdateFragment;ZJJ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/android/updater/ApplyUpdateFragment;->a(ZJJ)V

    return-void
.end method

.method private a(ZJJ)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v7, 0x1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v6, 0x0

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iput v7, p0, Lcom/android/updater/ApplyUpdateFragment;->aMJ:I

    .line 327
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMH:Landroid/widget/TextView;

    const v1, 0x7f0c0fdb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    const-string v0, "%.1f / %.1fMB"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    long-to-double v2, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    long-to-double v2, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    long-to-double v2, p2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    long-to-double v4, p4

    div-double/2addr v2, v4

    .line 335
    double-to-int v1, v2

    iput v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMI:I

    .line 336
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMG:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 339
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMI:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 341
    sput-wide p2, Lcom/android/updater/ApplyUpdateFragment;->aMs:J

    .line 342
    sput-wide p4, Lcom/android/updater/ApplyUpdateFragment;->Vx:J

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_0
    iput v6, p0, Lcom/android/updater/ApplyUpdateFragment;->aMJ:I

    .line 345
    iput v6, p0, Lcom/android/updater/ApplyUpdateFragment;->aMI:I

    .line 346
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMG:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMI:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 348
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    invoke-virtual {p0, v3, v6, v3, v6}, Lcom/android/updater/ApplyUpdateFragment;->a(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bh()V

    return-void
.end method

.method static synthetic b(Lcom/android/updater/ApplyUpdateFragment;I)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/updater/ApplyUpdateFragment;->eg(I)Z

    move-result v0

    return v0
.end method

.method private bU(Z)V
    .locals 3

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no update info exist, ask to check update: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.action.CHECK_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    const-string v1, "current"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const-string v1, "force-update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method static synthetic c(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bk()V

    return-void
.end method

.method static synthetic cw(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/android/updater/ApplyUpdateFragment;->aMr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cx(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/android/updater/ApplyUpdateFragment;->aMq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/android/updater/ApplyUpdateFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMJ:I

    return v0
.end method

.method static synthetic e(Lcom/android/updater/ApplyUpdateFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aML:I

    return v0
.end method

.method private eg(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 573
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic eh(I)I
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/android/updater/ApplyUpdateFragment;->mCurrentProgress:I

    return p0
.end method

.method static synthetic ei(I)I
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/android/updater/ApplyUpdateFragment;->aMv:I

    return p0
.end method

.method static synthetic f(Lcom/android/updater/ApplyUpdateFragment;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aML:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aML:I

    return v0
.end method

.method static synthetic g(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bi()V

    return-void
.end method

.method static synthetic h(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aME:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bl()V

    return-void
.end method

.method static synthetic z(J)J
    .locals 0

    .prologue
    .line 45
    sput-wide p0, Lcom/android/updater/ApplyUpdateFragment;->Vx:J

    return-wide p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f040017

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method a(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initUI:  showCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " durl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 249
    iput v2, p0, Lcom/android/updater/ApplyUpdateFragment;->aMJ:I

    .line 250
    if-eqz p4, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v0}, Lcom/android/updater/a/a;->Bn()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v1}, Lcom/android/updater/a/a;->getVersion()Ljava/lang/String;

    move-result-object v1

    move p2, v2

    .line 256
    :goto_0
    if-nez v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v0}, Lcom/android/updater/a/a;->Bn()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v1}, Lcom/android/updater/a/a;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    if-eqz p2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0fe3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    const v2, 0x7f0c0fde

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 265
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    new-instance v2, Lcom/android/updater/d;

    invoke-direct {v2, p0}, Lcom/android/updater/d;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    :goto_2
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMy:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0, v6}, Lcom/android/updater/ApplyUpdateFragment;->cv(Ljava/lang/String;)V

    .line 306
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0fe2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    if-eqz p4, :cond_1

    .line 291
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v0}, Lcom/android/updater/a/a;->Bo()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v0}, Lcom/android/updater/a/a;->getTotalBytes()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/updater/ApplyUpdateFragment;->a(ZJJ)V

    move-object v0, v8

    goto :goto_2

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    const v1, 0x7f0c0fdd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    new-instance v1, Lcom/android/updater/e;

    invoke-direct {v1, p0}, Lcom/android/updater/e;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v8

    goto :goto_2

    :cond_2
    move-object v6, v0

    move-object v7, v1

    goto :goto_1

    :cond_3
    move-object v0, p3

    move-object v1, p1

    goto/16 :goto_0
.end method

.method protected cv(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 524
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    .line 118
    new-instance v0, Lcom/android/updater/a/a;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/updater/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    .line 120
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 122
    const v0, 0x7f13002d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMy:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f13002e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    .line 124
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 127
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMz:Landroid/webkit/WebView;

    new-instance v4, Lcom/android/updater/a;

    invoke-direct {v4, p0}, Lcom/android/updater/a;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 160
    const v0, 0x7f130037

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMF:Landroid/widget/ProgressBar;

    .line 161
    const v0, 0x7f130035

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aME:Landroid/widget/LinearLayout;

    .line 162
    const v0, 0x7f130036

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMC:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMC:Landroid/widget/TextView;

    const v4, 0x7f0c0fea

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "0%"

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v0, 0x7f130038

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    .line 166
    const v0, 0x7f130039

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMB:Landroid/widget/Button;

    .line 168
    const v0, 0x7f130030

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    .line 169
    const v0, 0x7f130033

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 170
    const v0, 0x7f130032

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMG:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f130034

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->dY:Landroid/widget/Button;

    .line 172
    const v0, 0x7f130031

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMH:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->dY:Landroid/widget/Button;

    new-instance v3, Lcom/android/updater/c;

    invoke-direct {v3, p0}, Lcom/android/updater/c;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v0, Lcom/android/updater/k;

    invoke-direct {v0, p0}, Lcom/android/updater/k;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMw:Lcom/android/updater/k;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.updater.action.UPDATE_CHECKED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->aMw:Lcom/android/updater/k;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.updater.UPDTAE_PROGRESS"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->aMM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.updater.UPDTAE_FINISH"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->aMN:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.updater.action.CANCEL_DOWNLOAD_FULLPACKAGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->aMO:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMA:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "update_new_rom_failed"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate:  mIsApplyingShown="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v4, Lcom/android/updater/ApplyUpdateFragment;->aMu:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mIsDownloadingShown="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v4, Lcom/android/updater/ApplyUpdateFragment;->aMt:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mDescriptionUrl = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/updater/ApplyUpdateFragment;->aMr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mTotalSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/android/updater/ApplyUpdateFragment;->Vx:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mCurrentSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/android/updater/ApplyUpdateFragment;->aMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mNewVersion = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/updater/ApplyUpdateFragment;->aMq:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " updateFailed = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 207
    if-ne v3, v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bg()V

    .line 209
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_new_rom_failed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    .line 212
    :cond_1
    sget-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->aMu:Z

    if-eqz v0, :cond_2

    .line 213
    sget-object v0, Lcom/android/updater/ApplyUpdateFragment;->aMr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->cv(Ljava/lang/String;)V

    .line 214
    sget v0, Lcom/android/updater/ApplyUpdateFragment;->aMv:I

    sget v1, Lcom/android/updater/ApplyUpdateFragment;->mCurrentProgress:I

    invoke-direct {p0, v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->C(II)V

    goto :goto_1

    .line 215
    :cond_2
    sget-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->aMt:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/updater/ApplyUpdateFragment;->aMq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/updater/ApplyUpdateFragment;->aMr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    sget-object v0, Lcom/android/updater/ApplyUpdateFragment;->aMq:Ljava/lang/String;

    sget-object v3, Lcom/android/updater/ApplyUpdateFragment;->aMr:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/updater/ApplyUpdateFragment;->a(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_1

    .line 219
    :cond_3
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->Bg()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->setThemeRes(I)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMw:Lcom/android/updater/k;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMw:Lcom/android/updater/k;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMN:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->aMO:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onDestroy()V

    .line 376
    return-void

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onPause()V

    .line 357
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aMD:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->aMt:Z

    .line 358
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->aME:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->aMu:Z

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause mIsDownloadingShown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->aMt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsApplyingShown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->aMu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 361
    return-void

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    :cond_1
    move v1, v2

    .line 358
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 104
    :cond_0
    return-void
.end method
