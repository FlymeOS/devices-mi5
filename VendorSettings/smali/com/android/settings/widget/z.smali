.class final Lcom/android/settings/widget/z;
.super Lcom/android/settings/widget/C;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private azq:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/C;-><init>(Lcom/android/settings/widget/w;)V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/z;->azq:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/w;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/settings/widget/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bu(Z)I
    .locals 1

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget v0, p0, Lcom/android/settings/widget/z;->azq:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :pswitch_0
    const v0, 0x7f0200d2

    .line 530
    :goto_0
    return v0

    .line 524
    :pswitch_1
    const v0, 0x7f0200d1

    goto :goto_0

    .line 530
    :cond_0
    const v0, 0x7f0200d0

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 536
    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/z;->azq:I

    .line 538
    iget v1, p0, Lcom/android/settings/widget/z;->azq:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/z;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/z;->setCurrentState(Landroid/content/Context;I)V

    .line 547
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/android/settings/widget/A;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/widget/A;-><init>(Lcom/android/settings/widget/z;Landroid/content/Context;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/A;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    return-void
.end method

.method public wI()I
    .locals 1

    .prologue
    .line 515
    const v0, 0x7f13032f

    return v0
.end method

.method public wJ()I
    .locals 1

    .prologue
    .line 516
    const v0, 0x7f130330

    return v0
.end method

.method public wK()I
    .locals 1

    .prologue
    .line 517
    const v0, 0x7f130331

    return v0
.end method

.method public wL()I
    .locals 1

    .prologue
    .line 518
    const v0, 0x7f0c07d7

    return v0
.end method
