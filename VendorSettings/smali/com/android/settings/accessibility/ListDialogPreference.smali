.class public abstract Lcom/android/vendorsettings/accessibility/ListDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ListDialogPreference.java"


# instance fields
.field private Dp:[Ljava/lang/CharSequence;

.field private Dq:[I

.field private Dr:Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;

.field private Ds:I

.field private Dt:I

.field private Du:Z

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/accessibility/ListDialogPreference;)[I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dq:[I

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/accessibility/ListDialogPreference;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Ds:I

    return v0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dr:Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    .line 67
    return-void
.end method

.method public a([I)V
    .locals 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dq:[I

    .line 86
    iget-boolean v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Du:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->aw(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dt:I

    .line 89
    :cond_0
    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dp:[Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method protected at(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dp:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dp:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dp:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public au(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Ds:I

    .line 76
    return-void
.end method

.method protected av(I)I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dq:[I

    aget v0, v0, p1

    return v0
.end method

.method protected aw(I)I
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dq:[I

    .line 179
    if-eqz v1, :cond_1

    .line 180
    array-length v2, v1

    .line 181
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 182
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 188
    :goto_1
    return v0

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected abstract b(Landroid/view/View;I)V
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dt:I

    if-ltz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dt:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->at(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    return v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->getDialogLayoutResource()I

    move-result v1

    .line 145
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/android/vendorsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;

    invoke-direct {v2, p0, v4}, Lcom/android/vendorsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/vendorsettings/accessibility/ListDialogPreference;Lcom/android/vendorsettings/accessibility/ListDialogPreference$1;)V

    .line 147
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v2, Lcom/android/vendorsettings/accessibility/ListDialogPreference$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/vendorsettings/accessibility/ListDialogPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget v2, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->aw(I)I

    move-result v2

    .line 165
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 169
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p1, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    check-cast p1, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;

    .line 253
    invoke-virtual {p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 254
    iget v0, p1, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-object v0

    .line 239
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    iput v0, v1, Lcom/android/vendorsettings/accessibility/ListDialogPreference$SavedState;->value:I

    move-object v0, v1

    .line 241
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->setValue(I)V

    .line 229
    return-void

    .line 228
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 198
    iget v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    if-eq v0, p1, :cond_3

    move v0, v1

    .line 199
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Du:Z

    if-nez v2, :cond_2

    .line 200
    :cond_0
    iput p1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->mValue:I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->aw(I)I

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dt:I

    .line 202
    iput-boolean v1, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Du:Z

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->persistInt(I)Z

    .line 204
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->notifyDependencyChange(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->notifyChanged()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dr:Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->Dr:Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference$OnValueChangedListener;->a(Lcom/android/vendorsettings/accessibility/ListDialogPreference;I)V

    .line 212
    :cond_2
    return-void

    .line 198
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
