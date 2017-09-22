.class final Lcom/android/settings/widget/x;
.super Lcom/android/settings/widget/C;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/C;-><init>(Lcom/android/settings/widget/w;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/w;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/settings/widget/x;-><init>()V

    return-void
.end method

.method private static dv(I)I
    .locals 1

    .prologue
    .line 494
    packed-switch p0, :pswitch_data_0

    .line 504
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 496
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bu(Z)I
    .locals 1

    .prologue
    .line 445
    if-eqz p1, :cond_0

    const v0, 0x7f0200c9

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200c8

    goto :goto_0
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->wH()Lcom/android/b/b/Q;

    move-result-object v0

    if-nez v0, :cond_1

    .line 452
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 453
    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x4

    .line 458
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->a(Lcom/android/b/b/Q;)Lcom/android/b/b/Q;

    .line 458
    :cond_1
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->wH()Lcom/android/b/b/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/x;->dv(I)I

    move-result v0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 482
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 486
    invoke-static {v0}, Lcom/android/settings/widget/x;->dv(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/x;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->wH()Lcom/android/b/b/Q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/android/settings/widget/y;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/y;-><init>(Lcom/android/settings/widget/x;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public wI()I
    .locals 1

    .prologue
    .line 440
    const v0, 0x7f13032c

    return v0
.end method

.method public wJ()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f13032d

    return v0
.end method

.method public wK()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f13032e

    return v0
.end method

.method public wL()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f0c07d6

    return v0
.end method
