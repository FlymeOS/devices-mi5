.class public Lcom/android/vendorsettings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final ef:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

.field private final et:Ljava/lang/Runnable;

.field private gf:Z

.field private gg:Z

.field private gh:Z

.field private gi:Z

.field private gj:Z

.field private gk:Z

.field private gl:Landroid/widget/EditText;

.field private gm:Lcom/android/internal/widget/LockPatternView;

.field private gn:Lmiui/view/MiuiKeyBoardView;

.field private go:I

.field private gp:I

.field private gq:I

.field private final gr:Ljava/lang/Runnable;

.field private gs:Landroid/app/StatusBarManager;

.field protected gt:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-boolean v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gk:Z

    .line 138
    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->go:I

    .line 140
    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gp:I

    .line 141
    const v0, 0x7f0c0870

    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gq:I

    .line 151
    new-instance v0, Lcom/android/vendorsettings/bb;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bb;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gr:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/vendorsettings/bc;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bc;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->et:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/vendorsettings/bd;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bd;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 755
    new-instance v0, Lcom/android/vendorsettings/bg;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bg;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gt:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 783
    new-instance v0, Lcom/android/vendorsettings/bh;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bh;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->ef:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/android/vendorsettings/CryptKeeper;->gq:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->aX()V

    .line 752
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/CryptKeeper;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/CryptKeeper;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;ZZ)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/CryptKeeper;->b(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->et:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    .line 265
    iput-boolean v6, p0, Lcom/android/vendorsettings/CryptKeeper;->gk:Z

    .line 268
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bd()V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    const v0, 0x7f130048

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1e

    .line 273
    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    .line 274
    const v3, 0x7f0c0225

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 275
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 309
    invoke-direct {p0, v6}, Lcom/android/vendorsettings/CryptKeeper;->j(Z)V

    goto :goto_0

    .line 281
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 282
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 288
    const v1, 0x7f0c0875

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 283
    :catch_0
    move-exception v1

    .line 284
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling mount service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    .line 289
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 290
    const v1, 0x7f0c0873

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 292
    :cond_6
    const v1, 0x7f0c0874

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/vendorsettings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vendorsettings/CryptKeeper;->gj:Z

    return p1
.end method

.method private aX()V
    .locals 2

    .prologue
    .line 253
    const v0, 0x7f130048

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    const v1, 0x7f0c0876

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    return-void
.end method

.method private aY()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private aZ()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 395
    iget v0, p0, Lcom/android/vendorsettings/CryptKeeper;->go:I

    if-lez v0, :cond_2

    .line 396
    iget v0, p0, Lcom/android/vendorsettings/CryptKeeper;->go:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->go:I

    .line 410
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gp:I

    if-lez v0, :cond_3

    .line 415
    iget v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gp:I

    .line 420
    :cond_1
    :goto_1
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->aX()V

    return-void
.end method

.method private b(ZZ)V
    .locals 5

    .prologue
    const v4, 0x7f130061

    const v3, 0x7f130048

    const/4 v2, 0x0

    .line 631
    const v0, 0x7f13008c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    const v0, 0x7f130091

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 635
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    new-instance v1, Lcom/android/vendorsettings/bf;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/vendorsettings/bf;-><init>(Lcom/android/vendorsettings/CryptKeeper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0229

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 665
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 671
    :goto_0
    const v0, 0x7f130092

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    return-void

    .line 667
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0227

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vendorsettings/CryptKeeper;->gf:Z

    return p1
.end method

.method private ba()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f04004a

    .line 490
    iget-boolean v1, p0, Lcom/android/vendorsettings/CryptKeeper;->gh:Z

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/CryptKeeper;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->setContentView(I)V

    .line 492
    iget-boolean v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gi:Z

    iget-boolean v1, p0, Lcom/android/vendorsettings/CryptKeeper;->gj:Z

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/CryptKeeper;->b(ZZ)V

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "progress"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/CryptKeeper;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 498
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->setContentView(I)V

    .line 499
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bb()V

    goto :goto_0

    .line 500
    :cond_4
    iget-boolean v1, p0, Lcom/android/vendorsettings/CryptKeeper;->gf:Z

    if-nez v1, :cond_5

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/CryptKeeper;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 501
    :cond_5
    new-instance v0, Lcom/android/vendorsettings/be;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/be;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/be;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 560
    :cond_6
    iget-boolean v1, p0, Lcom/android/vendorsettings/CryptKeeper;->gg:Z

    if-nez v1, :cond_1

    .line 562
    new-instance v1, Lcom/android/vendorsettings/bl;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/bl;-><init>(Lcom/android/vendorsettings/CryptKeeper;Lcom/android/vendorsettings/bb;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/bl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gg:Z

    goto :goto_0
.end method

.method private bb()V
    .locals 3

    .prologue
    .line 605
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 607
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 609
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 610
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 613
    :cond_0
    const v0, 0x7f130090

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->j(Z)V

    .line 618
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bc()V

    .line 619
    return-void
.end method

.method private bc()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 679
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string v2, "error_partially_encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-direct {p0, v1, v1}, Lcom/android/vendorsettings/CryptKeeper;->b(ZZ)V

    .line 720
    :goto_0
    return-void

    .line 687
    :cond_0
    const v2, 0x7f0c0222

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->aY()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x32

    .line 695
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encryption progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :try_start_1
    const-string v3, "vold.encrypt_time_remaining"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 702
    if-ltz v3, :cond_1

    .line 704
    add-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    .line 705
    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 706
    const v3, 0x7f0c0223

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_1
    move-object v3, v2

    move-object v2, v0

    .line 712
    :goto_2
    const v0, 0x7f130048

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 713
    if-eqz v0, :cond_2

    .line 714
    new-array v4, v6, [Ljava/lang/CharSequence;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 691
    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    .line 708
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_2
.end method

.method private bd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 734
    :cond_1
    const v0, 0x7f130048

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 735
    const v1, 0x7f0c0224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 736
    return-void
.end method

.method private be()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 820
    const v0, 0x7f13008e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    .line 822
    const v0, 0x7f130070

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gn:Lmiui/view/MiuiKeyBoardView;

    .line 823
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 828
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 829
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 830
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 832
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gn:Lmiui/view/MiuiKeyBoardView;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->ef:Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V

    .line 836
    :cond_0
    const v0, 0x7f130072

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    .line 837
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gm:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->gt:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 843
    const v0, 0x7f130089

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_2

    .line 845
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    .line 869
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 871
    if-eqz v0, :cond_3

    .line 872
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 873
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 876
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gp:I

    .line 892
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bg()V

    .line 894
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 895
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 898
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 900
    return-void
.end method

.method private final bf()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1008
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1010
    :goto_0
    if-nez v0, :cond_0

    .line 1011
    const-string v0, "CryptKeeper"

    const-string v2, "Going into airplane mode."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1013
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1014
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1015
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1017
    :cond_0
    return-void

    .line 1008
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bg()V
    .locals 2

    .prologue
    .line 1026
    const v0, 0x7f130089

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1028
    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1033
    new-instance v1, Lcom/android/vendorsettings/bi;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/bi;-><init>(Lcom/android/vendorsettings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bk()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1048
    const v1, 0x7f0c090c

    .line 1052
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1041
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1050
    :cond_2
    const v1, 0x7f0c090b

    goto :goto_1
.end method

.method private bh()Z
    .locals 2

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private bi()V
    .locals 2

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bk()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bj()V

    goto :goto_0
.end method

.method private bj()V
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1073
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/CryptKeeper;->j(Z)V

    .line 1074
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method

.method private bk()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1082
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private bl()V
    .locals 1

    .prologue
    .line 1089
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/vendorsettings/CryptKeeper;->go:I

    .line 1090
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vendorsettings/CryptKeeper;->gh:Z

    return p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->et:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vendorsettings/CryptKeeper;->gi:Z

    return p1
.end method

.method private static e(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1121
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/vendorsettings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1122
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1125
    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/CryptKeeper;Z)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/CryptKeeper;->j(Z)V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/CryptKeeper;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gj:Z

    return v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->ba()V

    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bc()V

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 953
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_0

    .line 955
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 957
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1078
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->aZ()V

    return-void
.end method

.method static synthetic i(Lcom/android/vendorsettings/CryptKeeper;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gq:I

    return v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->be()V

    return-void
.end method

.method private final j(Z)V
    .locals 2

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gs:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gs:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/vendorsettings/CryptKeeper;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gk:Z

    return v0
.end method

.method static synthetic l(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bd()V

    return-void
.end method

.method static synthetic m(Lcom/android/vendorsettings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gl:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bi()V

    return-void
.end method

.method private t(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 437
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->aY()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/android/vendorsettings/CryptKeeper;->e(Landroid/content/Context;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->finish()V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_3
    :goto_1
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gs:Landroid/app/StatusBarManager;

    .line 461
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->gs:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 463
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bf()V

    .line 464
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 466
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 467
    instance-of v1, v0, Lcom/android/vendorsettings/bk;

    if-eqz v1, :cond_1

    .line 468
    check-cast v0, Lcom/android/vendorsettings/bk;

    .line 469
    iget-object v0, v0, Lcom/android/vendorsettings/bk;->gB:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 591
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 596
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bl()V

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 581
    new-instance v0, Lcom/android/vendorsettings/bk;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/bk;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 582
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vendorsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 482
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->ba()V

    .line 483
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 570
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bl()V

    .line 1112
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeper;->bl()V

    .line 1101
    const/4 v0, 0x0

    return v0
.end method
