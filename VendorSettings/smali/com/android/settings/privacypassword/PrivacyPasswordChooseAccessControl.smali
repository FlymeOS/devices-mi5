.class public Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.super Landroid/app/Activity;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected anm:Landroid/widget/TextView;

.field protected ann:Landroid/widget/TextView;

.field protected ano:Landroid/widget/TextView;

.field protected anp:Lcom/android/settings/LockPatternView;

.field protected anq:Landroid/widget/ImageView;

.field protected anr:Landroid/view/View;

.field private ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field private ant:Landroid/view/View$OnClickListener;

.field private en:Landroid/widget/TextView;

.field private eo:Landroid/widget/TextView;

.field protected ep:Ljava/util/List;

.field private final eq:Ljava/util/List;

.field protected er:Lcom/android/settings/dN;

.field private et:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/settings/privacypassword/LPUtils;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eq:Ljava/util/List;

    .line 124
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anJ:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 125
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->et:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->er:Lcom/android/settings/dN;

    .line 179
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ant:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->et:Ljava/lang/Runnable;

    return-object v0
.end method

.method private aC()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 340
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->et:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method

.method static synthetic b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 261
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 262
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anL:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anA:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :goto_1
    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anH:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :goto_2
    iget-boolean v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->enableInput()V

    .line 290
    :goto_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->pz:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 291
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$5;->anv:[I

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_4
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anm:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    iget v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->disableInput()V

    goto :goto_3

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->pA:Lcom/android/settings/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eq:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->pB:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 303
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->aC()V

    goto :goto_4

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$4;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$4;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ap()V
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anJ:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    .line 320
    return-void
.end method

.method protected aq()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ap()V

    .line 336
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    .line 329
    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    .line 330
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 331
    iget-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    invoke-virtual {v1, v3, v2}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPatternAsUser(Ljava/util/List;I)V

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    .line 333
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->setResult(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->finish()V

    .line 335
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(JLandroid/content/Context;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->any:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 231
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anJ:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anw:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->finish()V

    goto :goto_0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed , but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anC:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 240
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anM:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_4

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anC:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anN:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anE:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 245
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_6

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anE:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->aq()V

    goto/16 :goto_0

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anG:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anK:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_8

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ans:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->pz:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 255
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anJ:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->setContentView(I)V

    .line 192
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->tJ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->setRequestedOrientation(I)V

    .line 196
    :cond_0
    const v0, 0x7f1301ea

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ano:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f1301e8

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ann:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ann:Landroid/widget/TextView;

    const v1, 0x7f0c11cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "privacy_password_extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    const-string v1, "ModifyPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ano:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ann:Landroid/widget/TextView;

    const v1, 0x7f0c11d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :cond_1
    const v0, 0x7f1301eb

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anm:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f1301e9

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anq:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f1301e7

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anr:Landroid/view/View;

    .line 208
    const v0, 0x7f1301ec

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    .line 209
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->er:Lcom/android/settings/dN;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/dN;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ann:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ant:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f130073

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f130074

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->en:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->eo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f130071

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 219
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ap()V

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(Landroid/app/Activity;Z)V

    .line 223
    return-void
.end method
