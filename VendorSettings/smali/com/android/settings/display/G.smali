.class public Lcom/android/settings/display/G;
.super Lmiui/preference/RadioButtonPreference;
.source "RadioButtonPreference.java"


# instance fields
.field private Zu:Landroid/content/res/ColorStateList;

.field private Zv:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/G;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/display/G;->pD()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/G;->Zv:Landroid/content/res/ColorStateList;

    .line 43
    const v0, 0x7f0400e7

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setLayoutResource(I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/G;->setWidgetLayoutResource(I)V

    .line 45
    return-void
.end method

.method private pD()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 73
    new-array v0, v6, [I

    const v1, 0x10100a0

    aput v1, v0, v7

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/display/G;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/display/G;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 76
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 77
    new-array v4, v5, [[I

    .line 78
    new-array v5, v5, [I

    .line 79
    aput-object v0, v4, v7

    .line 80
    sget v0, Lmiui/R$attr;->textColorChecked:I

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 81
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v5, v7

    .line 82
    new-array v0, v6, [I

    aput-object v0, v4, v6

    .line 83
    sget v0, Lmiui/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 84
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v5, v6

    .line 85
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x1020001

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/G;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 52
    const/16 v1, 0xff

    .line 53
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/display/G;->Zu:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/G;->Zu:Landroid/content/res/ColorStateList;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/G;->Zu:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/display/G;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/display/G;->Zv:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move v1, v2

    .line 66
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 70
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 56
    goto :goto_0

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/android/settings/display/G;->Zv:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1
.end method
