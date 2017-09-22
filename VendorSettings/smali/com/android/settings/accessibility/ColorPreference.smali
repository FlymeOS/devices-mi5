.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private Dn:Landroid/graphics/drawable/ColorDrawable;

.field private Do:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->setDialogLayoutResource(I)V

    .line 43
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->au(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected at(I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->at(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->av(I)I

    move-result v0

    .line 75
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 76
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 77
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06d9

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->av(I)I

    move-result v2

    .line 115
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 117
    const v0, 0x7f130078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    const/16 v3, 0xff

    if-ge v1, v3, :cond_1

    .line 119
    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 126
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 131
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->at(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const v0, 0x7f130079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindView(Landroid/view/View;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ColorPreference;->Do:Z

    if-eqz v0, :cond_0

    .line 86
    const v0, 0x7f1301a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 88
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 89
    const v2, 0x7f0202f1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->Dn:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_2

    .line 95
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->Dn:Landroid/graphics/drawable/ColorDrawable;

    .line 96
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->Dn:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 110
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->Dn:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 108
    :cond_4
    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_3
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
