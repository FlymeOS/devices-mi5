.class public Lcom/android/settings/IccLockSettings;
.super Lmiui/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/cS;


# instance fields
.field private ci:Lcom/android/internal/telephony/Phone;

.field private gR:Landroid/widget/TabHost;

.field private hT:Landroid/widget/TabHost$TabContentFactory;

.field private hU:Landroid/widget/TabHost$OnTabChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private od:I

.field private oe:Ljava/lang/String;

.field private of:Ljava/lang/String;

.field private og:Ljava/lang/String;

.field private oh:Ljava/lang/String;

.field private oi:Z

.field private oj:Lcom/android/settings/EditPinPreference;

.field private ok:Landroid/preference/CheckBoxPreference;

.field private final ol:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 125
    new-instance v0, Lcom/android/settings/dw;

    invoke-direct {v0, p0}, Lcom/android/settings/dw;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/settings/dx;

    invoke-direct {v0, p0}, Lcom/android/settings/dx;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->ol:Landroid/content/BroadcastReceiver;

    .line 494
    new-instance v0, Lcom/android/settings/dy;

    invoke-direct {v0, p0}, Lcom/android/settings/dy;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->hU:Landroid/widget/TabHost$OnTabChangeListener;

    .line 509
    new-instance v0, Lcom/android/settings/dz;

    invoke-direct {v0, p0}, Lcom/android/settings/dz;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->hT:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method private H(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private K(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0404

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_0
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-object v0

    .line 466
    :cond_0
    if-lez p1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f11000a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->eo()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 438
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->es()V

    .line 439
    return-void

    .line 434
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->K(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->b(ZI)V

    return-void
.end method

.method private b(ZI)V
    .locals 2

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->K(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->es()V

    .line 453
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->gR:Landroid/widget/TabHost;

    return-object v0
.end method

.method private dM()V
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->ep()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->dM()V

    goto :goto_0
.end method

.method private eo()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 251
    goto :goto_0

    :cond_2
    move v1, v2

    .line 252
    goto :goto_1
.end method

.method private ep()V
    .locals 4

    .prologue
    const v3, 0x7f0c03f6

    .line 333
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 334
    const-string v0, ""

    .line 335
    iget v1, p0, Lcom/android/settings/IccLockSettings;->od:I

    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 360
    return-void

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c03f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 341
    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c03f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private eq()V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 428
    return-void
.end method

.method private er()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->og:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 459
    return-void
.end method

.method private es()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 488
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 490
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->ep()V

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 492
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/EditPinPreference;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 363
    if-nez p2, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->es()V

    .line 404
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 372
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    goto :goto_0

    .line 375
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->eq()V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    .line 381
    iput v3, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 382
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 383
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->og:Ljava/lang/String;

    .line 388
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 389
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->og:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 395
    iput v3, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 396
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    goto :goto_0

    .line 399
    :cond_2
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->er()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 172
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    .line 174
    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 248
    :goto_0
    return-void

    .line 179
    :cond_0
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 181
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    .line 182
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    .line 183
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 186
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oe:Ljava/lang/String;

    .line 187
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    .line 188
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    .line 191
    iget v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->a(Lcom/android/settings/cS;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 240
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    .line 244
    :cond_2
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/fy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->ci:Lcom/android/internal/telephony/Phone;

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 247
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->eo()V

    goto :goto_0

    .line 193
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    goto :goto_1

    .line 197
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    .line 198
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->og:Ljava/lang/String;

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 286
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->ol:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 407
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    .line 411
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->ok:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 412
    iput v1, p0, Lcom/android/settings/IccLockSettings;->od:I

    .line 413
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    :cond_1
    move v0, v1

    .line 418
    :goto_0
    return v0

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 415
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->od:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->ol:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    iget v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->dM()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->es()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->dL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->od:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oj:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->oh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->oi:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget v0, p0, Lcom/android/settings/IccLockSettings;->od:I

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 305
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->of:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->og:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
