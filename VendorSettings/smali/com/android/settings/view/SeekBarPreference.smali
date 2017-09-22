.class public Lcom/android/vendorsettings/view/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mProgress:I

.field private qw:I

.field private yU:Z


# direct methods
.method private h(IZ)V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->qw:I

    if-le p1, v0, :cond_2

    .line 93
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->qw:I

    .line 95
    :goto_0
    if-gez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :cond_0
    iget v1, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 99
    iput v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/view/SeekBarPreference;->persistInt(I)Z

    .line 101
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->notifyChanged()V

    .line 105
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    const v0, 0x7f13015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 43
    iget v1, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->qw:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 44
    iget v1, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 46
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 67
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/view/SeekBarPreference;->setProgress(I)V

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/view/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 129
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->yU:Z

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/view/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    check-cast p1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;

    .line 178
    invoke-virtual {p1}, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 179
    iget v0, p1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    .line 180
    iget v0, p1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->qw:I

    .line 181
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/android/vendorsettings/view/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 163
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;->progress:I

    .line 164
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->qw:I

    iput v0, v1, Lcom/android/vendorsettings/view/SeekBarPreference$SavedState;->max:I

    move-object v0, v1

    .line 165
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 55
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/view/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/view/SeekBarPreference;->setProgress(I)V

    .line 57
    return-void

    .line 55
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->yU:Z

    .line 137
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->yU:Z

    .line 142
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/view/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/view/SeekBarPreference;->h(IZ)V

    .line 89
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 117
    iget v1, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/view/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/view/SeekBarPreference;->h(IZ)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/view/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
