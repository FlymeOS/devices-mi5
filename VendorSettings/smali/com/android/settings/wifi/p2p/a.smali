.class public Lcom/android/settings/wifi/p2p/a;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final azH:[I


# instance fields
.field private final aFZ:I

.field private aGa:Landroid/widget/ImageView;

.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010016

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/p2p/a;->azH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 42
    const v0, 0x7f0400fb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/a;->setWidgetLayoutResource(I)V

    .line 43
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings/wifi/p2p/a;->aFZ:I

    .line 44
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/a;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/a;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 70
    instance-of v1, p1, Lcom/android/settings/wifi/p2p/a;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/p2p/a;

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v1, v2, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/a;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/wifi/p2p/a;->aFZ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/p2p/a;->aFZ:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    const v0, 0x7f1301e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    .line 54
    iget v0, p0, Lcom/android/settings/wifi/p2p/a;->aFZ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_1
    const v0, 0x7f1301db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/a;->refresh()V

    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/a;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    const v1, 0x7f0202fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->aGa:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/wifi/p2p/a;->azH:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1
.end method
