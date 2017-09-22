.class public Lcom/android/vendorsettings/sound/VolumeStreamStateView;
.super Landroid/widget/ImageView;
.source "VolumeStreamStateView.java"


# static fields
.field private static final arm:[I

.field private static final arn:[I

.field private static final aro:[I


# instance fields
.field private final DEVICE_OUT_ALL_A2DP:I

.field private akt:I

.field private final arp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v3, [I

    const v1, 0x7f010054

    aput v1, v0, v2

    sput-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arm:[I

    .line 15
    new-array v0, v3, [I

    const v1, 0x7f010055

    aput v1, v0, v2

    sput-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arn:[I

    .line 16
    new-array v0, v3, [I

    const v1, 0x7f010056

    aput v1, v0, v2

    sput-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->aro:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arp:I

    .line 21
    const/16 v0, 0x380

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_A2DP:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arp:I

    .line 21
    const/16 v0, 0x380

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_A2DP:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arp:I

    .line 21
    const/16 v0, 0x380

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_A2DP:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arp:I

    .line 21
    const/16 v0, 0x380

    iput v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_A2DP:I

    .line 27
    return-void
.end method


# virtual methods
.method public cA(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    .line 62
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 44
    iget v0, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    iget v2, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    .line 47
    iget v3, p0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->akt:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arm:[I

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->mergeDrawableStates([I[I)[I

    .line 50
    :cond_0
    and-int/lit8 v0, v2, 0xc

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->arn:[I

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->mergeDrawableStates([I[I)[I

    .line 57
    :cond_1
    :goto_0
    return-object v1

    .line 52
    :cond_2
    and-int/lit16 v0, v2, 0x380

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->aro:[I

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sound/VolumeStreamStateView;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method
