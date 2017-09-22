.class public Lcom/android/vendorsettings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static azD:[I


# instance fields
.field private azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

.field private azB:Landroid/widget/TextView;

.field private azC:Ljava/util/ArrayList;

.field private final azz:Landroid/text/style/TextAppearanceSpan;

.field private mLabel:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/widget/SwitchBar;->azD:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010031
        0x7f010032
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040177

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    sget-object v0, Lcom/android/vendorsettings/widget/SwitchBar;->azD:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    const v0, 0x7f1302db

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azB:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0abc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0053

    invoke-direct {v0, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azz:Landroid/text/style/TextAppearanceSpan;

    .line 90
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->wN()V

    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azB:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    const v0, 0x7f1302dc

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/ToggleSwitch;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0, v5}, Lcom/android/vendorsettings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 101
    new-instance v0, Lcom/android/vendorsettings/widget/H;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/widget/H;-><init>(Lcom/android/vendorsettings/widget/SwitchBar;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->a(Lcom/android/vendorsettings/widget/I;)V

    .line 108
    invoke-virtual {p0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->setVisibility(I)V

    .line 112
    return-void
.end method

.method private wN()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    iget-object v2, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azz:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v1, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/widget/I;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public b(Lcom/android/vendorsettings/widget/I;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public bv(Z)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0abb

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->wN()V

    .line 118
    return-void

    .line 115
    :cond_0
    const v0, 0x7f0c0abc

    goto :goto_0
.end method

.method public bw(Z)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/SwitchBar;->bv(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/ToggleSwitch;->bw(Z)V

    .line 145
    return-void
.end method

.method public bx(Z)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/I;

    iget-object v3, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-interface {v0, v3, p1}, Lcom/android/vendorsettings/widget/I;->a(Landroid/widget/Switch;Z)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/widget/SwitchBar;->bx(Z)V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->setChecked(Z)V

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 270
    check-cast p1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;

    .line 272
    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    iget-boolean v1, p1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ToggleSwitch;->bw(Z)V

    .line 275
    iget-boolean v0, p1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->bv(Z)V

    .line 276
    iget-boolean v0, p1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    iget-boolean v0, p1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->requestLayout()V

    .line 280
    return-void

    .line 276
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 263
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->checked:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/vendorsettings/widget/SwitchBar$SavedState;->visible:Z

    .line 265
    return-object v1
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/SwitchBar;->bv(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/ToggleSwitch;->setChecked(Z)V

    .line 140
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 155
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/SwitchBar;->hide()V

    .line 169
    return-void
.end method

.method public final wO()Lcom/android/vendorsettings/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/widget/SwitchBar;->azA:Lcom/android/vendorsettings/widget/ToggleSwitch;

    return-object v0
.end method
