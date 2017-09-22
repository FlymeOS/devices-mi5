.class public Lcom/android/vendorsettings/PointerSpeedPreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final vH:Landroid/hardware/input/InputManager;

.field private vI:Landroid/widget/SeekBar;

.field private vJ:I

.field private vK:Z

.field private vL:Z

.field private vM:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/vendorsettings/gd;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/gd;-><init>(Lcom/android/vendorsettings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vM:Landroid/database/ContentObserver;

    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/PointerSpeedPreference;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->gw()V

    return-void
.end method

.method private gw()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    return-void
.end method

.method private gx()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vK:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vJ:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vK:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    invoke-static {p1}, Lcom/android/vendorsettings/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Lmiui/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vJ:I

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vJ:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vM:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->gx()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vL:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_1
    check-cast p1, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;

    .line 145
    invoke-virtual {p1}, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 146
    iget v0, p1, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->vO:I

    iput v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vJ:I

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    iget v1, p1, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lmiui/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 133
    :goto_0
    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 128
    iget-object v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vI:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->progress:I

    .line 129
    iget v1, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vJ:I

    iput v1, v0, Lcom/android/vendorsettings/PointerSpeedPreference$SavedState;->vO:I

    .line 132
    invoke-direct {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->gx()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vL:Z

    .line 86
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vL:Z

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vH:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 91
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vM:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/PointerSpeedPreference;->vK:Z

    .line 65
    return-void
.end method
