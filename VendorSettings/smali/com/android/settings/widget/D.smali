.class final Lcom/android/vendorsettings/widget/D;
.super Lcom/android/vendorsettings/widget/C;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/C;-><init>(Lcom/android/vendorsettings/widget/w;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/widget/w;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/D;-><init>()V

    return-void
.end method


# virtual methods
.method public bu(Z)I
    .locals 1

    .prologue
    .line 602
    if-eqz p1, :cond_0

    const v0, 0x7f0200d4

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200d3

    goto :goto_0
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 609
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/D;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/widget/D;->setCurrentState(Landroid/content/Context;I)V

    .line 615
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 619
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 621
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 623
    new-instance v1, Lcom/android/vendorsettings/widget/E;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/vendorsettings/widget/E;-><init>(Lcom/android/vendorsettings/widget/D;ZZLandroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/E;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 649
    return-void
.end method

.method public wI()I
    .locals 1

    .prologue
    .line 597
    const v0, 0x7f130332

    return v0
.end method

.method public wJ()I
    .locals 1

    .prologue
    .line 598
    const v0, 0x7f130333

    return v0
.end method

.method public wK()I
    .locals 1

    .prologue
    .line 599
    const v0, 0x7f130334

    return v0
.end method

.method public wL()I
    .locals 1

    .prologue
    .line 600
    const v0, 0x7f0c07d8

    return v0
.end method
