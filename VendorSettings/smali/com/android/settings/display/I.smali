.class public Lcom/android/vendorsettings/display/I;
.super Landroid/preference/Preference;
.source "ScreenColorSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private ZA:I

.field private ZB:[Ljava/lang/CharSequence;

.field private Zu:Landroid/content/res/ColorStateList;

.field private Zv:Landroid/content/res/ColorStateList;

.field private Zy:D

.field private Zz:I

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/display/I;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/display/I;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    .line 46
    invoke-direct {p0}, Lcom/android/vendorsettings/display/I;->pE()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/I;->Zv:Landroid/content/res/ColorStateList;

    .line 47
    return-void
.end method

.method private a(Landroid/widget/SeekBar;I)V
    .locals 6

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    int-to-double v0, p2

    iget-wide v2, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 143
    iget v0, p0, Lcom/android/vendorsettings/display/I;->ZA:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 145
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private bQ(I)I
    .locals 6

    .prologue
    .line 176
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private bR(I)I
    .locals 4

    .prologue
    .line 180
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/vendorsettings/display/I;->Zy:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private pE()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 184
    new-array v0, v6, [I

    const v1, 0x10100a1

    aput v1, v0, v7

    .line 185
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 187
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 188
    new-array v4, v5, [[I

    .line 189
    new-array v5, v5, [I

    .line 190
    aput-object v0, v4, v7

    .line 191
    sget v0, Lmiui/R$attr;->textColorChecked:I

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 192
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v5, v7

    .line 193
    new-array v0, v6, [I

    aput-object v0, v4, v6

    .line 194
    sget v0, Lmiui/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 195
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v5, v6

    .line 196
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public b([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/vendorsettings/display/I;->ZB:[Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public bP(I)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/I;->b([Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    const v0, 0x7f13015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 105
    iget v1, p0, Lcom/android/vendorsettings/display/I;->mLevel:I

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/display/I;->bR(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/display/I;->a(Landroid/widget/SeekBar;I)V

    .line 106
    const v0, 0x7f1301c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v2, v3

    .line 107
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    iget-object v4, p0, Lcom/android/vendorsettings/display/I;->ZB:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v4, p0, Lcom/android/vendorsettings/display/I;->mLevel:I

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    iget-object v4, p0, Lcom/android/vendorsettings/display/I;->Zu:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vendorsettings/display/I;->Zu:Landroid/content/res/ColorStateList;

    .line 114
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/vendorsettings/display/I;->Zv:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 107
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 110
    goto :goto_1

    .line 114
    :cond_2
    iget-object v4, p0, Lcom/android/vendorsettings/display/I;->Zv:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/android/vendorsettings/display/I;->Zu:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_2

    .line 118
    :cond_3
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x5

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    const v1, 0x7f0400ea

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f13015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/display/I;->Zz:I

    .line 68
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/vendorsettings/display/I;->ZA:I

    .line 72
    :cond_0
    const v2, 0x7f1301c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v2, v6, v7, v1, v8}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 76
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 77
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    move v6, v3

    .line 79
    :goto_1
    if-ge v6, v4, :cond_6

    .line 80
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v9, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    if-nez v6, :cond_3

    .line 83
    if-nez v7, :cond_2

    move v1, v4

    :goto_2
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 94
    :goto_3
    invoke-virtual {v2, v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 83
    goto :goto_2

    .line 86
    :cond_3
    const/4 v1, 0x2

    if-ne v6, v1, :cond_5

    .line 87
    if-nez v7, :cond_4

    move v1, v5

    :goto_4
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_4
    move v1, v4

    .line 87
    goto :goto_4

    .line 91
    :cond_5
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    .line 97
    :cond_6
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 158
    if-nez p3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/display/I;->bQ(I)I

    move-result v0

    .line 162
    iget v1, p0, Lcom/android/vendorsettings/display/I;->mLevel:I

    if-eq v0, v1, :cond_0

    .line 163
    iput v0, p0, Lcom/android/vendorsettings/display/I;->mLevel:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/I;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/vendorsettings/display/I;->Zz:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->notifyChanged()V

    .line 173
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/android/vendorsettings/display/I;->mLevel:I

    .line 134
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/I;->notifyChanged()V

    .line 135
    return-void
.end method
