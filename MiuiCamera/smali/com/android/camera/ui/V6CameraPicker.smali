.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/AnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mInitEntryValues:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 29
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 31
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method private initEntryValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 70
    iget-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    if-nez v1, :cond_2

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    iput-boolean v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    .line 86
    .end local v0    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    return-void
.end method

.method private isNeedShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reloadPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0
.end method

.method private updateVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 43
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    .line 44
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->initEntryValues()V

    .line 50
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateVisible()V

    .line 51
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->reloadPreference()V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 104
    .local v6, "newCameraFacing":I
    :goto_1
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 105
    .local v7, "oldFacing":I
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09001e

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0

    .end local v6    # "newCameraFacing":I
    .end local v7    # "oldFacing":I
    :cond_2
    move v6, v1

    .line 101
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 121
    const/16 p1, 0x8

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 124
    return-void
.end method
