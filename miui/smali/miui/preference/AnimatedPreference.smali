.class public Lmiui/preference/AnimatedPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"


# static fields
.field private static final Dh:I = 0x0

.field private static final Di:I = 0x1

.field private static final Dj:I = 0x2

.field private static final Dk:I = 0x4


# instance fields
.field private Dl:I

.field private Dm:Landroid/graphics/drawable/Drawable;

.field private Dn:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/AnimatedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    .line 71
    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    .line 57
    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    .line 58
    return-void
.end method

.method private e(IZ)V
    .locals 2

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    .line 180
    :goto_0
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 181
    return-void

    .line 178
    :cond_0
    iget v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    goto :goto_0
.end method


# virtual methods
.method public isAnimateFinish()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimateVisible()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lmiui/preference/AnimatedPreference;->Dl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 77
    sget v0, Lcom/miui/internal/R$id;->animate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/AnimatedImageView;

    .line 79
    sget v1, Lcom/miui/internal/R$id;->animate_finish:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->Dm:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->Dm:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->Dn:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->Dn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setAnimating(Z)V

    .line 89
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 93
    return-void

    :cond_2
    move v2, v4

    .line 87
    goto :goto_0

    :cond_3
    move v3, v4

    .line 89
    goto :goto_1

    .line 92
    :cond_4
    const v1, 0x3e99999a    # 0.3f

    goto :goto_2
.end method

.method public setAnimateDrawable(I)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->Dm:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 147
    return-void
.end method

.method public setAnimateFinish(Z)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->e(IZ)V

    .line 131
    return-void
.end method

.method public setAnimateFinishDrawable(I)V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->Dn:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 164
    return-void
.end method

.method public setAnimateVisible(Z)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->e(IZ)V

    .line 101
    return-void
.end method

.method public setAnimating(Z)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->e(IZ)V

    .line 116
    return-void
.end method
