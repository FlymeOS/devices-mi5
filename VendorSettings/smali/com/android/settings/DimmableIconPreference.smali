.class public Lcom/android/vendorsettings/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/vendorsettings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method private u(Z)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v0, 0x66

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    return-void

    .line 51
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/android/vendorsettings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/DimmableIconPreference;->u(Z)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 60
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DimmableIconPreference;->u(Z)V

    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
