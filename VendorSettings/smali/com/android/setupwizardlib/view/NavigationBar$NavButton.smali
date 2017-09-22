.class public Lcom/android/setupwizardlib/view/NavigationBar$NavButton;
.super Landroid/widget/Button;
.source "NavigationBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setCompoundDrawablePadding(I)V

    .line 170
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/d;->aLu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    if-eqz p1, :cond_1

    const/16 v0, 0xff

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 151
    if-eqz v5, :cond_0

    .line 152
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_1
    const/16 v0, 0x3b

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 158
    if-eqz v4, :cond_3

    .line 159
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 162
    :cond_4
    return-void
.end method
