.class public Lcom/android/vendorsettings/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mProgress:I

.field private qw:I

.field private yU:Z

.field private yV:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const v0, 0x7f040136

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SeekBarPreference;->setLayoutResource(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public V(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/vendorsettings/SeekBarPreference;->yV:Z

    .line 90
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h(IZ)V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    if-le p1, v0, :cond_2

    .line 98
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    .line 100
    :goto_0
    if-gez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :cond_0
    iget v1, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 104
    iput v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SeekBarPreference;->persistInt(I)Z

    .line 106
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->notifyChanged()V

    .line 110
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f13015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    iget v1, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget v1, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 47
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
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

    .line 67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 68
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/SeekBarPreference;->setProgress(I)V

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 134
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->yU:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->yV:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 137
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    check-cast p1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    .line 183
    invoke-virtual {p1}, Lcom/android/vendorsettings/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 184
    iget v0, p1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    .line 185
    iget v0, p1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    .line 186
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 168
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;->progress:I

    .line 169
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    iput v0, v1, Lcom/android/vendorsettings/SeekBarPreference$SavedState;->max:I

    move-object v0, v1

    .line 170
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SeekBarPreference;->setProgress(I)V

    .line 58
    return-void

    .line 56
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->yU:Z

    .line 142
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->yU:Z

    .line 147
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    if-eq p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/android/vendorsettings/SeekBarPreference;->qw:I

    .line 84
    invoke-virtual {p0}, Lcom/android/vendorsettings/SeekBarPreference;->notifyChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/SeekBarPreference;->h(IZ)V

    .line 94
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 122
    iget v1, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/SeekBarPreference;->h(IZ)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
