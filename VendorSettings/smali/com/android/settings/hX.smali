.class public Lcom/android/vendorsettings/hX;
.super Landroid/preference/Preference;
.source "TintablePreference.java"


# instance fields
.field private AV:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 42
    iget v0, p0, Lcom/android/vendorsettings/hX;->AV:I

    if-eqz v0, :cond_0

    .line 43
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/vendorsettings/hX;->AV:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/android/vendorsettings/hX;->AV:I

    .line 35
    invoke-virtual {p0}, Lcom/android/vendorsettings/hX;->notifyChanged()V

    .line 36
    return-void
.end method
