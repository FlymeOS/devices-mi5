.class final Lcom/android/vendorsettings/bluetooth/BluetoothSettings$4;
.super Lcom/android/vendorsettings/search/a;
.source "BluetoothSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/vendorsettings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    const v5, 0x7f0c026d

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 585
    new-instance v0, Lcom/android/vendorsettings/search/n;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 586
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 587
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 588
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {p1}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 598
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 599
    new-instance v4, Lcom/android/vendorsettings/search/n;

    invoke-direct {v4, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 601
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 602
    iput-boolean p2, v4, Lcom/android/vendorsettings/search/n;->enabled:Z

    .line 603
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    :cond_0
    return-object v1
.end method
