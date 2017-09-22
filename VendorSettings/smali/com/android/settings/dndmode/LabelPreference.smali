.class public Lcom/android/vendorsettings/dndmode/LabelPreference;
.super Landroid/preference/Preference;
.source "LabelPreference.java"


# instance fields
.field private aaE:Ljava/lang/String;

.field private aaF:Z

.field private aaG:Z

.field private mLabel:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/dndmode/LabelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v0, Lcom/android/vendorsettings/gt;->ww:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaE:Ljava/lang/String;

    .line 33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mSummary:Ljava/lang/String;

    .line 34
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaF:Z

    .line 35
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaG:Z

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    const v0, 0x7f1300e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f1300e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    const v2, 0x7f1300e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    const v3, 0x7f130079

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    iget-boolean v4, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaG:Z

    if-nez v4, :cond_0

    .line 56
    new-instance v4, Lcom/android/vendorsettings/dndmode/o;

    invoke-direct {v4, p0, v0}, Lcom/android/vendorsettings/dndmode/o;-><init>(Lcom/android/vendorsettings/dndmode/LabelPreference;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    if-eqz v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-boolean v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaF:Z

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaG:Z

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcom/android/vendorsettings/dndmode/p;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/dndmode/p;-><init>(Lcom/android/vendorsettings/dndmode/LabelPreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaE:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->aaE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 94
    return-void

    .line 90
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLayoutResource(I)V

    .line 46
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/LabelPreference;->notifyChanged()V

    .line 101
    :cond_0
    return-void
.end method
